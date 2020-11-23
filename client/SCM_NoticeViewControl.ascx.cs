﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Microsoft.ApplicationBlocks.Data;
using System.IO;


public partial class SCM_NoticeViewControl : System.Web.UI.UserControl
{
    #region [1]Event Handler
    //레이블 바인딩
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //[1]레이블에 뿌리기
            DisplayData(); 
        }        
    } 
    //공지사항 목록보기
    protected void btnList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SCM_NoticeList.aspx");
    }

  //첨부파일다운로드
    protected void btnFile_Click(object sender, EventArgs e)
    {
        string FileName = lblFileName.Text;
        string path = "d:\\_Mobile_System\\cjcm\\fileupload\\notice\\";

         






        System.Web.HttpContext objCurrent = System.Web.HttpContext.Current;

        string strFullPath = Path.Combine(path, FileName);
        string encFileName = FileName;
        //// [2009.08.20] IE 6에서 바로 열기시, Encoding으로 인한 문제 발생
        //encFileName = EncodeFileName(downFileName);

        objCurrent.Response.Clear();
        objCurrent.Response.ClearHeaders();
        objCurrent.Response.ClearContent();

        encFileName = HttpUtility.UrlEncode(encFileName,
                             System.Text.Encoding.UTF8).Replace("+", "%20");

        objCurrent.Response.ContentType = "Application/Unknown";
        objCurrent.Response.AddHeader("content-disposition", "attachment;filename=" + encFileName);
        objCurrent.Response.AddHeader("content-length", (new System.IO.FileInfo(strFullPath)).Length.ToString());
        objCurrent.Response.TransmitFile(strFullPath);

    }
    #endregion
   
    #region [2]Mehtod



     
    //레이블 바인딩
    private void DisplayData()
    {
        //[1]dataset
        DataSet ds = new DataSet();

        using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
        {
            //[2]Fill
          //  ds = bsl.ViewNotice(Convert.ToInt32(Request["NoticeID"]));
            ds = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString, "UP_ViewSCM_Notice", Convert.ToInt32(Request["SCM_NoticeID"]));


            if (ds.Tables[0].Rows.Count > 0)
            {
                //[3]내용이 길어서.. 출력 오류 날수 있으니..나중에 체크하자..
		 lblReadCount.Text = ds.Tables[0].Rows[0]["ReadCount"].ToString();
		 lblPostDate.Text = ds.Tables[0].Rows[0]["PostDate"].ToString().Substring(0, 10);
		 lblSCM_NoticeID.Text = ds.Tables[0].Rows[0]["SCM_NoticeID"].ToString();
         lblContent.Text = ds.Tables[0].Rows[0]["Content"].ToString()
                        .Replace("\r\n", "<br />");

         
         lblTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString();
		lblps.Text = ds.Tables[0].Rows[0]["ps"].ToString();
			
		lblts1.Text = ds.Tables[0].Rows[0]["ts1"].ToString();
		lbllink1.Text = ds.Tables[0].Rows[0]["link1"].ToString();
		lblsec1.Text = ds.Tables[0].Rows[0]["sec1"].ToString();
		lblcode1.Text = ds.Tables[0].Rows[0]["code1"].ToString();
		lblcs1.Text = ds.Tables[0].Rows[0]["cs1"].ToString() 
		.Replace("\r\n", "<br />");
		lbltech1.Text = ds.Tables[0].Rows[0]["tech1"].ToString();	 
		lblDead1.Text = ds.Tables[0].Rows[0]["Dead1"].ToString();
		lblcorp1.Text = ds.Tables[0].Rows[0]["corp1"].ToString();
		lblProgress1.Text = ds.Tables[0].Rows[0]["Progress1"].ToString();		
		lbllang1.Text = ds.Tables[0].Rows[0]["lang1"].ToString();			
        lblFileName.Text = ds.Tables[0].Rows[0]["UpFileName"].ToString();



   





  if ((lblFileName.Text != null) && (lblFileName.Text != ""))
                {
                    btnFile.Visible = true;
                }
                else
                {
                    btnFile.Visible = false;
                }
            }
            else
            {
                lblNoticeError.Text = "잘못된 요청입니다";
            }
        }        
    } 
    #endregion    

}