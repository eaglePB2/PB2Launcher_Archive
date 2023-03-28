
	Set fs = CreateObject("Scripting.FileSystemObject")

	mylogin = InputBox("Enter your account login","Enter value")
	
	If IsEmpty(mylogin) Then
	
	Else
		
		mypassword = InputBox("Enter password for standalone multiplayer access (you can get it at ''Edit Profile'' page of official website)","Enter value")

		If IsEmpty(mypassword) Then
		
		Else
		
			Set a = fs.CreateTextFile("data\Plazma Burst 2.auth", True)
			a.WriteLine( mylogin )
			a.Write( mypassword )
			a.Close
		End If
		
	End If

	Set WshShell = CreateObject("WScript.Shell") 
	WshShell.Run chr(34) & "data\launch_game.bat" & Chr(34), 0
	Set WshShell = Nothing