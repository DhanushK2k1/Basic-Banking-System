<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Transfer.aspx.vb" Inherits="Basic_Banking_System.Transfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons"
      rel="stylesheet"/>
    <style>
        body{
            background:linear-gradient(#E0EAFC, #CFDEF3);
            height:98vh;
            width:100vh;
        }

        .panel{
            position:absolute;
            height:500px;
            width:500px;
            background-color:white;
            box-shadow:2px 2px 20px #000000;
            top:150px;
            left:500px;
            border-radius:15px;
            transition: all 0.4s ease;
            z-index:1;
            animation:panel 0.2s ease-in-out;
        }

        @keyframes panel{
            from{
                transform:scale(0);
            }
            to{
                transform:scale(1);
            }
        }


        #TextBox1{
            position:relative;
            top:200px;
            left:50px;
            border:2px solid black;
            border-radius:5px;
        }

        #TextBox2{
            position:relative;
            top:200px;
            left:99px;
            border:2px solid black;
            border-radius:5px;
        }

        #TextBox3{
            position:relative;
            top:250px;
            left:50px;
            border:2px solid black;
            border-radius:5px;
        }

         #TextBox6{
            position:relative;
            top:90px;
            left:104px;
            border:2px solid black;
            border-radius:5px;
        }

          #TextBox4{
            position:relative;
            top:595px;
            left:99px;
            border:2px solid black;
            border-radius:5px;
        }

         #Button1{
            position:absolute;
            top:330px;
            left:270px;
            text-align:center;
            color:white;
            background-color:dodgerblue;
            border-radius:8px;
            height:25px;
            width:175px;
            cursor:pointer;
            border-color:transparent;
        }

         #Button2{
            position:absolute;
            top:415px;
            left:120px;
            text-align:center;
            color:white;
            background-color: #00ff00;
            border-radius:8px;
            height:35px;
            width:250px;
            cursor:pointer;
            font-weight:bold;
            border-color:transparent;
        }

         #Button2:hover{
             background-color:#00e600;
         }

         #Button3{
            position:absolute;
            top:415px;
            left:120px;
            text-align:center;
            color:white;
            background-color: #00ff00;
            border-radius:8px;
            height:35px;
            width:150px;
            cursor:pointer;
            font-weight:bold;
            border-color:transparent;
        }

         #Button3:hover{
             background-color:#00e600;
         }

         #Button4{
            position:absolute;
            top:415px;
            left:120px;
            text-align:center;
            color:white;
            background-color: #00ff00;
            border-radius:8px;
            height:35px;
            width:150px;
            cursor:pointer;
            font-weight:bold;
            border-color:transparent;
        }

         #Button4:hover{
             background-color:#00e600;
         }

         .from{
            position:relative;
            top:215px;
            left:50px;
        }

          #back{
            position:relative;
            top:150px;
            left:500px;
            color:black;
            font-size:40px;
            cursor:pointer;
            z-index:2;
        }

         #back1{
            position:absolute;
            top:0px;
            left:10px;
            color:black;
            font-size:40px;
            cursor:pointer;
        }
       
        .material-icons:hover{
            transform:scale(1.1);
        }

        #Label1{
            position:absolute;
            top:100px;
            left:50px;
        }

        #Label2{
            position:absolute;
            top:100px;
            left:285px;
        }

        #Label3{
            position:absolute;
            top:165px;
            left:50px;
        }

        #Label5{
            position:absolute;
            top:645px;
            left:48px;
            color:red;
        }

        .validation{
            position:absolute;
            top:500px;
            color:red;
            z-index:1;
            
            display:inline block;
        }

        a{
            text-decoration:none;
        }

        .confirm{
           position:absolute;
            height:250px;
            width:350px;
            background-color:white;
            box-shadow:2px 2px 20px #000000;
            top:150px;
            left:300px;
            border-radius:15px;
            transition: all 0.4s ease;
            display:none;
            z-index:2;
            animation:confirm 0.2s ease-in-out;
        }

        @keyframes confirm{
            from{
                transform:scale(0);
            }
            to{
                transform:scale(1);
            }
        }

        .overlay{
            position:absolute;
            top:0;
            bottom:0;
            height:100%;
            width:100%;
            backdrop-filter:blur(2px);
            border-radius:25px;
            display:none;
        }

         #TextBox7{
            position:relative;
            top:90px;
            left:103px;
            border:2px solid black;
            border-radius:5px;
        }

          #TextBox8{
            position:relative;
            top:90px;
            left:2px;
            border:2px solid black;
            border-radius:5px;
        }

          </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="payment" id="payment">
                 <span class="material-icons" id="back" runat="server"><a href="Home Page.aspx">reply</a></span>
                    <div class="panel">
                        <div class="position">
                            
                            <h3 class="from">To</h3>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Account No"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Name" AutoCompleteType="FirstName"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="IFSC No"></asp:TextBox>
       
                    <asp:Button ID="Button1" runat="server" OnPreRender="Page_Load" Text="Validate" />
                    <asp:Label ID="Label1" runat="server" Text="Account No"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="IFSC"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter the Amount"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Transfer" />
                    <asp:Label ID="Label4" runat="server" Text="Balance" Visible="False"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Balance" Visible="False"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Balance" Visible="False"></asp:Label>
                   <asp:TextBox ID="TextBox4" runat="server" placeholder="total" Visible="False"></asp:TextBox>
                             <asp:TextBox ID="TextBox5" runat="server" placeholder="total" Visible="False"></asp:TextBox>

                            <h3 class="from" style="position:relative;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;color:black;z-index:1;top:-120px;left:0;"><center>Transfer Amount</center></h3>
                            </div>
                        </div>
                </div> 
        </div>
        <div class="overlay" id="overlay">

        </div>
        <div class="confirm" id="confirm">
            <p><center>Are You Sure to Transfer the Amount</center></p>
            <asp:Button ID="Button3" runat="server" OnPreRender="Page_Load" Text="Confirm" />
            <asp:Button ID="Button4" runat="server" OnPreRender="Page_Load" Text="Cancel" />
        </div>

        <script>
            document.getElementById("Button2").addEventListener("click", function () {
                var box1 = document.getElementById("confirm");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
                
            });
        </script>

        <p>
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter the Amount" Visible="False"></asp:TextBox>
                    </p>
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter the Amount" Visible="False"></asp:TextBox>

    </form>
</body>
</html>
