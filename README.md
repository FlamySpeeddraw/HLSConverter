# HLSConverter
# HLS Video Converter

This Windows Batch script uses `ffmpeg` to automatically convert `.mp4` videos from different folders into HLS playlists (`.m3u8`), ready for adaptive streaming with a `master.m3u8` file.

---

## 📁 Expected Structure

The script expects the following folder layout:

root/
├── video1/
│ ├── 480P.mp4
│ ├── 720P.mp4
│ └── 1080P.mp4
├── video2/
│ └── 720P.mp4
├── video3/
│ ├── 360P.mp4
│ ├── 480P.mp4
│ ├── 720P.mp4
│ └── 1080P.mp4
├── script.bat

---

## 📦 Output Example

output/
├── video1/
│ ├── 480P/
│ │ ├── segment_000.ts
│ │ └── playlist_480P.m3u8
│ ├── 720P/
│ │ ├── segment_000.ts
│ │ └── playlist_720P.m3u8
│ ├── 1080P/
│ │ ├── segment_000.ts
│ │ └── playlist_1080P.m3u8
│ └── master.m3u8

---

## ✅ Requirements

- [FFmpeg](https://ffmpeg.org/download.html) must be installed and available in your system's `PATH`.
- Windows environment using Command Prompt (CMD) or double-click execution.

---

## ▶️ Run the Script

Place the `.bat` script in the directory containing the videos subfolders and run it.
