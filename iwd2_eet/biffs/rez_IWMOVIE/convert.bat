@ECHO OFF

ffmpeg -i <������� ����>  -vcodec libvpx -acodec libvorbis -ab 160000 -ac 2 -f webm -g 30 -crf 5 -b:v 1M -y <�������� ����>.webm

PAUSE