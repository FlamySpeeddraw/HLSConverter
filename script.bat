@echo off

if not exist "output" mkdir output

for /D %%a in (*) do (
    for %%i in (%%~na\*.mp4) do (
        if not exist "output\%%~na\%%~ni" mkdir output\%%~na\%%~ni
        ffmpeg -i %%i -codec copy -start_number 0 -hls_time 7 -hls_list_size 0 -hls_segment_filename "output\%%~na\%%~ni\segment_%%03d.ts" output\%%~na\%%~ni\playlist_%%~ni.m3u8
    )

    > output\%%~na\master.m3u8 echo #EXTM3U

    (
        echo #EXT-X-STREAM-INF:BANDWIDTH=500000,RESOLUTION=854x480
        echo 480P/playlist_480P.m3u8
        echo #EXT-X-STREAM-INF:BANDWIDTH=1000000,RESOLUTION=1280x720
        echo 720P/playlist_720P.m3u8
        echo #EXT-X-STREAM-INF:BANDWIDTH=2000000,RESOLUTION=1920x1080
        echo 1080P/playlist_1080P.m3u8
    ) >> output\%%~na\master.m3u8
)

pause > nul