<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BarCode.aspx.cs" Inherits="Demo._7_NewFeatures.BarCode" %>

<%@ Register Assembly="Telerik.OpenAccess.Web" Namespace="Telerik.OpenAccess" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadScriptManager runat="server" ID="ajaxMgr"></telerik:RadScriptManager>

    <div>
    
      <telerik:RadGrid runat="server" ID="grid" DataSourceID="products" ItemType="Demo.Product">
        <MasterTableView AutoGenerateColumns="false" CommandItemDisplay="Top">
          <CommandItemSettings ShowExportToPdfButton="true" ShowRefreshButton="true" />
          <Columns>
            <telerik:GridBoundColumn DataField="Name" HeaderText="Product"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="PriceUSD" HeaderText="Price (USD)" DataFormatString="{0:$0.00}" ItemStyle-HorizontalAlign="Right"></telerik:GridBoundColumn>
            <telerik:GridTemplateColumn DataField="ID" HeaderText="QR Code" ItemStyle-VerticalAlign="Middle">
              <ItemTemplate>


                <telerik:RadBarcode runat="server" ID="barCode" 
                  OutputType="EmbeddedPNG" Type="QRCode" Height="50px" 
                  Text='<%# DataBinder.Eval(Container.DataItem, "ID") %>'>
                  <QRCodeSettings Mode="Alphanumeric" />
                </telerik:RadBarcode>


              </ItemTemplate>
            </telerik:GridTemplateColumn>
          </Columns>
        </MasterTableView>

      </telerik:RadGrid>

      <telerik:OpenAccessDataSource ID="products" runat="server" ObjectContextProvider="Demo.gamesModel, Demo" TypeName="Demo.Product" EnableDelete="False" EnableInsert="False" EnableUpdate="False"></telerik:OpenAccessDataSource>

    </div>
    </form>
</body>
</html>
