using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// PACOTE PARA EXECUTAR PING
using System.Net.NetworkInformation;

namespace ProjetoWeb.Admin
{
	public partial class ExecutarPing : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Enviar_Click(object sender, EventArgs e)
		{
			try
			{
				// ENVIA UM PING
				Ping enviaPing = new Ping();
				PingReply retorno = enviaPing.Send(Endereco.Text);

				Resposta.Text = "";

				if (retorno.Status == IPStatus.Success)
				{
					Resposta.ForeColor = System.Drawing.Color.Black;
					Resposta.Text = "Endereço IP: " + retorno.Address.ToString() + "<br>";
					Resposta.Text += "Status: " + retorno.Status.ToString() + "<br>";
					Resposta.Text += "Tempo: " + retorno.RoundtripTime.ToString() + "ms<br>";
					Resposta.Text += "Pacote: " + retorno.Buffer.Length.ToString() + "char <br>";


				}
				else
				{
					Resposta.Text += "Status: " + retorno.Status.ToString() + "<br>";
					Resposta.ForeColor = System.Drawing.Color.Red;
				}
			}
			catch (Exception ex)
			{
				Resposta.ForeColor = System.Drawing.Color.Red;
				Resposta.Text = "OCORREU UMA FALHA AO EXECUTAR O PING <br>";
				Resposta.Text += ex.Message;
				//SALVA A EXCEÇÃO NO ARQUIVO DE LOG
				App_Code.RecuperarExecao recuperar = new App_Code.RecuperarExecao();
				recuperar.SalvarExcecao(ex);
			}
		}
	}
}
