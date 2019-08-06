#!/bin/sh

# Wipes the user folders on logout

userFolder="Student"

rm -Rf /Users/$userFolder/Applications/* 
rm -Rf /Users/$userFolder/Desktop/* 
rm -Rf /Users/$userFolder/Documents/* 
rm -Rf /Users/$userFolder/Downloads/* 
rm -Rf /Users/$userFolder/Movies/* 
rm -Rf /Users/$userFolder/Music/* 
rm -Rf /Users/$userFolder/Pictures/* 
rm -Rf /Users/$userFolder/Public/*
