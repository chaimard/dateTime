
Partial Class updateData1
    Inherits System.Web.UI.Page

    Private Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName.CompareTo("IncreasePrice") = 0 Then

            Dim productID As Integer = Convert.ToInt32(
                GridView1.DataKeys(Convert.ToInt32(e.CommandArgument)).Value)

            'MsgBox("=>" & productID.ToString)
            Response.Redirect("updateData2.aspx?pid=" & productID.ToString)
        End If
    End Sub


    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Dim sMsg As String = "ข้อความ"

        ScriptManager.RegisterStartupScript(Page, Page.GetType, Guid.NewGuid().ToString(), "alert('" & sMsg & "')", True)
    End Sub
End Class
