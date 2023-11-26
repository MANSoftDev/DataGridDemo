<%@ Page language="c#" Codebehind="hyperlink.aspx.cs" AutoEventWireup="false" Inherits="DataGridDemo.WebForm3" %>
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
					<asp:HyperLinkColumn Text="CodeProject" Target="_blank" NavigateUrl="http://www.codeproject.com"></asp:HyperLinkColumn>
					<asp:BoundColumn DataField="au_fname" HeaderText="First Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="au_lname" HeaderText="Last Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="city" HeaderText="City"></asp:BoundColumn>
				</Columns>
			</asp:datagrid></form>
	</body>
</HTML>
