Imports System.Data.SqlClient
Public Class Transfer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim s As String
        s = Request.QueryString("Account No")
        Dim t As String
        t = Request.QueryString("Name")
        Dim d As String
        d = Request.QueryString("IFSC")

        Label1.Text = s
        Label2.Text = t
        Label3.Text = d
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

        Else
            MsgBox("The Account is not Valid")

        End If
        con.Close()

        Dim objcon As SqlConnection = Nothing
        Dim objcmd As SqlCommand = Nothing
        con.Open()
        objcon = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dhanu\source\repos\Basic Banking System\Basic Banking System\App_Data\Database1.mdf;Integrated Security=True")
        objcon.Open()
        'Dim stmt As String = "select reportid from report where reportid ='" & DropDownList1.Text & "' Name ='" & TextBox1.Text & "' AND Phoneno ='" & TextBox2.Text & "' AND Email ='" & TextBox3.Text & "'AND Problem ='" & TextBox4.Text & "' AND Address ='" & TextBox5.Text & "' "
        Try
            Dim str = "Select AccNo,Balance from People where AccNo='" + TextBox1.Text + "' "
            Dim com = New SqlCommand(str, con)
            Dim dr = com.ExecuteReader()

            If dr.Read() Then
                Label5.Text = dr.GetValue(1).ToString()
                dr.Close()
            Else
                Label5.Text = ""
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
        TextBox7.Text = TextBox6.Text
        TextBox8.Text = Label5.Text
        Dim one, two, three, four, five, six, seven As Double

        one = Val(Label4.Text)
        two = Val(Label5.Text)
        three = Val(TextBox6.Text)

        six = Val(TextBox7.Text)
        five = Val(Label6.Text)
        seven = Val(TextBox8.Text)
        four = Val(TextBox7.Text) + Val(TextBox8.Text)
        Label6.Text = Val(Label4.Text) - Val(TextBox6.Text)
        TextBox4.Text = four
    End Sub

    Private Sub Label1_Load(sender As Object, e As EventArgs) Handles Label1.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dhanu\source\repos\Basic Banking System\Basic Banking System\App_Data\Database1.mdf;Integrated Security=True"
        Dim objcon As SqlConnection = Nothing
        Dim objcmd As SqlCommand = Nothing
        con.Open()
        objcon = New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dhanu\source\repos\Basic Banking System\Basic Banking System\App_Data\Database1.mdf;Integrated Security=True")
        objcon.Open()
        'Dim stmt As String = "select reportid from report where reportid ='" & DropDownList1.Text & "' Name ='" & TextBox1.Text & "' AND Phoneno ='" & TextBox2.Text & "' AND Email ='" & TextBox3.Text & "'AND Problem ='" & TextBox4.Text & "' AND Address ='" & TextBox5.Text & "' "
        Try
            Dim str = "Select AccNo,Balance from People where AccNo='" + Label1.Text + "' "
            Dim com = New SqlCommand(str, con)
            Dim dr = com.ExecuteReader()

            If dr.Read() Then
                Label4.Text = dr.GetValue(1).ToString()
                dr.Close()
            Else
                Label4.Text = ""
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Private Sub Button2_click(sender As Object, e As EventArgs) Handles Button2.Click

        'If TextBox1.Text = "" Or TextBox4.Text = "" Then
        '    Dim con As New SqlConnection
        '    Dim cmd As New SqlCommand
        '    con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dhanu\source\repos\Basic Banking System\Basic Banking System\App_Data\Database1.mdf;Integrated Security=True"
        '    con.Open()
        '    cmd = New SqlCommand("update People set Balance=@Balance WHERE AccNo=@AccNo", con)
        '    cmd.Parameters.AddWithValue("@AccNo", TextBox1.Text)
        '    cmd.Parameters.AddWithValue("@Balance", TextBox4.Text)
        '    cmd.ExecuteNonQuery()

        '    MsgBox("Amount Transfer Done")

        '    con.Close()
        'Else
        '    MsgBox("Amount Transfer Failed")
        'End If

        Dim connection As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\dhanu\source\repos\Basic Banking System\Basic Banking System\App_Data\Database1.mdf;Integrated Security=True")
        If TextBox1.Text = "" And TextBox4.Text = "" And Label1.Text = "" And Label6.Text = "" Then
            MsgBox("Empty Id")

        Else

            Dim command As New SqlCommand("UPDATE People SET Balance = @Balance WHERE AccNo = @AccNo", connection)
            Dim command2 As New SqlCommand("UPDATE People SET Balance = @Balance WHERE AccNo = @AccNo", connection)
            command.Parameters.Add("@AccNo", SqlDbType.VarChar).Value = TextBox1.Text
            command.Parameters.Add("@Balance", SqlDbType.VarChar).Value = TextBox4.Text
            command2.Parameters.Add("@AccNo", SqlDbType.VarChar).Value = Label1.Text
            command2.Parameters.Add("@Balance", SqlDbType.VarChar).Value = Label6.Text
            connection.Open()

            If command.ExecuteNonQuery() = 1 And command2.ExecuteNonQuery() = 1 Then
                MsgBox("Transaction Done")
                Response.Redirect("Home Page.aspx")

            Else
                MsgBox("Transaction Failed")
            End If

                connection.Close()
            End If

    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub
End Class