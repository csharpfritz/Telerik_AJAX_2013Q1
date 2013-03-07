﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="Demo._3_SearchBox.test3" %>

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
    
      Search for a game:  <telerik:RadSearchBox runat="server" ID="search" DataSourceID="games" Width="200px" DropDownSettings-Width="200px" DataModelID="ID" DataTextField="Name" DataValueField="ID" OnClientSearch="onSearch"></telerik:RadSearchBox>

      <div id="searchResult"></div>

    </div>

      <script>
        function onSearch(sender, args) {
          var box = document.getElementById("searchResult");
          box.innerHTML = args.get_text();
        }
      </script>

      <telerik:OpenAccessDataSource ID="games" runat="server" ObjectContextProvider="Demo.gamesModel, Demo" TypeName="Demo.Product"></telerik:OpenAccessDataSource>

    </form>
</body>
</html>
