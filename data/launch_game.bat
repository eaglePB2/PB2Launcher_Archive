	set MYLOGIN="ERROR1"
	set MYPASSWORD="ERROR2"
	
	
if exist "data\Plazma Burst 2.auth" (
	
	set /p MYLOGIN=<"data\Plazma Burst 2.auth"

set MYPASSWORD=
for /F "tokens=* skip=1 usebackq" %%A in ("data\Plazma Burst 2.auth") do (
  if not defined MYPASSWORD set MYPASSWORD=%%A
)

)


if exist "data\Plazma Burst 2.auth" (

	start data\flashplayer11_7r700_224_win_sa.exe "data\pb2_re34_alt.swf?l=%MYLOGIN%&p=%MYPASSWORD%"

) else (

	start data\flashplayer11_7r700_224_win_sa.exe "data\pb2_re34_alt.swf"

)
