<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LightRendering.aspx.cs" Inherits="Demo._7_NewFeatures.LightRendering" %>

<%@ Register Assembly="Telerik.OpenAccess.Web" Namespace="Telerik.OpenAccess" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>

    <div>
    
      Select a branch:  
      <telerik:RadComboBox Skin="Black" ID="combo" runat="server" DataSourceID="branches" DataTextField="Name" DataValueField="id"
         RenderMode="Lightweight">

        <ItemTemplate><%#: DataBinder.Eval(Container.DataItem, "Name") %> (<%#: DataBinder.Eval(Container.DataItem, "ID") %>)</ItemTemplate>
                         </telerik:RadComboBox>

      <telerik:OpenAccessDataSource ID="branches" runat="server" EnableDelete="False" EnableInsert="False" EnableUpdate="False" ObjectContextProvider="Demo.gamesModel, Demo" TypeName="Demo.Branch"></telerik:OpenAccessDataSource>

    </div>
    </form>
</body>
</html>
