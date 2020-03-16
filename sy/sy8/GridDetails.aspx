<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridDetails.aspx.cs" Inherits="sy8_GridDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="tdStyle">
                        <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="ldsGrid">
                            <Columns>
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:CommandField SelectText="详细资料" ShowSelectButton="true" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:DetailsView ID="dvProduct" runat="server" AutoGenerateRows="False" DataKeyNames="ProductId" DataSourceID="ldsDetails" HeaderText="详细资料" OnItemInserted="DvProduct_ItemInserted" OnItemDeleted="DvProduct_ItemDeleted">
                            <Fields>
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" />
                                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" />
                                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" />
                                <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" />
                                <asp:BoundField DataField="SuppId" HeaderText="SuppId" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Descn" HeaderText="Descn" />
                                <asp:BoundField DataField="Image" HeaderText="Image" />
                                <asp:BoundField DataField="Qty" HeaderText="Qty" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
            <asp:LinqDataSource ID="ldsGrid" runat="server" ContextTypeName="MyPetShopDataContext" TableName="Products"></asp:LinqDataSource>
            <asp:LinqDataSource ID="ldsDetails" runat="server" ContextTypeName="MyPetShopDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" TableName="Products" Where="ProductId == @ProductId">
                <WhereParameters>
                    <asp:ControlParameter ControlID="gvProduct" DefaultValue="1" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
