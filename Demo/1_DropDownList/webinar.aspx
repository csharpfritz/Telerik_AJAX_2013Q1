<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webinar.aspx.cs" Inherits="Demo._1_DropDownList.webinar" %>

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
    
      Choose a game:  <telerik:RadDropDownList runat="server" ID="ddList" DataSourceID="games" Width="300px" DropDownWidth="300px" DataTextField="Name" DataValueField="ID">
        <ItemTemplate>

          <img style="float: left" src="/content/games/<%#: Eval("name").ToString().Replace(' ','_') %>.jpg" width="100" height="100" />

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
