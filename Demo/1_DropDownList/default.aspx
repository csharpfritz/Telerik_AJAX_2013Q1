<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Demo.DropDownList._default" %>

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
    Choose a game:
      <telerik:RadDropDownList runat="server" id="ddList" 
        DropDownWidth="300px" DropDownHeight="300px" Width="300px" DataSourceID="games"
        DataTextField="Name" DataValueField="ID" > 
        <ItemTemplate>
          <img style="float:left;" width="100" height="100" src="/content/games/<%#: Eval("Name").ToString().Replace(' ','_') %>.jpg" />
          <p>
          <span><b>Name:</b> <%#: Eval("Name") %></span><br />
          <span><b>Price:</b> <%#: Convert.ToDecimal(Eval("PriceUSD")).ToString("$0.00") %></span>
            </p>
          <hr />
        </ItemTemplate>
      </telerik:RadDropDownList>
    </div>
      <telerik:OpenAccessDataSource ID="games" runat="server" ObjectContextProvider="Demo.gamesModel, Demo" TypeName="Demo.Product"></telerik:OpenAccessDataSource>
    </form>
</body>
</html>
