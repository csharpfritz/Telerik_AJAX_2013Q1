<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test1.aspx.cs" Inherits="Demo._4_PivotGrid.test1" %>

<%@ Register Assembly="Telerik.OpenAccess.Web" Namespace="Telerik.OpenAccess" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>
      <telerik:RadAjaxManager runat="server" ID="ajaxMgr">
        <AjaxSettings>
          <telerik:AjaxSetting AjaxControlID="grid">
            <UpdatedControls>
              <telerik:AjaxUpdatedControl ControlID="grid" />
            </UpdatedControls>
          </telerik:AjaxSetting>
        </AjaxSettings>
      </telerik:RadAjaxManager>

    <div>
    
      <telerik:RadAjaxPanel runat="server" ID="panel">
      <telerik:RadPivotGrid runat="server" ID="grid" AllowPaging="true" EnableConfigurationPanel="true" DataSourceID="sales">
        <ConfigurationPanelSettings EnableDragDrop="true" Position="Left" />
      </telerik:RadPivotGrid>
        </telerik:RadAjaxPanel>
    </div>

      <telerik:OpenAccessDataSource ID="sales" runat="server" ObjectContextProvider="Demo.AdventureWorks, Demo" TypeName="Demo.SalesDetail" Where="this.SalesOrderDetailID <= @SalesOrderDetailID">
        <WhereParameters>
          <asp:Parameter DefaultValue="1000" Name="SalesOrderDetailID"></asp:Parameter>
        </WhereParameters>
      </telerik:OpenAccessDataSource>
    </form>
</body>
</html>
