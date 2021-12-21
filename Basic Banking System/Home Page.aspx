<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home Page.aspx.vb" Inherits="Basic_Banking_System.Home_Page" %>

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

        .border{
            position:absolute;
            height:650px;
            width:1000px;
            border:5px solid white;
            border-radius:25px;
            left:250px;
            top:50px;
            background-color:cornflowerblue;
            box-shadow:0px 4px 15px #000000;
        }

        li{
            display:list-item;
            color:white;
            line-height:50px;
            font-weight:bold;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            position:relative;
            top:150px;
            list-style:none;
            background-color:none;
            animation:li 1s ease-in-out;
        }

         @keyframes li{
            from{
                left:-100%;
                opacity:0;
            }
            to{
                left:0;
                opacity:100%;
            }
        }

         a{
             text-decoration:none;
             color:white;
         }

        li a{
             cursor:pointer;
        }

        li a:hover{
            color:black;
        }

        li:focus{
            color:black;
        }

        .images{
            display:none;
        }

        .image{
            position:absolute;
            height:400px;
            width:600px;
            top:250px;
            left:225px;
            opacity:85%;
        }

        h2{
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color:white;
            animation:h2 1s ease-in-out;

        }

        @keyframes h2{
            from{
                left:-100%;
                opacity:0;
            }
            to{
                left:40%;
                opacity:100%;
            }
        }

        .payment{
            display:none;
        }

        .panel{
            position:absolute;
            height:250px;
            width:500px;
            background-color:white;
            box-shadow:2px 2px 20px #000000;
            top:150px;
            left:300px;
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
            top:50px;
            left:50px;
            border:2px solid black;
            border-radius:5px;
        }

        #TextBox2{
            position:relative;
            top:50px;
            left:100px;
            border:2px solid black;
            border-radius:5px;
        }

        #TextBox3{
            position:relative;
            top:100px;
            left:50px;
            border:2px solid black;
            border-radius:5px;
        }

        .from{
            position:relative;
            top:50px;
            left:50px;
        }


        .position{
            position:relative;
            top:0px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        #Button1{
            position:absolute;
            top:170px;
            left:275px;
            text-align:center;
            color:white;
            background-color:dodgerblue;
            border-radius:8px;
            height:25px;
            width:175px;
            cursor:pointer;
            border-color:transparent;
        }

        .validation{
            position:absolute;
            top:500px;
            color:red;
            z-index:1;
        }

        .about{
            position:absolute;
            height:250px;
            width:500px;
            background-color:white;
            box-shadow:2px 2px 20px #000000;
            top:150px;
            left:300px;
            border-radius:15px;
            transition: all 0.4s ease;
            display:none;
            z-index:1;
            animation:about 0.2s ease-in-out;
        }

        @keyframes about{
            from{
                transform:scale(0);
            }
            to{
                transform:scale(1);
            }
        }

         .about2{
            position:absolute;
            height:250px;
            width:500px;
            background-color:white;
            box-shadow:2px 2px 20px #000000;
            top:150px;
            left:300px;
            border-radius:15px;
            transition: all 0.4s ease;
            display:none;
            z-index:1;
            animation:about2 0.2s ease-in-out;
        }

        @keyframes about2{
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
       
        #back{
            position:absolute;
            top:0px;
            left:10px;
            color:black;
            font-size:40px;
            cursor:pointer;
            z-index:1;
        }

         #back1{
            position:absolute;
            top:0px;
            left:10px;
            color:black;
            font-size:40px;
            cursor:pointer;
        }
       
         #back2{
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="border">
            <h2 style="color:white; position:absolute;left:400px;">Basic Banking System</h2>
            <nav class="nav">
                 
                <ul>
                   
                    <li><a id="home">Home</a></li>
                    <li><a id="money">Transfer</a></li>
                    <li><a href="users.aspx">Users</a></li>
                    <li><a id="about">About</a></li>
                    <li><a id="contact">Contact</a></li>
                </ul>

                <div>
                <img src="Png.png" class="image" />
                    </div>

                <div class="payment" id="payment">
                    <div class="panel">
                        <span class="material-icons" id="back">reply</span>
                        <div class="position">
                            
                            <h3 class="from">From</h3>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Account No"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Name" AutoCompleteType="FirstName"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="IFSC No"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validation" runat="server" ErrorMessage="Account No should be Between 8 to 12" Display="Static" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validation" runat="server" ErrorMessage="Only Characters are Allowed"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validation" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" OnPreRender="Page_Load" Text="Validate" />
                            <h3 class="from" style="position:relative;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;color:black;z-index:1;top:-100px;left:0;"><center>Transfer Amount</center></h3>
                            </div>
                        </div>
                </div> 

                <div class="about" id="about1">
                    <span class="material-icons" id="back1">reply</span>
                    <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><center>ABOUT US</center></h3>
                    <p><center>Basic Banking System Refers to Sending and Receiving money. And this is managed by admin where the admin can delete a particular user.</center></p>
                </div>

                <div class="overlay" id="overlay">

                </div>

                 <div class="about2" id="about2">
                    <span class="material-icons" id="back2">reply</span>
                    <h3 style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><center>Contact Us</center></h3>
                    <p><center>Contact No: +91 8645859878<br /></center></p>
                    <p><center>Email Id: Banking@gmail.com<br /></center></p>
                </div>
            </nav>
      

        <div class="images">
        <a href="http://www.freepik.com">Designed by pikisuperstar / Freepik</a>
            </div>
        </div>
        <script>

            document.getElementById("money").addEventListener("click", function () {
                var box1 = document.getElementById("payment");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
                else {
                    box1.style.display = "block";
                    box2.style.display = "block";
                }
            });

            document.getElementById("about").addEventListener("click", function () {
                var box1 = document.getElementById("about1");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
                else {
                    box1.style.display = "block";
                    box2.style.display = "block";
                }
            });

            document.getElementById("back").addEventListener("click", function () {
                var box1 = document.getElementById("payment");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
            });

            document.getElementById("back1").addEventListener("click", function () {
                var box1 = document.getElementById("about1");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
            });

            document.getElementById("back2").addEventListener("click", function () {
                var box1 = document.getElementById("about2");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
            });

            document.getElementById("contact").addEventListener("click", function () {
                var box1 = document.getElementById("about2");
                var box2 = document.getElementById("overlay");
                if (box1.style.display == "block") {
                    box1.style.display = "none";
                    box2.style.display = "none";
                }
                else {
                    box1.style.display = "block";
                    box2.style.display = "block";
                }
            });

        </script>
    </form>
</body>
</html>
