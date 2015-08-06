<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalInfoInsert.aspx.cs" Inherits="PersonalInfoMultiviewWebApp.PersonalInfoInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 47px;
        }
        .auto-style2 {
            width: 207px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewPersonalDetails" runat="server">
                <table style="border: 1px solid red">
                    <tr>
                        <td colspan="2">
                            <h2> Step 1 - Personal Information</h2>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Name :
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Father Name :
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="FatherNameTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Mother Name :
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="MotherTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Gender
                        </td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="GenderDropDownList" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" style="text-align: right">
                            <asp:Button ID="btnGoToStep2" runat="server" Text="Step 2 >>" OnClientClick="btnGoToStep2_Click" OnClick="btnGoToStep2_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="ViewContactDetails" runat="server">
                <table style="border: 1px solid green">
                    <tr>
                        <td colspan="2">
                            <h2>Step 2 - Contact Details</h2>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Email :
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Phone :
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            District :
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="DistrictTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:Button ID="btnBackStep1" runat="server" Text="<< Step 1" OnClientClick="btnGoToStep1_Click" OnClick="btnBackStep1_Click" />
                        </td>

                        <td style="text-align: right" class="auto-style2">
                            <asp:Button ID="btnGoToStep3" runat="server" Text="Step 3 >>" OnClientClick="btnGoToStep3_Click" OnClick="btnGoToStep3_Click" />
                        </td>
                    </tr>

                </table>
            </asp:View>

            <asp:View ID="ViewSummary" runat="server">
                <table style="border: 1px solid goldenrod">
                    <tr>
                        <td colspan="2">
                            <h2>Your Full Information</h2>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            First Name 
                        </td>
                        <td>
                            :<asp:Label ID="lblName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Father Name
                        </td>
                        <td>
                            :<asp:Label ID="lblFatherName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Mother Name
                        </td>
                        <td>
                            :<asp:Label ID="lblMotherName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Gender
                        </td>
                        <td>
                            :<asp:Label ID="lblGender" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2"><h3> Contact Details </h3></td>
                    </tr>
                    
                    <tr>
                        <td>
                            Email
                        </td>
                        <td>
                            :<asp:Label ID="lblEmail" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            Phone
                        </td>
                        <td>
                            :<asp:Label ID="lblphone" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            District
                        </td>
                        <td>
                            :<asp:Label ID="lblDistrict" runat="server"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="btnGoToStepTwo2" runat="server" Text="<< Step 2" OnClick="btnGoToStepTwo2_Click" OnClientClick="btnGoToStepTwo2_Click"  />
                        </td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>

                </table>
            </asp:View>

        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
