
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExecutarPing.aspx.cs" Inherits="ProjetoWeb.Admin.ExecutarPing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
	<div class="row margin-top-60"> 
		<!-- ENTRE COM O ENDEREÇO -->
		<div class="col-6">
			<div class="box	border margin-right-20">
				<h3>Teste de conectividade de um equipamento</h3>
				<br />
				<asp:Label runat="server" Text="Erro" Font-Bold="true" Font-Size="16px" ForeColor="red"></asp:Label>
				<label>Digite o endereço</label>
				<asp:TextBox ID="Endereco" runat="server" MaxLength="255"></asp:TextBox>
				<asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
			</div>
		</div>
		<!-- EXIBE O RESULTADO DO PING -->
		<div class="col-6">
			<h3>Resultado do Ping</h3>
			<br />
			<br />
			<asp:Label ID="Resposta" runat="server"></asp:Label>
		</div>
	</div>
</asp:Content>
