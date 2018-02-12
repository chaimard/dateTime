
Partial Class ShowDateTime
    Inherits System.Web.UI.Page

    Private Sub ShowDateTime_Load(sender As Object, e As EventArgs) Handles Me.Load
        'DateString.Text = DateTime.Now.ToString("dd/MM/yyyy")
        DateString.Text = DateTime.Now.ToString("dd/MM/yyyy H:mm:ss")
    End Sub
End Class
