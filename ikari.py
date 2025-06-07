import sounddevice as sd
import scipy.io.wavfile as wav
import subprocess
import tempfile
import os

MODEL_PATH = "whisper.cpp/models/ggml-tiny.en.bin"
WHISPER_CLI_PATH = "whisper.cpp/build/bin/whisper-cli"

# Mapping keywords to commands/apps
KEYWORD_DB = {
    "terminal": "kitty",
    "kitty": "kitty",
    "text": "nvim",
    "editor": "nvim",
    "cava": "cava",
    "vlc": "vlc",
    # add more here as needed
}

FILLER_WORDS = {"my", "the", "a", "an", "please"}

def record_audio(duration=5, fs=16000):
    print("Say your command now...")
    audio = sd.rec(int(duration * fs), samplerate=fs, channels=1, dtype='int16')
    sd.wait()
    return audio, fs

def save_wav(audio, fs, filename):
    wav.write(filename, fs, audio)

def transcribe_audio(filename):
    cmd = [WHISPER_CLI_PATH, "-m", MODEL_PATH, "-f", filename, "-nt", "-ovtt", "0"]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Whisper CLI error: {result.stderr.strip()}")
        return ""
    # grab the first non-empty line from output (your current method)
    for line in result.stdout.splitlines():
        if line.strip():
            return line.strip()
    return ""

def parse_command(command):
    words = command.lower().split()
    # Filter out filler words (e.g., "my", "please")
    keywords = [w for w in words if w not in FILLER_WORDS]
    return keywords

def find_app(keywords):
    for word in keywords:
        if word in KEYWORD_DB:
            return KEYWORD_DB[word]
    return None

def main():
    audio, fs = record_audio()
    with tempfile.NamedTemporaryFile(suffix=".wav", delete=False) as tf:
        save_wav(audio, fs, tf.name)
        command = transcribe_audio(tf.name)
    os.unlink(tf.name)

    if not command:
        print("Sorry, I didn't catch that.")
        return

    print(f"Recognized command: '{command}'")

    # Check if 'please' was said
    polite = "please" in command.lower()

    keywords = parse_command(command)
    app = find_app(keywords)

    if "open" in keywords and app:
        if app == "kitty":
            print("Opening kitty terminal...", end=" ")
            subprocess.Popen(["kitty"], start_new_session=True,
                             stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        elif app == "nvim":
            print("Opening neovim in kitty...", end=" ")
            subprocess.Popen(["kitty", "nvim"], start_new_session=True,
                             stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        elif app == "cava":
            subprocess.Popen(["kitty", "cava"], start_new_session=True,
                             stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        elif app == "vlc":
            subprocess.Popen(["vlc"], start_new_session=True,
                              stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        else:
            print(f"Opening {app}...", end=" ")
            subprocess.Popen([app], start_new_session=True,
                             stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        print("you're welcome." if polite else "")
    else:
        print("Command not recognized or unsupported.")

if __name__ == "__main__":
    main()

