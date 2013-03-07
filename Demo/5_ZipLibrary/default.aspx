<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Demo._5_ZipLibrary._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>

    <div>
    
      <telerik:RadListView runat="server" ID="pics" ItemType="Demo.Product" SelectMethod="GetGames">
        <ItemTemplate>
          <img src="/content/games/<%#: Item.Name.Replace(" ","_") %>.jpg" width="100" height="100" alt="<%#: Item.Name %>" />
          <%#: Item.Name %>
          <br />
        </ItemTemplate>
      </telerik:RadListView>

      <asp:Button runat="server" ID="download" Text="Download Images" OnClick="download_Click" />

    </div>
    </form>
</body>
</html>
