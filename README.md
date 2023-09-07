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

SAMPLE OUTPUT
------------
```bash
CPU       FILE                        BITRATE     TIME      AVG_FPS  AVG_SPEED  AVG_WATTS
i5-8500T  ribblehead_1080p_h264       18952 kb/s  45.059s   76.42    2.68x      11.59
i5-8500T  ribblehead_4k_h264          46881 kb/s  151.287s  23.03    .80x       13.17
i5-8500T  ribblehead_1080p_hevc_8bit  15142 kb/s  44.566s   76.74    2.71x      11.88
i5-8500T  ribblehead_4k_hevc_10bit    44617 kb/s  184.297s  19.01    .65x       13.12
```