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
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxt%LAYOUT").setFocus
session.findById("wnd[0]/usr/ctxt%LAYOUT").caretPosition = 0
session.findById("wnd[0]").sendVKey 4
session.findById("wnd[1]/usr/ssubD0500_SUBSCREEN:SAPLSLVC_DIALOG:0501/cntlG51_CONTAINER/shellcont/shell").currentCellRow = 4
session.findById("wnd[1]/usr/ssubD0500_SUBSCREEN:SAPLSLVC_DIALOG:0501/cntlG51_CONTAINER/shellcont/shell").selectedRows = "4"
session.findById("wnd[1]/usr/ssubD0500_SUBSCREEN:SAPLSLVC_DIALOG:0501/cntlG51_CONTAINER/shellcont/shell").clickCurrentCell

session.findById("wnd[0]/usr/ctxtSP$00003-LOW").text = "01.01.2024"
session.findById("wnd[0]/usr/ctxtSP$00003-HIGH").text = "31.01.2024"
session.findById("wnd[0]/usr/ctxt%LAYOUT").text = "/pbimes"

session.findById("wnd[0]/usr/ctxtSP$00003-HIGH").setFocus
session.findById("wnd[0]/usr/ctxtSP$00003-HIGH").caretPosition = 10
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 8
session.findById("wnd[0]/usr/cntlCONTAINER/shellcont/shell").pressToolbarContextButton "&MB_EXPORT"
session.findById("wnd[0]/usr/cntlCONTAINER/shellcont/shell").selectContextMenuItem "&XXL"
session.findById("wnd[1]/usr/ctxtDY_PATH").text = "C:\Users\darreceygor\Desktop\pedidos\"
session.findById("wnd[1]/usr/ctxtDY_FILENAME").text = "IP_mensual.XLSX"
session.findById("wnd[1]/usr/ctxtDY_FILENAME").caretPosition = 6
session.findById("wnd[1]/tbar[0]/btn[11]").press
