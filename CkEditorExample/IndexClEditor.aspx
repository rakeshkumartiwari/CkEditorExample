<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexClEditor.aspx.cs" Inherits="CkEditorExample.IndexClEditor" ValidateRequest="false" %>

<%-- we have to set ValidateRequest attribute to false othewise  cleditor data won't be saved in datatbase it will throw error. [see line no:1] --%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cleditor Example</title>

     <%-- these are the necessary plug-in for cleditor --%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/jquery.cleditor.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.min.js"></script>
    <script src="scripts/jquery.cleditor.min.js"></script>

    <%-- this is for display Cleditor if you won't write this code Cleditor won't be displayed--%>
    <script type="text/javascript">
        $(document).ready(function () { $("#TextArea1").cleditor(); });
  </script>

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
                        <%-- We have to use textarea in order to display Cleditor --%>
                        <textarea id="TextArea1" cols="20" rows="2" runat="server"></textarea>
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