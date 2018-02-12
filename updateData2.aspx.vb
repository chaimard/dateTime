'Test
'Test2 2
Imports System.Data
Imports System.Data.SqlClient
Partial Class updateData2
    Inherits System.Web.UI.Page

    Dim constring As String = System.Configuration.ConfigurationManager.ConnectionStrings("myDBConnectionstring").ConnectionString
    Dim myCon As New SqlConnection(constring)
    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        If Not IsPostBack Then
            lblP_ID.Text = Request.QueryString("pid")

            Dim str1 As String
            str1 = "select * from products where p_id='" & lblP_ID.Text.Trim & "'"

            Dim myTable As DataTable
            myTable = getData(str1)

            If myTable.Rows.Count > 0 Then
                displaydata(myTable)
            Else
                Dim sMsg As String = "ไม่พบข้อมูล"
                ScriptManager.RegisterStartupScript(Page, Page.GetType, Guid.NewGuid().ToString(), "alert('" & sMsg & "')", True)
                Response.Redirect("updateData1.aspx")
            End If
        End If

    End Sub

    Function getData(str1 As String) As DataTable
        Dim resultTable As New DataTable

        If myCon.State = ConnectionState.Closed Then
            myCon.Open()
        End If

        Dim datareader1 As SqlDataReader


        Dim Command1 As New SqlCommand(str1, myCon)


        datareader1 = Command1.ExecuteReader()

        If (datareader1.HasRows) Then
            resultTable.Load(datareader1)
        Else
            'ClientScript.RegisterStartupScript(Me.GetType(), "Info", "alert('ไม่พบข้อมูล');", True)
        End If


        Return resultTable
    End Function

    Sub displaydata(table1 As DataTable)
        txtName.Text = table1.Rows(0)("p_name").ToString
        txtDetail.Text = table1.Rows(0)("p_detail").ToString

    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Response.Redirect("updateData1.aspx")
    End Sub
    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click

        Dim strUpdate As String

        strUpdate = "Update products Set p_name=@name,p_detail=@detail where p_id=@id"

        If myCon.State = ConnectionState.Closed Then
            myCon.Open()
        End If
        Dim comUpdate As New SqlCommand
        comUpdate.CommandType = CommandType.Text
        comUpdate.CommandText = strUpdate
        comUpdate.Parameters.AddWithValue("@id", lblP_ID.Text.Trim)
        comUpdate.Parameters.AddWithValue("@name", txtName.Text.Trim)
        comUpdate.Parameters.AddWithValue("@detail", txtDetail.Text.Trim)

        comUpdate.Connection = myCon

        Dim rec1 As Integer = 0

        rec1 = comUpdate.ExecuteNonQuery

        If rec1 > 0 Then
            Dim sMsg As String = "ปรับปรุงเรียบร้อย"
            ScriptManager.RegisterStartupScript(Page, Page.GetType, Guid.NewGuid().ToString(), "alert('" & sMsg & "')", True)

        Else
            Dim sMsg As String = "พบข้อผิดพลาด ไม่สามารถปรับปรุงได้"
            ScriptManager.RegisterStartupScript(Page, Page.GetType, Guid.NewGuid().ToString(), "alert('" & sMsg & "')", True)
        End If
        Response.Redirect("updateData1.aspx")
    End Sub


End Class
