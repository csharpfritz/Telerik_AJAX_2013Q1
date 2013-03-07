<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test3.aspx.cs" Inherits="Demo._1_DropDownList.test3" %>

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
      Choose a game:
      <telerik:RadDropDownList runat="server" ID="ddList" DataSourceID="games" Width="200px" DropDownWidth="200px" DropDownHeight="300px" DataTextField="Name" DataValueField="ID">
        <ItemTemplate>
          <img src="/content/games/<%#: Eval("Name").ToString().Replace(' ','_') %>.jpg" style="float: left;" width="100" height="100" />

          <p>
            <span><b>Name:</b> <%#: Eval("Name") %></span>
          </p>
          <hr />
        </ItemTemplate>
      </telerik:RadDropDownList>

    </div>

    <telerik:OpenAccessDataSource ID="games" runat="server" ObjectContextProvider="Demo.gamesModel, Demo" TypeName="Demo.Product"></telerik:OpenAccessDataSource>

  </form>
</body>
</html>
