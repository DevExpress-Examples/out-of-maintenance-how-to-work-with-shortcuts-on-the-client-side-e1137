<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <script type="text/javascript">
                var ctrlEnterShortcutCode = ASPxClientUtils.StringToShortcutCode("CTRL+ENTER");
                function OnMemoKeyPress(s, e) {
                    var eventShorcutCode = ASPxClientUtils.GetShortcutCodeByEvent(e.htmlEvent);

                    if(eventShorcutCode == ctrlEnterShortcutCode)
                        MemoTextToUpperCase(s);
                }

                function MemoTextToUpperCase(memo) {
                    var memoText = memo.GetText();
                    memo.SetText(memoText.toUpperCase());
                }
            </script>

            Input text containing lower-case symbols into the memo editor and press the Ctrl+Enter
            key combination.<br /> As a result, all lower-case symbols will be switched to upper
            case.<br /><br />
            <dxe:ASPxMemo ID="mText" runat="server" Height="300px" Width="400px">
                <ClientSideEvents KeyDown="OnMemoKeyPress" />
            </dxe:ASPxMemo>
        </div>
    </form>
</body>
</html>