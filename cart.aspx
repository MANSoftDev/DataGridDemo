<%@ Page language="c#" Codebehind="cart.aspx.cs" AutoEventWireup="false" Inherits="DataGridDemo.Cart" %>
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
			<asp:datagrid style="Z-INDEX: 102; LEFT: 15px; POSITION: absolute; TOP: 49px" id="DataGrid1" Width="611px" runat="server" AutoGenerateColumns="False" DataKeyField="au_id" EnableViewState="False">
				<Columns>
					<asp:TemplateColumn HeaderText="Quantity">
						<ItemTemplate>
							<asp:TextBox id="txtQty" EnableViewState="False" Width="3em" runat="server" MaxLength="3" OnTextChanged="OnQtyChanged"></asp:TextBox>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:BoundColumn DataField="au_fname" HeaderText="First Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="au_lname" HeaderText="Last Name"></asp:BoundColumn>
				</Columns>
			</asp:datagrid>
			<asp:button id="Button1" style="Z-INDEX: 102; LEFT: 112px; POSITION: absolute; TOP: 16px" runat="server" Text="Order Now"></asp:button></form>
	</body>
</HTML>
