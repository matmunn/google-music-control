set theFolder to POSIX path of ((the path to me as text) & "::")
set Controller to run script ("script s" & return & (read alias (POSIX file (theFolder & "/lib/controller.scpt")) as «class utf8») & return & "end script " & return & "return s")

set playState to Controller's getPlayState()

try
  set output to quoted form of playState
on error
  set output to ""
end try

do shell script "echo " & output
