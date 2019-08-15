#!/bin/sh

# Deletes the Logic Pro X preferences file so that the configuration profile can rebuild it on next login.

userFolder="student"

rm -f /Users/$userFolder/Library/Preferences/com.apple.logic10.plist
