<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Demo._3_SearchBox._default" %>
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
    
      Choose a product:  
      
      <telerik:RadSearchBox runat="server" ID="searchBox" Width="200px"
        DataSourceID="games" DataModelID="ID" DataTextField="Name" DataValueField="ID"
        OnClientSearch="onSearch" Skin="Telerik">
        <DropDownSettings Width="200px" Height="200px">
          <ItemTemplate><b>Name:</b> <%#: DataBinder.Eval(Container.DataItem, "Name") %>
            <b>Price:</b> <%#: Convert.ToDecimal(DataBinder.Eval(Container.DataItem,"PriceUSD")).ToString("$0.00") %></ItemTemplate>
        </DropDownSettings>
      </telerik:RadSearchBox>

      <div id="searchResult" style="width: 300px; height: 300px; border: 1px solid blue;"></div>

    </div>

      <telerik:OpenAccessDataSource runat="server" ID="games" ObjectContextProvider="Demo.gamesModel, Demo" OrderBy="this.Name" TypeName="Demo.Product" EnableDelete="False" EnableInsert="False" EnableUpdate="False"></telerik:OpenAccessDataSource>

      <script type="text/javascript"><!--
      
        function onSearch(sender, args) {
          
          var box = document.getElementById("searchResult");
          box.innerHTML = "Found product " + args.get_text();

        }

//-->
      </script>

    </form>
</body>
</html>
