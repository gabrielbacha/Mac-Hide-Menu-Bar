#!/usr/bin/env osascript

if application "System Preferences" is running then quit application "System Preferences"
repeat until application "System Preferences" is not running
	delay 0.1
end repeat
tell application "System Preferences" to reveal pane id "com.apple.preference.dock"

tell application "System Events" to tell process "System Preferences" to tell window "Dock & Menu Bar"
	repeat while not (exists of checkbox "Automatically hide and show the menu bar on desktop")
		delay 0.1
	end repeat
	click checkbox "Automatically hide and show the menu bar on desktop"
end tell

quit application "System Preferences"