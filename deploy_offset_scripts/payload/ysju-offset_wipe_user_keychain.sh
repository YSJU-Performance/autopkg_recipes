#!/bin/sh

# Wipes the user keychain on logout

userFolder="Student"

rm -Rf /Users/$userFolder/Library/Keychains/*
