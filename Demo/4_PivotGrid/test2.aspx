<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Demo._4_PivotGrid.test2" %>

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
    
      <telerik:RadPivotGrid runat="server" ID="grid" AllowPaging="true" DataSourceID="sales" AllowFiltering="true" EnableConfigurationPanel="true">
        <ConfigurationPanelSettings Position="Left" EnableDragDrop="true" />
      </telerik:RadPivotGrid>

    </div>

      <telerik:OpenAccessDataSource ID="sales" runat="server" ObjectContextProvider="Demo.AdventureWorks, Demo" TypeName="Demo.SalesDetail" Where="this.SalesOrderDetailID <= @SalesOrderDetailID">
        <WhereParameters>
          <asp:Parameter DefaultValue="1000" Name="SalesOrderDetailID"></asp:Parameter>
        </WhereParameters>
      </telerik:OpenAccessDataSource>
    </form>
</body>
</html>
