<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageEditor.aspx.cs" Inherits="Demo.NewFeatures.ImageEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>
    <div>
    
      <telerik:RadImageEditor runat="server" ID="imgEditor" Width="800" Height="400" CanvasMode="Yes" ImageUrl="/Images/jeffHat.jpg" ToolsFile="canvasTools.xml">
      </telerik:RadImageEditor>

    </div>
    </form>
</body>
</html>
