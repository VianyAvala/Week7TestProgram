<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validationForm.aspx.cs" Inherits="Week7TestProgram.validationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="NewFolder1/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery.validate.js"></script>
</head>
<body class="border:auto">
    <form id="form1" runat="server">
        <div class="container" >
           <div class="row">
                <h1 align="center">Create New class</h1>

                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <div class="mb-2 row">

                         <label class="form-label col-md-4">Position Code</label>
                         <asp:TextBox ID="TxtPositionCode" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="RfvPositionCode" runat="server" ControlToValidate="TxtPositionCode" ErrorMessage="please enter position code"></asp:RequiredFieldValidator>

                      </div>

                     <div class="mb-2 row">

                         <label class="form-label col-md-4">Description</label>
                         <asp:TextBox ID="TxtDescription" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="RfvTxtDescription" runat="server" ControlToValidate="TxtDescription" ErrorMessage="please enter Description"></asp:RequiredFieldValidator>


                      </div>
                     <div class="mb-2 row">

                         <label class="form-label col-md-4">Year</label>
                           <asp:DropDownList CssClass="form-select" ID="DdlYear" runat="server">
                          <asp:ListItem Text="---select---" Value="0" />
                            <%-- <asp:Calendar runat="server"></asp:Calendar>--%>
                               
                            </asp:DropDownList>
                          <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="Rfvyear" runat="server" ControlToValidate="DdlYear" ErrorMessage="please select a year"></asp:RequiredFieldValidator>


                      </div>

                      <div class="mb-2 row">

                         <label class="form-label col-md-4">Budgeted Strength</label>
                         <asp:TextBox ID="TxtBudgetedStrength" runat="server" CssClass="form-control" />

                         <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="RfvTxtBudgetedStrength" runat="server" ControlToValidate="TxtBudgetedStrength" ErrorMessage="please enter budgeted strength"></asp:RequiredFieldValidator>


                      </div>

                     <div class="mb-2 row">

                         <label class="form-label col-md-4">current  Strength</label>
                         <asp:TextBox ID="TxtStrength" runat="server" CssClass="form-control" />
                         <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ID="RfvTxtStrength" runat="server" ControlToValidate="TxtStrength" ErrorMessage="please enter current strength"></asp:RequiredFieldValidator>


                      </div>
                    
              
                    

                    <div class="mb-2 row">

                        <div class="col-md-8">
                              <asp:Button ID="Button1" runat="server" Text="ADD New" value="Add NEW" CssClass="btn btn-primary" OnClick="Button1_Click" />
                              <asp:Button ID="BtnReset" runat="server" Text="Reset" value="Add NEW" CssClass="btn btn-danger" OnClick="BtnReset_Click" />
                        </div>
                    </div>

                    

        


    </form>
</body>
</html>
