<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practice.aspx.cs" Inherits="Demo._1_DropDownList.practice" %>

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
    
      <telerik:RadDropDownList runat="server" ID="ddList" Skin="Silk" Width="300px" DropDownWidth="300px" DataSourceID="games" DataTextField="Name" DataValueField="ID">
        <ItemTemplate>
          <img style="float: left" width="100" height="100" src="/content/games/<%#: Eval("Name").ToString().Replace(' ','_') %>.jpg" />
          <p>
            <span><b>Name:</b> <%#: Eval("Name") %></span><br />
            <span><b>Price:</b> <%#: Convert.ToDecimal(Eval("PriceUSD")).ToString("$0.00") %></span>
          </p>
            <hr />
        </ItemTemplate>
      </telerik:RadDropDownList>


    </div>

      <telerik:OpenAccessDataSource ID="games" runat="server" ObjectContextProvider="Demo.gamesModel, Demo" TypeName="Demo.Product" EnableDelete="False" EnableInsert="False" EnableUpdate="False"></telerik:OpenAccessDataSource>

    </form>
</body>
</html>
