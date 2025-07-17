# HLS Video Converter

This Windows Batch script uses `ffmpeg` to automatically convert `.mp4` videos from different folders into HLS playlists (`.m3u8`), ready for adaptive streaming with a `master.m3u8` file.

---

## 📁 Expected Structure

The script expects the following folder layout:

root/ <br />
├── video1/ <br />
│ ├── 480P.mp4 <br />
│ ├── 720P.mp4 <br /> 
│ └── 1080P.mp4 <br />
├── video2/ <br />
│ └── 720P.mp4 <br />
├── video3/ <br />
│ ├── 360P.mp4 <br />
│ ├── 480P.mp4 <br />
│ ├── 720P.mp4 <br />
│ └── 1080P.mp4 <br />
├── script.bat <br />

---

## 📦 Output Example

output/ <br />
├── video1/ <br />
│ ├── 480P/ <br />
│ │ ├── segment_000.ts <br />
│ │ └── playlist_480P.m3u8 <br />
│ ├── 720P/ <br />
│ │ ├── segment_000.ts <br />
│ │ └── playlist_720P.m3u8 <br />
│ ├── 1080P/ <br />
│ │ ├── segment_000.ts <br />
│ │ └── playlist_1080P.m3u8 <br />
│ └── master.m3u8 <br />

---

## ✅ Requirements

- [FFmpeg](https://ffmpeg.org/download.html) must be installed and available in your system's `PATH`.
- Windows environment using Command Prompt (CMD) or double-click execution.

---

## ▶️ Run the Script

Place the `.bat` script in the directory containing the videos subfolders and run it.

## 📄 License

This project is free to use and modify.
