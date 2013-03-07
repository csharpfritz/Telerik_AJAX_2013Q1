<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Demo._4_PivotGrid._default" %>
<%@ Register Assembly="Telerik.OpenAccess.Web" Namespace="Telerik.OpenAccess" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadScriptManager runat="server" ID="scriptMgr">
      </telerik:RadScriptManager>

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
    
      <telerik:RadPivotGrid runat="server" ID="grid" AllowPaging="true" 
        skin="Telerik"
        EnableConfigurationPanel="true" AllowFiltering="true" DataSourceID="sales">
        <%--<OlapSettings ProviderType="Xmla">
          <XmlaConnectionSettings Cube="Adventure Works"
            DataBase="AdventureWorksDW2012Multidimensional-EE"
            ServerAddress="http://demos.telerik.com/olap/msmdpump.dll">
          </XmlaConnectionSettings>
        </OlapSettings>--%>
        <ConfigurationPanelSettings EnableDragDrop="true" Position="Left" />
      </telerik:RadPivotGrid>

    </div>

      <telerik:OpenAccessDataSource runat="server" ID="sales" ObjectContextProvider="Demo.AdventureWorks, Demo" TypeName="Demo.SalesDetail" EnableDelete="False" EnableInsert="False" EnableUpdate="False"></telerik:OpenAccessDataSource>

    </form>
</body>
</html>
