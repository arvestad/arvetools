-- Define the application name and desired window size
set targetAppName to "python" -- Change this to the name of the desired application
set newWidth to 1920
set newHeight to 1080

tell application "System Events"
    -- Check if the application is running
    if (name of every application process) contains targetAppName then
        tell application targetAppName
            activate
        end tell
        -- Find the application process and resize its first window
        tell application process targetAppName
            set position of front window to {100, 100} -- Top-left corner position (x, y)
            set size of front window to {newWidth, newHeight} -- New width and height
        end tell
    else
        display dialog "The application \"" & targetAppName & "\" is not running." buttons {"OK"} default button "OK"
    end if
end tell

(*
tell application "Spyder (Python 3.10)"
     set bounds of front window to  {0, 0, 1920, 1080}
end tell
*)