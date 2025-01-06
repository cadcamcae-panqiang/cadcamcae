<%
Response.Charset = "UTF-8"
Response.CodePage = 65001
If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
    Dim name, email, phone, mailbox, message
    name = Request.Form("name")
    email = Request.Form("email")
    phone = Request.Form("phone")
    mailbox = Request.Form("mailbox")
    message = Request.Form("message")

    Dim fs, file
    Set fs = Server.CreateObject("Scripting.FileSystemObject")
    Set file = fs.OpenTextFile(Server.MapPath("contact_submissions.txt"), 8, True)

    file.WriteLine "-----------------------------------------"
    file.WriteLine "Contact Form Submission"
    file.WriteLine "-----------------------------------------"
    file.WriteLine "Name    : " & name
    file.WriteLine "Email   : " & email
    file.WriteLine "Phone   : " & phone
    file.WriteLine "Mailbox : " & mailbox
    file.WriteLine "Message : " & vbCrLf & message
    file.WriteLine "-----------------------------------------"
    file.WriteLine vbCrLf

    file.Close
    Set file = Nothing
    Set fs = Nothing

    Response.Write("Thank you for contacting us. Your message has been received!")
Else
    Response.Write("Invalid request method.")
End If
%>
