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
session.findById("wnd[0]/tbar[0]/okcd").text = "sm37"
session.findById("wnd[0]").sendVKey 0

session.findById("wnd[0]/usr/txtBTCH2170-JOBNAME").text = "ZZRECUPERO(ACUMPENDIENTE)"
session.findById("wnd[0]/usr/txtBTCH2170-USERNAME").text = "vdigesu"
session.findById("wnd[0]/usr/txtBTCH2170-USERNAME").setFocus
session.findById("wnd[0]/usr/txtBTCH2170-USERNAME").caretPosition = 7
session.findById("wnd[0]").sendVKey 0

session.findById("wnd[0]").sendVKey 8
session.findById("wnd[0]/usr/chk[1,12]").selected = true
session.findById("wnd[0]").sendVKey 44

session.findById("wnd[0]/usr/chk[1,3]").selected = true
session.findById("wnd[0]/usr/lbl[14,3]").setFocus
session.findById("wnd[0]/usr/lbl[14,3]").caretPosition = 0
session.findById("wnd[0]").sendVKey 2

session.findById("wnd[0]/tbar[1]/btn[46]").press
session.findById("wnd[1]/usr/txtDIS_TO").text = "1000"
session.findById("wnd[1]/usr/txtDIS_TO").setFocus
session.findById("wnd[1]/usr/txtDIS_TO").caretPosition = 4
session.findById("wnd[1]").sendVKey 0

session.findById("wnd[2]/tbar[0]/btn[0]").press
session.findById("wnd[0]/tbar[1]/btn[48]").press
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[1]/usr/ctxtDY_PATH").text = "C:\Users\darreceygor\Desktop\pedidos\"
session.findById("wnd[1]/usr/ctxtDY_FILENAME").text = "acum.xls"
session.findById("wnd[1]/usr/ctxtDY_FILENAME").caretPosition = 8
session.findById("wnd[1]/tbar[0]/btn[11]").press
session.findById("wnd[0]/tbar[0]/btn[3]").press
session.findById("wnd[0]/tbar[0]/btn[3]").press
session.findById("wnd[0]/tbar[0]/btn[3]").press
session.findById("wnd[0]/tbar[0]/btn[3]").press
