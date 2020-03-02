tell application "F5Access"
	activate
end tell
repeat until application "F5Access" is running
	delay 1
end repeat
tell application "System Events"
	repeat until (window 1 of process "F5Access" exists)
		delay 1
	end repeat
    tell process "Cisco AnyConnect Secure Mobility Client"
		keystroke "a" using command down
		keystroke ("password" as string)
	end tell
end tell
