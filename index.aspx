<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Mahder_.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>MAHIDER - Ethiopian Businesses Info Directory</title>
    <link href="~/main.css" rel="stylesheet" />
    <link href="~/nav.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="~/nav.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet" />
    <style type="text/css">
        #profilePicture {
            width: 199px;
        }

        #about {
            width: 268px;
        }
    </style>
</head>
<body>
    <nav>
        <div class="main-menu">
            <ul>
                <li><a class="my-mnu" href="#">Home</a></li>
                <li><a class="my-mnu" href="~/catagories">Catagories</a>
                    <%--<ul>
                        <li>
                            <a href="#">Busines Type</a>
                        </li>
                        <li>
                            <a href="#">By Location</a>
                        </li>
                    </ul>--%>
                </li>
                <li><a class="my-mnu" href="~/featured">Featured</a></li>
                <li><a class="my-mnu" href="#Contact">Contact</a></li>
                <li><a class="my-mnu" href="~/about">About</a></li>
            </ul>
            <button class="custom-btn btn-5 btn-flt-rt" type="button" data-toggle="modal" data-target="#myModal" tabindex="-1">Add Business Info </button>
        </div>
    </nav>


    <form id="addInfo" runat="server">
        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" type="button" data-dismiss="modal">X</button>
                        <h4 class="modal-title">Add your Business Info</h4>
                    </div>
                    <div class="modal-body">
                        <div class="popup">
                            <div class="formContainer">
                                <table>
                                    <tr>
                                        <td>
                                            <label>Business Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="businessName" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Owner Full Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ownerFullName" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Business Catagory: </label>
                                        </td>
                                        <td>
                                            <%--<asp:DropDownList ID="businessCatagory" runat="server"></asp:DropDownList>--%>
                                            <select id="businessCatagory">
                                                <option>Finance</option>
                                                <option>Health</option>
                                                <option>Real State</option>
                                                <option>Hotel and Accomodation Service</option>
                                            </select>
                                            <%--<asp:TextBox ID="businessCatagor" runat="server"></asp:TextBox>--%></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Business Type: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="businessType" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>
                                            <asp:Label ID="aboutLable" runat="server" Text="Business Description: "></asp:Label>
                                        </td>
                                        <td>
                                            <textarea id="about" rows="2"></textarea>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Business Address: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="address" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Woreda: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="woreda" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Region: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="region" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>City: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="city" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Phone number 1: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="phoneNumber1" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Phone Number 2: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="phoneNumber2" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Twitter User Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="twitterUname" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>facebook User Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="facebookUname" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Telegramk User Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="telegramUname" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Instagram User Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="instagramUname" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Linkedin User Name: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="linkedinUname" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Website: </label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="website" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Profile Picture: </label>
                                        </td>
                                        <td>
                                            <label for="profilePicture">Select an image:</label>
                                            <input type="file" id="profilePicture" name="profilePicture" />
                                        </td>
                                    </tr>
                                    <%--<tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="ppUpload" type="submit" Text="Upload" runat="server" CLASS="btn"></asp:Button>
                                        </td>
                                    </tr>--%>
                                    <tr>
                                        <td></td>
                                        <td>
                                            
                                        </td>
                                    </tr>
                                </table>
                                
                                <asp:Button ID="add" runat="server" Text="Submit" CLASS="custom-btn btn-5 btn-hov" OnClick="add_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <asp:GridView ID="BanksList" CssClass="banks list" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" runat="server"></asp:GridView>
        </div>

    </form>



    <%--    <asp:Button ID="updt" runat="server" Text="Edit" CLASS="btn" />
    <asp:Button ID="delt" runat="server" Text="Delete" CLASS="btn" />--%>
</body>
</html>
