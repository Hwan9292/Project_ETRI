using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_SCM_NoticeAddControl : System.Web.UI.UserControl
{
    #region [1]Event Handler
    //Load
    protected void Page_Load(object sender, EventArgs e)
    {
        //[1]스크립트
        string strAlert = @"<script>alert('관리자만 접근가능합니다.');location.href='../Default.aspx';</script>";

        //[2]로그인 체크
        if (!Page.User.Identity.IsAuthenticated)
        {
            Response.Write(strAlert);
        }
        else
        {
            //[3]관리자만 접근가능
            if (Page.User.Identity.Name.ToLower() == "admin")
            {
                //
            }
            else
            {
                Response.Write(strAlert);
            }
        }
    }
    //Submit
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {        

        //[1]임시변수
        string strTitle = "";
        string strContent = "";
string strps = ""; 

string strts1 = "";
string strts2 = "";
string strts3 = "";
string strts4 = "";
string strts5 = "";
string strts6 = "";
string strts7 = "";
string strts8 = "";



string strcode1 = ""; 
string strcs1 = "";
string strlink1 = "";
string strDead1 = "";
string strcorp1 = ""; 
string strlang1 = "";
string strsec1 = "";
string strtech1 = "";
string strts02 = "";
string strts03 = "";
string strts04 = "";
string strts05 = "";
string strcs2 = "";
string strcs3 = "";
string strcs4 = "";
string strcs5 = "";
string strqty1 = "";
string strqty2 = "";
string strqty3 = "";
string strqty4 = "";
string strqty5 = "";
string strprice1 = "";
string strprice2 = "";
string strprice3 = "";
string strprice4 = "";
string strprice5 = "";
string strvos1 = "";
string strvos2 = "";
string strvos3 = "";
string strvos4 = "";
string strvos5 = "";
string strvat1 = "";
string strvat2 = "";
string strvat3 = "";
string strvat4 = "";
string strvat5 = "";




    string UpfileName = "";	

    string dbFileName = string.Empty;
     

         
	
       
                                                                        
        string path="d:\\_Mobile_System\\joblink\\fileUpload\\Notice\\";        


        string strAlert = @"<script>alert('입력했습니다.');location.href='SCM_NoticeList.aspx';</script>";


if ((FileUpload1.PostedFile.FileName != null) && (FileUpload1.PostedFile.ContentLength > 0))
        {
            UpfileName = FileUpload1.PostedFile.FileName;
    
            string SaveLocation = Server.MapPath("~\\fileUpload\\Notice\\") + UpfileName;
            dbFileName = UpfileName;
            FileInfo fInfo = new FileInfo(SaveLocation);
            string newUpFile = string.Empty;
            if (!fInfo.Exists)
            {
                int fIndex = 0;
                string fExtension = fInfo.Extension;
                string fRealName = UpfileName.Replace(fExtension, "");

                do
                {
                    fIndex++;
                    dbFileName = fRealName + "" + fIndex.ToString() + fExtension;
		    SaveLocation =Server.MapPath("~\\fileUpload\\Notice\\")+dbFileName ;
                    fInfo = new FileInfo(SaveLocation)  ;                                              
                } while (fInfo.Exists);                                                                                                        
             }
                  FileUpload1.SaveAs(SaveLocation);                                                                                                          
        }


      

	 
        
        try
        {
            //[2]변환
            strTitle = txtTitle.Text
                .Replace("&", "&amp;")
                .Replace("<", "&lt;")
                .Replace(">", "&gt;")
                .Replace("\r\n", "<br>")
                .Replace("\t", "&nbsp;&nbsp;&nbsp;");                
 

		
		
strps = txtps.Text; 	
strcode1 = txtcode1.Text; 		
strts1 = txtts1.Text;
             

strcs1 = txtcs1.Text;
strlink1 = txtlink1.Text;
strDead1 = txtDead1.Text;

strcorp1 = txtcorp1.Text; 
strlang1 = txtlang1.Text;
strsec1 = txtsec1.Text;
strtech1 = txttech1.Text;
strts02 = txtts02.Text;
strts03 = txtts03.Text;
strts04 = txtts04.Text;
strts05 = txtts05.Text;
strcs2 = txtcs2.Text;
strcs3 = txtcs3.Text;
strcs4 = txtcs4.Text;
strcs5 = txtcs5.Text;
strqty1 = txtqty1.Text;
strqty2 = txtqty2.Text;
strqty3 = txtqty3.Text;
strqty4 = txtqty4.Text;
strqty5 = txtqty5.Text;
strprice1 = txtprice1.Text;
strprice2 = txtprice2.Text;
strprice3 = txtprice3.Text;
strprice4 = txtprice4.Text;
strprice5 = txtprice5.Text;
strvos1 = txtvos1.Text;
strvos2 = txtvos2.Text;
strvos3 = txtvos3.Text;
strvos4 = txtvos4.Text;
strvos5 = txtvos5.Text;
strvat1 = txtvat1.Text;
strvat2 = txtvat2.Text;
strvat3 = txtvat3.Text;
strvat4 = txtvat4.Text;
strvat5 = txtvat5.Text;
 











if (strts1 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);

					
					
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}
if (strts2 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}
if (strts3 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}
if (strts4 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}
if (strts5 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}

if (strts6 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}


if (strts7 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}


if (strts8 !="")
{
               using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
					cmd.Parameters.AddWithValue("@upFileName", dbFileName);
					cmd.Parameters.AddWithValue("@ps", strps);
					cmd.Parameters.AddWithValue("@lang1", strlang1);
					cmd.Parameters.AddWithValue("@ts1", strts1);
					cmd.Parameters.AddWithValue("@cs1", strcs1);
					cmd.Parameters.AddWithValue("@link1", strlink1);
					cmd.Parameters.AddWithValue("@Dead1", strDead1);
					cmd.Parameters.AddWithValue("@corp1", strcorp1); 
					cmd.Parameters.AddWithValue("@sec1", strsec1);
					cmd.Parameters.AddWithValue("@tech1", strtech1);
					cmd.Parameters.AddWithValue("@ts02", strts02);
					cmd.Parameters.AddWithValue("@ts03", strts03);
					cmd.Parameters.AddWithValue("@ts04", strts04);
					cmd.Parameters.AddWithValue("@ts05", strts05);
					cmd.Parameters.AddWithValue("@cs2", strcs2);
					cmd.Parameters.AddWithValue("@cs3", strcs3);
					cmd.Parameters.AddWithValue("@cs4", strcs4);
					cmd.Parameters.AddWithValue("@cs5", strcs5);
					cmd.Parameters.AddWithValue("@qty1", strqty1);
					cmd.Parameters.AddWithValue("@qty2", strqty2);
					cmd.Parameters.AddWithValue("@qty3", strqty3);
					cmd.Parameters.AddWithValue("@qty4", strqty4);
					cmd.Parameters.AddWithValue("@qty5", strqty5);
					cmd.Parameters.AddWithValue("@price1", strprice1);
					cmd.Parameters.AddWithValue("@price2", strprice2);
					cmd.Parameters.AddWithValue("@price3", strprice3);
					cmd.Parameters.AddWithValue("@price4", strprice4);
					cmd.Parameters.AddWithValue("@price5", strprice5);
					cmd.Parameters.AddWithValue("@vos1", strvos1);
					cmd.Parameters.AddWithValue("@vos2", strvos2);
					cmd.Parameters.AddWithValue("@vos3", strvos3);
					cmd.Parameters.AddWithValue("@vos4", strvos4);
					cmd.Parameters.AddWithValue("@vos5", strvos5);
					cmd.Parameters.AddWithValue("@vat1", strvat1);
					cmd.Parameters.AddWithValue("@vat2", strvat2);
					cmd.Parameters.AddWithValue("@vat3", strvat3);
					cmd.Parameters.AddWithValue("@vat4", strvat4);
					cmd.Parameters.AddWithValue("@vat5", strvat5);
					con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
}




























   /*      
                using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("UP_AddSCM_Order", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Title", strTitle);
                    cmd.Parameters.AddWithValue("@Content", strContent);
                    cmd.Parameters.AddWithValue("@code1", strcode1);	
                    cmd.Parameters.AddWithValue("@code2", strcode2);	
                    cmd.Parameters.AddWithValue("@code3", strcode3);	
                    cmd.Parameters.AddWithValue("@code4", strcode4);	
                    cmd.Parameters.AddWithValue("@code5", strcode5);						
					
					
cmd.Parameters.AddWithValue("@upFileName", dbFileName);
cmd.Parameters.AddWithValue("@upFileName2", dbFileName2);
cmd.Parameters.AddWithValue("@upFileName3", dbFileName3);
cmd.Parameters.AddWithValue("@upFileName4", dbFileName4);
cmd.Parameters.AddWithValue("@upFileName5", dbFileName5);
                     
		     

cmd.Parameters.AddWithValue("@ps", strps);
cmd.Parameters.AddWithValue("@ts1", strts1);
cmd.Parameters.AddWithValue("@ts2", strts2);
cmd.Parameters.AddWithValue("@ts3", strts3);
cmd.Parameters.AddWithValue("@ts4", strts4);
cmd.Parameters.AddWithValue("@ts5", strts5);

cmd.Parameters.AddWithValue("@cs1", strcs1);
cmd.Parameters.AddWithValue("@cs2", strcs2);
cmd.Parameters.AddWithValue("@cs3", strcs3);
cmd.Parameters.AddWithValue("@cs4", strcs4);
cmd.Parameters.AddWithValue("@cs5", strcs5);


cmd.Parameters.AddWithValue("@link1", strlink1);
cmd.Parameters.AddWithValue("@link2", strlink2);
cmd.Parameters.AddWithValue("@link3", strlink3);
cmd.Parameters.AddWithValue("@link4", strlink4);
cmd.Parameters.AddWithValue("@link5", strlink5);

cmd.Parameters.AddWithValue("@Dead1", strDead1);
cmd.Parameters.AddWithValue("@Dead2", strDead2);
cmd.Parameters.AddWithValue("@Dead3", strDead3);
cmd.Parameters.AddWithValue("@Dead4", strDead4);
cmd.Parameters.AddWithValue("@Dead5", strDead5);

cmd.Parameters.AddWithValue("@Progress1", strProgress1);
cmd.Parameters.AddWithValue("@Progress2", strProgress2);
cmd.Parameters.AddWithValue("@Progress3", strProgress3);
cmd.Parameters.AddWithValue("@Progress4", strProgress4);
cmd.Parameters.AddWithValue("@Progress5", strProgress5);

cmd.Parameters.AddWithValue("@corp1", strcorp1); 
cmd.Parameters.AddWithValue("@corp2", strcorp2);
cmd.Parameters.AddWithValue("@corp3", strcorp3);
cmd.Parameters.AddWithValue("@corp4", strcorp4);
cmd.Parameters.AddWithValue("@corp5", strcorp5); 

con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
         */ 

            //[4]
            Response.Write(strAlert);
        }
        catch (Exception err)
        {
            //[5]Exception
            Response.Write(err.Source + " : " + err.Message);
        }
    }
    //Cancel
    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SCM_NoticeList.aspx");
    } 
    #endregion
}
