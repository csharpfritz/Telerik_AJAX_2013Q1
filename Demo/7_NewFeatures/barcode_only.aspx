<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="barcode_only.aspx.cs" Inherits="Demo._7_NewFeatures.barcode_only" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>

    <div>
    
      <telerik:RadBarcode runat="server" ID="barcode" Text="test" QRCodeSettings-Mode="Alphanumeric" OutputType="EmbeddedPNG">
      </telerik:RadBarcode>

    </div>
    </form>
</body>
</html>
