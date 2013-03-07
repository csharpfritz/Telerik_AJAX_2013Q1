<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Demo._2_DropDownTree._default" %>

<%@ Register Assembly="Telerik.OpenAccess.Web" Namespace="Telerik.OpenAccess" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <telerik:RadScriptManager ID="scriptMgr" runat="server"></telerik:RadScriptManager>
    <div>
    
      Choose one or more branches:

      <asp:DropDownList ID="legacyBranches" runat="server"></asp:DropDownList>

      <br />

      <telerik:RadDropDownTree runat="server" ID="ddTree" Width="200px" DropDownSettings-Width="200px" Skin="BlackMetroTouch" CheckBoxes="SingleCheck" DefaultMessage="- Choose a branch -"></telerik:RadDropDownTree>
      
    </div>
    </form>
</body>
</html>
