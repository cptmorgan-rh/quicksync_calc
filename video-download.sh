#!/bin/bash

videos=("ribblehead_1080p_h264.mp4" "ribblehead_4k_h264.mp4" "ribblehead_1080p_hevc_8bit.mp4" "ribblehead_4k_hevc_10bit.mp4")

for video in ${videos[@]}; do
  if [ ! -f "$video" ]; then 
    wget https://ssh.us-east-1.linodeobjects.com/$video
  else
    echo "$video already exists."
  fi
done

#downloads videos
#wget https://ssh.us-east-1.linodeobjects.com/ribblehead_1080p_h264.mp4
#wget https://ssh.us-east-1.linodeobjects.com/ribblehead_4k_h264.mp4
#wget https://ssh.us-east-1.linodeobjects.com/ribblehead_1080p_hevc_8bit.mp4
#wget https://ssh.us-east-1.linodeobjects.com/ribblehead_4k_hevc_10bit.mp4
