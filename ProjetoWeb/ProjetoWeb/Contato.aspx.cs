using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb
{
	public partial class Contato : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}

		protected void Enviar_Click(object sender, EventArgs e)

		{

			// ENVIAR O EMAIL PARA A APLICAÇÃO
			//1. VALIDAR OS DADOS INFORMADOS
			string nome = SeuNome.Text.Trim();
			string email = SeuEmail.Text.Trim().ToLower();
			string mensagem = Mensagem.Text.Trim();

			if (nome == "")
			{
				Erro.Text = "Digite seu nome: ";
			}
			else if (email == "")
			{
				Erro.Text = "Digite o email";
			}
			else if (mensagem == "")
			{
				Erro.Text = "Digite a Mensagem";
			}
			else
			{
				try
				{
					//2. INSTANCIAR (CRIAR UMA CÓPIA) O OBJETO MAILMESSAGE
					MailMessage mail = new MailMessage();
					mail.Subject = "E-mail enviado pela pagina de contato";
					mail.To.Add("contato@seudominio.com.br");
					MailAddress remetente = new MailAddress("contato@seudominio.com.br");
					mail.From = remetente;
					mail.IsBodyHtml = false;
					mail.Body = "Dados informados\n";
					mail.Body += "Nome: " + nome + "\n";
					mail.Body += "Email: " + email + "\n";
					mail.Body += "Mensagem" + mensagem + "\n";

					LimparControles();
					//3. ENVIA O EMAIL "System.Net.Mail.SmtpClient"
					SmtpClient smtp = new SmtpClient();
					smtp.Host = "smtp.gmail.com";
					smtp.Port = 587;
					smtp.EnableSsl = false;
					smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "suasenha");
					smtp.Send(mail);

				}
				catch (Exception ex)
				{
					Erro.Text = "Houve uma falha no envio do email <br>" + ex.Message;
				}

			}
		}

		protected void LimparControles()
		{
			SeuNome.Text = "";
			SeuEmail.Text = "";
			Mensagem.Text = "";
		}
	}
}