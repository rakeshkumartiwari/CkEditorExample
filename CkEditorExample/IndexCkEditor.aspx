<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexCkEditor.aspx.cs" Inherits="CkEditorExample.IndexCkEditor" ValidateRequest="false" %>
<%-- we have to set ValidateRequest attribute to false othewise  ckeditor data won't be saved in datatbase it will throw error. [see line no:1] --%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ckeditor Example</title>

     <%-- these are the necessary plug-in for ckeditor --%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.slim.min.js"></script>
    <script src="scripts/ckeditor/ckeditor.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="margin-top: 20px">
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-2">
                        <asp:TextBox runat="server" ID="txtPostTitle" CssClass="form-control" placeholder="Enter Post Title">
                        </asp:TextBox>
                    </div>
                </div>
            </div>
           
             <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <%-- We have to use Class="ckeditor" in order to display Ckeditor --%>
                        <asp:TextBox ID="txtPostComment" runat="server" Class="ckeditor" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn btn-danger" />
                    </div>
                      <div class="col-lg-2">
                         <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" class="btn btn-danger" />
                    </div>
                </div>
            </div>
        <div class="form-group">
                <div class="row">
                    <div class="col-lg-12" id="DivshowComments" runat="server">
                          <%-- Display save data here --%>
                    </div>
                </div>
            </div>
             
        </div>
    </form>
</body>
</html>
