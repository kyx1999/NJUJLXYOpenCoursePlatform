using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for EmailSender
/// </summary>
public class EmailSender
{
    private readonly string mailFromAddress = ConfigurationManager.AppSettings["MailFromAddress"];
    private readonly bool useSsl = bool.Parse(ConfigurationManager.AppSettings["UseSsl"]);
    private readonly string userName = ConfigurationManager.AppSettings["UserName"];
    private readonly string password = ConfigurationManager.AppSettings["Password"];
    private readonly string serverName = ConfigurationManager.AppSettings["ServerName"];
    private readonly int serverPort = int.Parse(ConfigurationManager.AppSettings["ServerPort"]);
    private readonly string findPassword;
    private readonly string mailToAddress = "";

    public EmailSender()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public EmailSender(string address, string pwd)
    {
        mailToAddress = address;
        findPassword = pwd;
    }

    public void Send()
    {
        using (var smtpClient = new SmtpClient())
        {
            smtpClient.EnableSsl = useSsl;
            smtpClient.Host = serverName;
            smtpClient.Port = serverPort;
            smtpClient.Credentials = new NetworkCredential(userName, password);
            string body = "您登录MyPetShop的密码已重置为：" + findPassword;
            MailMessage mailMessage = new MailMessage(
                                   mailFromAddress,
                                   mailToAddress,
                                   "MyPetShop用户密码重置",
                                   body);
            smtpClient.Send(mailMessage);
        }
    }
}