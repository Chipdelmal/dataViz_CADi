
# [FFmpeg](https://www.ffmpeg.org/)

FFmpeg is an extremely versatile command line utility to process audio and video. It is a compendium of libraries and GNU programs written in assembly and C to streamline the processing of a comprehensive amount of media formats. Despite it being not so user-friendly, it remains as the one stop go-to toolkit for tranforming across video/image kinds. For more information about the project follow this [link](https://en.wikipedia.org/wiki/FFmpeg).

<hr>

## Example Scripts

* Exporting time-lapse videos in 8k

```bash
ffmpeg -start_number 20 -r 15 -f image2 -s 7680x4320 -i 0%03d.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -vcodec libx264 -preset veryslow -crf 15 -pix_fmt yuv420p ffmpegSample8K.mp4
```

* Exporting time-lapse videos in 4k

```bash
ffmpeg -start_number 20 -r 250 -f image2 -s 3840x2160 -i 0%06d.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -vcodec libx264 -preset veryslow -crf 15 -pix_fmt yuv420p ffmpegSample4K.mp4
```

* Reduce video file size

```bash
ffmpeg -i ffmpegSample8K.mp4 -vf scale=1920:1080 -r 60 -b:v 3M ffmpegSampleReduced.mp4
```

* Add white padding (to avoid black bars in Youtube)

```bash
ffmpeg -i ffmpegSample8K.mp4 -vf "pad=width=3840:height=2160:x=150:y=350:color=white"  ffmpegSample8K_Padded.mp4
```

For a guide on how to convert a video to high-quality GIFs, follow this [post](http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html).

<br>

[<img src="../media/ffmpeg.png" height="50px">](https://en.wikipedia.org/wiki/FFmpeg)
