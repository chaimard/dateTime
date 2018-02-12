<%@ Page Language="VB" AutoEventWireup="false" CodeFile="updateData1.aspx.vb" Inherits="updateData1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div >
        
    <h2>เพิ่มข้อมูล:</h2>
    <table style="width:100%" >
    <tr>
        <th class="auto-style1" style="text-align:right">รหัสสินค้า:</th>
            <td>
                <asp:Label ID="lblP_ID" runat="server" Text="PID"></asp:Label>
            </td>
    </tr>
    <tr>
        <th  class="auto-style1" style="text-align:right">ชื่อสินค้า:</th>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="292px"></asp:TextBox>
            </td>
        </tr>
    <tr>
          <th  class="auto-style1" style="text-align:right">รายละเอียด:</th>
            <td>
                <asp:TextBox ID="txtDetail" runat="server" Width="249px"></asp:TextBox>
            </td>
    </tr>
    <tr>
          <th class="auto-style1">&nbsp;</th>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" />
                &nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
            </td>
    </tr>
    </table>
    
        
    </div>
    
    <br />
    <br />
        
    <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="p_id" 
                DataSourceID="SqlDataSource1">
                
                <Columns>
                     <asp:ButtonField ButtonType="Button" CommandName="IncreasePrice"
            Text="Edit" />
                    <asp:BoundField DataField="p_id" HeaderText="รหัสสินค้า" InsertVisible="False" ReadOnly="True" SortExpression="p_id" />
                    <asp:BoundField DataField="p_name" HeaderText="ชื่อ" SortExpression="p_name" />
                    <asp:BoundField DataField="p_detail" HeaderText="รายละเอียด" SortExpression="p_detail" />
                    
                </Columns>
                
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDbConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
