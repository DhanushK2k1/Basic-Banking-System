Imports System.Data.SqlClient
Public Class Home_Page
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub TextBox2_Load(sender As Object, e As EventArgs) Handles TextBox2.Load

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dhanu\source\repos\Basic Banking System\Basic Banking System\App_Data\Database1.mdf;Integrated Security=True"
        con.Open()
        Dim start As String = "Select * from People where AccNo ='" & TextBox1.Text & "' AND Name = '" & TextBox2.Text & "' AND IFSC = '" & TextBox3.Text & "'"
        cmd = New SqlCommand(start, con)
        Dim reader As SqlDataReader = cmd.ExecuteReader
        If reader.Read Then
            MsgBox("The Account is Valid", MsgBoxStyle.Information, "Success")
            Response.Redirect("Transfer.aspx?Account No=" + TextBox1.Text + "&Name=" + TextBox2.Text + "&IFSC=" + TextBox3.Text)
        Else
            MsgBox("The Account is not Valid")

        End If
        con.Close()
    End Sub
End Class