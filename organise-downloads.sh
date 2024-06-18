#!/bin/zsh

cd ~/Downloads
mkdir -p Images Documents Videos PDFs Archives Others .sh-scripts

# Move image files
mv *.jpg *.png *.gif Images/ 2>/dev/null

# Move document files
mv *.docx *.txt *.odt Documents/ 2>/dev/null

# Move PDF files
mv *.pdf PDFs/ 2>/dev/null

# Move video files
mv *.mp4 *.avi Videos/ 2>/dev/null

# Move archive files
mv *.zip *.rar Archives/ 2>/dev/null

# Move all other files except for .sh files to Others directory
# This uses extended globbing for excluding .sh files
setopt extended_glob
mv ^(*.sh) Others/ 2>/dev/null

#nb. make the script executable by running 
#'chmod +x ~/organise_downloads.sh'


