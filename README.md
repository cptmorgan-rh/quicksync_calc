Runs a ffmpeg benchmark to get Avergage Speed, FPS, and Watts
===========================================

Requires Docker, Intel CPU w/ QuickSync, printf, and intel-gpu-tools package

This should be run as root with no other applications/containers running that would utilize quicksync. This includes DEs.


HOW TO USE
------------

Ensure Docker is installed and running, you have an Intel CPU w/ QuickSync, you have printf installed `which printf`, you have intel-gpu-tools installed `which intel_gpu_top`, and you are running as root.

Clone this repo.

`git clone https://github.com/cptmorgan-rh/quicksync_calc.git`

`$ ./video-download.sh`

`$ ./quicksync-benchmark.sh`

Check out the results.

SAMPLE OUTPUTS
------------
```bash
CPU      TEST            FILE                        BITRATE     TIME      AVG_FPS  AVG_SPEED  AVG_WATTS
i5-9500  h264_1080p_cpu  ribblehead_1080p_h264       18952 kb/s  59.665s   58.03    2.05x      N/A
i5-9500  h264_1080p      ribblehead_1080p_h264       18952 kb/s  15.759s   232.03   7.63x      7.66
i5-9500  h264_4k         ribblehead_4k_h264          46881 kb/s  58.667s   59.21    2.09x      7.49
i5-9500  hevc_8bit       ribblehead_1080p_hevc_8bit  14947 kb/s  45.369s   76.10    2.66x      9.09
i5-9500  hevc_4k_10bit   ribblehead_4k_hevc_10bit    44617 kb/s  176.932s  19.71    .68x       10.12
```

```bash
CPU       TEST            FILE                        BITRATE     TIME      AVG_FPS  AVG_SPEED  AVG_WATTS
i5-8500T  h264_1080p_cpu  ribblehead_1080p_h264       18952 kb/s  87.080s   42.86    1.46x      N/A
i5-8500T  h264_1080p      ribblehead_1080p_h264       18952 kb/s  18.928s   182.45   6.31x      9.09
i5-8500T  h264_4k         ribblehead_4k_h264          46881 kb/s  69.238s   49.52    1.75x      9.04
i5-8500T  hevc_8bit       ribblehead_1080p_hevc_8bit  14947 kb/s  45.061s   76.42    2.67x      11.93
i5-8500T  hevc_4k_10bit   ribblehead_4k_hevc_10bit    44617 kb/s  185.816s  18.85    .65x       13.13
```