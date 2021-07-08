<%@ Page MasterPageFile="~/Site1.Master" Language="C#" AutoEventWireup="true" CodeBehind="FirstForm.aspx.cs" Inherits="Lesson3.FirstForm" %>

<asp:Content ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
            <div id="myDIV" class="header">
              <h2>My To Do List</h2>
           </div>

        <ul id="myUL">
            <asp:TextBox ID="TextBox" runat="server" Height="16px" PlaceHolder="Text" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>         
            <asp:Button ID="SaveBtn" runat="server" Text="Button" Height="37px" OnClick="SaveBtn_Click" Width="149px" />
            
    <asp:Repeater ID="taskRepeat" runat="server">
        <ItemTemplate>
            <li>
            <div class="task">
                <%# Eval("Title")%>
            </div>
            <div class="action">
                <a href="#"><i class="fa fa-edit"></i></a>
            </div>
            <div class="action">
                <a href="#"><i class="fa fa-trash-alt"></i></a> 
            </div>
          </li>     
        </ItemTemplate>
    </asp:Repeater>
            </ul>
    </form>
</asp:Content>

