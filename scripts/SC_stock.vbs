If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").maximize
session.findById("wnd[0]/tbar[0]/okcd").text = "zrecupero"
session.findById("wnd[0]/usr/cntlIMAGE_CONTAINER/shellcont/shell/shellcont[0]/shell").doubleClickNode "F00022"
session.findById("wnd[0]/usr/ctxtS_MATKL-LOW").text = "01"
session.findById("wnd[0]/usr/ctxtS_MATKL-HIGH").text = "57"
session.findById("wnd[0]/usr/ctxtS_MATKL-HIGH").setFocus
session.findById("wnd[0]/usr/ctxtS_MATKL-HIGH").caretPosition = 2
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 8
session.findById("wnd[0]/mbar/menu[0]/menu[3]/menu[1]").select
session.findById("wnd[1]/usr/ctxtDY_FILENAME").text = "stock.XLSX"
session.findById("wnd[1]/usr/ctxtDY_FILENAME").caretPosition = 5
session.findById("wnd[1]/tbar[0]/btn[11]").press
