<%@ Page Language="VB" AutoEventWireup="false" CodeFile="updateData2.aspx.vb" Inherits="updateData2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Detail</title>
    <style type="text/css">
        .auto-style1 {
            width: 121px;
        }
    </style>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div >
        
    <h2>ปรับปรุงข้อมูล:</h2>
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
                <asp:TextBox ID="txtName" runat="server" Width="292px" class="form-control"></asp:TextBox>
            </td>
        </tr>
    <tr>
          <th  class="auto-style1"style="text-align:right">รายละเอียด:</th>
            <td>
                <asp:TextBox ID="txtDetail" runat="server" Width="249px" class="form-control"></asp:TextBox>
            </td>
    </tr>
    <tr>
          <th class="auto-style1">&nbsp;</th>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-success"/>
                &nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-secondary" />
            </td>
    </tr>
    </table>    
    </div>
    
    </form>
</body>
</html>
