<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeViewControl.ascx.cs" Inherits="SCM_NoticeViewControl" %>
<asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>

<div id="text_mode_c" align=center><b>프로젝트 : <asp:Label ID="lbllink1" runat="server"></asp:Label></b></div>
 
<!div id="text_mode_c" align=justify>



<TABLE width=100% border=0> 
<tr bgcolor="#efefef" height=30> 

<td id="text_mode_c" align=left colspan=2><b>고객사 : <asp:Label ID="lblts1" runat="server"></asp:Label></b></td></tr> 
<tr>
<td  align=center valign=top width=30%> 
<img src ="../../fileUpload/notice/<%= lblFileName.Text %>" width=100%>
</td> 
<td align=left width=70%> 
<asp:Label ID="lblcs1" runat="server"></asp:Label>
<br><br> 
마감 : <asp:Label ID="lblDead1" runat="server"></asp:Label> 까지 입니다<br>
진행 : <asp:Label ID="lblProgress1" runat="server"></asp:Label></b> 
</td></tr>
<tr bgcolor="#efefef">
 
<td id="text_mode_t" align=left width=20%> </td>
<td   align=left><a class="fancybox fancybox.iframe"  href="../../job_jiwon/a/SCM_jiwonAdd.aspx"><font color="#000000"><font size=3><b>
지원업종 : <font color="red"><asp:Label ID="lblcode1" runat="server"></asp:Label></font>&nbsp;&nbsp;|&nbsp;&nbsp;
지원번호 : <font color="red"><asp:Label ID="lblSCM_NoticeID" runat="server"></asp:Label></font></b>&nbsp;&nbsp;
</td></tr> 
</table> 

<!--<asp:Label ID="lblTitle" runat="server"></asp:Label>
<asp:Label ID="lblcorp1" runat="server"></asp:Label>
<asp:Label ID="lbltech1" runat="server"></asp:Label> 
<b><asp:Label ID="lblsec1" runat="server"></asp:Label>  
<b><asp:Label ID="lbllang1" runat="server"></asp:Label>-->










<!--<div id="text_mode_s" align=right><b>일자 : <asp:Label ID="lblps" runat="server"></asp:Label></b></div> 
<asp:Label ID="lblContent" runat="server"></asp:Label> 
<asp:Label ID="lblPostDate" runat="server"></asp:Label><asp:Label ID="lblReadCount" runat="server"></asp:Label>                                    
<asp:Label ID="lblFileName" runat="server"></asp:Label><asp:Button  ID="btnFile"  runat="server" onclick="btnFile_Click" Text="" />-->   
  

 