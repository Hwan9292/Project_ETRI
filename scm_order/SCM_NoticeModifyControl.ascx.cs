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
using Microsoft.ApplicationBlocks.Data;
using System.IO;

public partial class Admin_SCM_NoticeModifyControl : System.Web.UI.UserControl
{
   #region [1]Event Handler
    //[1]그리드..
    protected void Page_Load(object sender, EventArgs e)
    {
        //[1]스크립트
        string strAlert = @"<script>location.href='../Default.aspx';</script>";
        
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
                if (!IsPostBack)
                {
                    DisplayData();
                }
            }
            else
            {
                Response.Write(strAlert);                
            }
        }        
    }
    
    //수정
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        //[1]제목과 내용 변수
        string strTitle = "";
        string strContent = "";
	string strps = "";
string strcode1 = "";	 
string strts1 = "";
string strcs1 = "";
string strlink1 = "";
string strDead1 = "";
string strlang1 = "";

string strcorp1 = "";
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
string dbFileName = lblFileName.Text ; 
	                                                  
        

        //[1-1]script
        string strAlert = @"<script>alert('수정했습니다.');location.href='SCM_NoticeView.aspx?SCM_NoticeID=" 
            + Request["SCM_NoticeID"] 
            + "';</script>"; 


        if ((FileUpload1.PostedFile.FileName != null) && (FileUpload1.PostedFile.ContentLength > 0))
        {
            UpfileName = FileUpload1.PostedFile.FileName;
    
            string SaveLocation = Server.MapPath("~\\fileUpload\\notice\\") + UpfileName;
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
		    SaveLocation =Server.MapPath("~\\fileUpload\\notice\\")+dbFileName ;
                    fInfo = new FileInfo(SaveLocation)  ;                                                    
                } while (fInfo.Exists);

                                                                                                              
             }
    
              FileUpload1.SaveAs(SaveLocation);
                                                                                                               
        }
 
       
        try
        {            
            //[2]리플레이스 변환
            strTitle = txtTitle.Text;                    				
		strContent = txtContent.Text
        .Replace("\r\n", "<br />");
	    strps = txtps.Text;  
            strts1 = txtts1.Text;  
            strcs1 = txtcs1.Text; 

strcorp1 = txtcorp1.Text;
strsec1 = txtsec1.Text;
strtech1 = txttech1.Text;

strDead1 = txtDead1.Text; 

strcode1 = txtcode1.Text; 
strlang1 = txtlang1.Text; 


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

			
 

            using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
            {
                //[1]Excute
             
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                SqlCommand cmd = new SqlCommand("UP_ModifySCM_Order", con);
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
				
				
                cmd.Parameters.AddWithValue("@SCM_NoticeID", Convert.ToInt32(Request["SCM_NoticeID"]));

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            //[2]리디렉트..수차후수정
            Response.Write(strAlert);            
        }
        catch (Exception err)
        {
            //[3]Exception
            Response.Write(err.Source + " : " + err.Message);
        }
        
    }
    //취소
    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {        
        Response.Redirect("SCM_NoticeView.aspx?SCM_NoticeID=" + Request["SCM_NoticeID"]);
    }
    #endregion

    #region [2]Method
    //텍스트 박스 바인딩
    private void DisplayData()
    {
        //[1]dataset
        DataSet ds = null;
        
        try
        {
            using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
            {
                //[2]Fill
              //  ds = bsl.ViewNotice(Convert.ToInt32(Request["NoticeID"]));
                ds = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString, "UP_ViewSCM_Order", Convert.ToInt32(Request["SCM_NoticeID"]));

                //[3]Bind
                txtTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString();
		txtps.Text = ds.Tables[0].Rows[0]["ps"].ToString(); 
		txtts1.Text = ds.Tables[0].Rows[0]["ts1"].ToString();  
		txtcs1.Text = ds.Tables[0].Rows[0]["cs1"].ToString(); 
		txtcorp1.Text =ds.Tables[0].Rows[0]["corp1"].ToString();
        txtsec1.Text =ds.Tables[0].Rows[0]["sec1"].ToString(); 
        txttech1.Text = ds.Tables[0].Rows[0]["tech1"].ToString(); 
		txtlang1.Text = ds.Tables[0].Rows[0]["lang1"].ToString();
		txtDead1.Text = ds.Tables[0].Rows[0]["Dead1"].ToString();   
		txtcode1.Text = ds.Tables[0].Rows[0]["code1"].ToString();  		
        txtContent.Text = ds.Tables[0].Rows[0]["Content"].ToString()  
		.Replace("\r\n", "<br />"); 
		txtts02.Text = ds.Tables[0].Rows[0]["ts02"].ToString();
        txtts03.Text = ds.Tables[0].Rows[0]["ts03"].ToString();
        txtts04.Text = ds.Tables[0].Rows[0]["ts04"].ToString();
        txtts05.Text = ds.Tables[0].Rows[0]["ts05"].ToString();
        txtcs2.Text = ds.Tables[0].Rows[0]["cs2"].ToString();
        txtcs3.Text = ds.Tables[0].Rows[0]["cs3"].ToString();
        txtcs4.Text = ds.Tables[0].Rows[0]["cs4"].ToString();
        txtcs5.Text = ds.Tables[0].Rows[0]["cs5"].ToString();
        txtqty1.Text = ds.Tables[0].Rows[0]["qty1"].ToString();
        txtqty2.Text = ds.Tables[0].Rows[0]["qty2"].ToString();
        txtqty3.Text = ds.Tables[0].Rows[0]["qty3"].ToString();
        txtqty4.Text = ds.Tables[0].Rows[0]["qty4"].ToString();
        txtqty5.Text = ds.Tables[0].Rows[0]["qty5"].ToString();
        txtprice1.Text = ds.Tables[0].Rows[0]["price1"].ToString();
        txtprice2.Text = ds.Tables[0].Rows[0]["price2"].ToString();
        txtprice3.Text = ds.Tables[0].Rows[0]["price3"].ToString();
        txtprice4.Text = ds.Tables[0].Rows[0]["price4"].ToString();
        txtprice5.Text = ds.Tables[0].Rows[0]["price5"].ToString();
        txtvos1.Text = ds.Tables[0].Rows[0]["vos1"].ToString();
        txtvos2.Text = ds.Tables[0].Rows[0]["vos2"].ToString();
        txtvos3.Text = ds.Tables[0].Rows[0]["vos3"].ToString();
        txtvos4.Text = ds.Tables[0].Rows[0]["vos4"].ToString();
        txtvos5.Text = ds.Tables[0].Rows[0]["vos5"].ToString();
        txtvat1.Text = ds.Tables[0].Rows[0]["vat1"].ToString();
        txtvat2.Text = ds.Tables[0].Rows[0]["vat2"].ToString();
        txtvat3.Text = ds.Tables[0].Rows[0]["vat3"].ToString();
        txtvat4.Text = ds.Tables[0].Rows[0]["vat4"].ToString();
        txtvat5.Text = ds.Tables[0].Rows[0]["vat5"].ToString();
lblFileName.Text = ds.Tables[0].Rows[0]["UpFileName"].ToString(); 
 
                
            }            
        }
        catch (Exception err)
        {
            //[4]예외
            Response.Write(err.Source + " : " + err.Message);
        }               
    } 
    #endregion
   
}
