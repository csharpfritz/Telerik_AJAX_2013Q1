<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bubble.aspx.cs" Inherits="Demo._7_NewFeatures.Bubble" %>

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
    
      <telerik:RadHtmlChart runat="server" ID="chart" DataSourceID="sales">
        <ChartTitle Text="Orders by US Territory - July 2005">
        </ChartTitle>

        <Legend>
          <Appearance Visible="False"></Appearance>
        </Legend>

        <PlotArea>
          <YAxis Name="Territory"></YAxis>
          <Series>
            <telerik:BubbleSeries Name="Orders By Territory" DataFieldSize="TotalQty" DataFieldX="SubTotal" DataFieldY="TerritoryID">
              <TooltipsAppearance DataFormatString="Total Products Ordered: {1}" />
            </telerik:BubbleSeries>
          </Series>
        </PlotArea>
      </telerik:RadHtmlChart>

    </div>

      <telerik:OpenAccessDataSource ID="sales" runat="server" ObjectContextProvider="Demo.AdventureWorks, Demo" TypeName="Demo.SalesSummary" Where="this.SalesCountry == @SalesCountry AND this.OrderDate = @OrderDate" EnableDelete="False" EnableInsert="False" EnableUpdate="False">
        <WhereParameters>
          <asp:Parameter DefaultValue="US" Name="SalesCountry"></asp:Parameter>
          <asp:Parameter DefaultValue="7/1/2005" Name="OrderDate"></asp:Parameter>
        </WhereParameters>
      </telerik:OpenAccessDataSource>

    </form>
</body>
</html>
