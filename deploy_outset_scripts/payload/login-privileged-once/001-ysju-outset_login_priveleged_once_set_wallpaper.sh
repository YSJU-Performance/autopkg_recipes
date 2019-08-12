#!/bin/bash

screen=$(system_profiler SPDisplaysDataType | grep Resolution)
screenResolution=${screen:22:10}
echo $screenResolution

case "$screenResolution" in
        "3440 x 1440" )
                echo "UltraWideScreenMasterRace identified, setting wallpaper..."
                # Desktop wallpaper
                osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Wallpaper_3440x1440.jpg"'
                # Login screen background
                mv "/Library/Desktop Pictures/Mojave.heic" "/Library/Desktop Pictures/Mojave.heic.old"
                cp "/Library/Desktop Pictures/Wallpaper_3440x1440.jpg" "/Library/Desktop Pictures/Mojave.heic"
                ;;
        "2880 x 1800" )
                echo "MacBook 15 inch identified, setting wallpaper..."
                # Desktop wallpaper
                osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Wallpaper_2880x1800.jpg"'
                # Login screen background
                mv "/Library/Desktop Pictures/Mojave.heic" "/Library/Desktop Pictures/Mojave.heic.old"
                cp "/Library/Desktop Pictures/Wallpaper_2880x1800.jpg" "/Library/Desktop Pictures/Mojave.heic"
                ;;
        "2560 x 1440" )
                echo "iMac 27 inch identified, setting wallpaper..."
                # Desktop wallpaper
                osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Wallpaper_2560x1440.jpg"'
                # Login screen background
                mv "/Library/Desktop Pictures/Mojave.heic" "/Library/Desktop Pictures/Mojave.heic.old"
                cp "/Library/Desktop Pictures/Wallpaper_2560x1440.jpg" "/Library/Desktop Pictures/Mojave.heic"
                ;;
        "1920 x 1080" )
                echo "iMac 21 inch identified, setting wallpaper..."
                # Desktop wallpaper
                osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Wallpaper_1920x1080.jpg"'
                # Login screen background
                mv "/Library/Desktop Pictures/Mojave.heic" "/Library/Desktop Pictures/Mojave.heic.old"
                cp "/Library/Desktop Pictures/Wallpaper_1920x1080.jpg" "/Library/Desktop Pictures/Mojave.heic"
                ;;
        * )
                echo "Unknown screen resolution, aborting..."
                ;;
esac

exit 0
