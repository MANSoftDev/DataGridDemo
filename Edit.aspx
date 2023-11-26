<%@ Page language="c#" Codebehind="Edit.aspx.cs" AutoEventWireup="false" Inherits="DataGridDemo.Edit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm3</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="WebForm3" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 11px; POSITION: absolute; TOP: 45px" runat="server" AutoGenerateColumns="False">
				<Columns>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:TemplateColumn HeaderText="First Name">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.au_fname") %>'>
							</asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.au_fname") %>'>
							</asp:TextBox>
						</EditItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Last Name">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.au_lname") %>'>
							</asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.au_lname") %>'>
							</asp:TextBox>
						</EditItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="City">
						<ItemTemplate>
							<asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.city") %>'>
							</asp:Label>
						</ItemTemplate>
						<EditItemTemplate>
							<asp:TextBox runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.city") %>'>
							</asp:TextBox>
						</EditItemTemplate>
					</asp:TemplateColumn>
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
