@Echo off
@title Email login
color 07

::The page with your mail box authorization
start https://accounts.google.com/ServiceLogin
ping -n 20 127.0.0.1 > nul

::Put your login here
msg * Enter Login
<nul set /p x="w1nner1715"| Clip
ping -n 20 127.0.0.1 > nul

::Put your password here
msg * Enter Password
<nul set /p x="120796nastia"| Clip
ping -n 20 127.0.0.1 > nul

msg * The clipboard is cleared
<nul set /p x=""| Clip

exit