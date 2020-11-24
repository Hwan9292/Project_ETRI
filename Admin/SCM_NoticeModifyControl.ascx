<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeModifyControl.ascx.cs" Inherits="Admin_SCM_NoticeModifyControl" %>

 
<table style="border: 1px solid #d7d7d7">
    <asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>
    </td></tr></table>   

     <table width=98%>
        <tr><td width=45% valign="top">
            <table width=100% border="2px" style="text-align: center; border-collapse: collapse;">
                <tr>
                    <td width=22% bgcolor="#efefef"><b>일련번호</b></td>
                    <td><asp:Label ID="lblTitle" runat="server"></asp:Label></td> 
                </tr>
                <tr>
                    <td bgcolor="#efefef"><b>고객사</b></td>
                    <td><asp:Label ID="lblcode1" runat="server"></asp:Label></td> 
                </tr>
                <tr>
                    <td bgcolor="#efefef"><b>참조</b></td>
                    <td><asp:Label ID="lbllang1" runat="server"></asp:Label></td> 
                    
                </tr>
                <tr>
                    <td bgcolor="#efefef"><b>TEL</b></td>
                    <td><asp:Label ID="lblps" runat="server"></asp:Label></td> 
                </tr>
              
            </table>
                <table width=100% border="2px" style="text-align: center; border-collapse: collapse;  border-top: none;">
                <tr>
                    <td style="text-align: right; border-right: none;" width=50%>납기일자:</td>
                    <td style="text-align: left; border-left: none;" width=50%><asp:Label ID="lblDead1" runat="server"></asp:Label></td>
                </tr>
                </table>



            <td width=53% valign="top">
                <table width=100% border="2px"  style="text-align: center; border-collapse: collapse;">
                    <tr height=50>
                        <td colspan="2"><% if (lblFileName.Text != "")  { %>
<img src ="../../fileUpload/notice/<%= lblFileName.Text %>" width=50%>
<%} else { %> 
<%} %>
<asp:Label ID="lblFileName" runat="server"></asp:Label><asp:Button  ID="btnFile"  runat="server" onclick="btnFile_Click" Text="download" /></td>
                    </tr>
                    <tr>
                        <td width=20% bgcolor="#efefef"><b>사업자등록번호</b></td>
                        <td style="text-align: left;">339-95-00113</td>
                    </tr>
                    <tr>
                        <td bgcolor="#efefef"><b>회사명/대표</b></td>
                        <td style="text-align: left;">이카운트/ 이재연</td>
                        
                    </tr>
                    <tr>
                        <td bgcolor="#efefef"><b>주소</b></td>
                        <td style="text-align: left;">서울특별시 서초구 서초중앙로 230(반포동) 동화반포프라자 5층</td>
                    </tr>
                    <tr>
                        <td bgcolor="#efefef"><b>담당/연락처</b></td>
                        <td style="text-align: left;">윤승관/ 010-1234-5678</td>
                    </tr>
                </table>
            </td>
        </td></tr>
    </table>

    
    
    

    <table width=98% border="1" style="border-collapse: collapse; margin-top: 5px;">
        <tr bgcolor="#efefef" style="text-align: center;">
            <td width=10%><b>품목코드</b></td>
            <td><b>품목명(규격)</b></td>
            <td width=5%><b>수량</b></td>
            <td width=10%><b>단가</b></td>
            <td width=10%><b>공급가액</b></td>
            <td width=10%><b>부가세</b></td>
        </tr>

        <tr>
            <td><asp:Label ID="ts1" runat="server"></asp:Label></td>
            <td><asp:Label ID="cs1" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="qty1" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="price1" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vos1" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vat1" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td><asp:Label ID="ts2" runat="server"></asp:Label></td>
            <td><asp:Label ID="cs2" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="qty2" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="price2" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vos2" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vat2" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td><asp:Label ID="ts3" runat="server"></asp:Label></td>
            <td><asp:Label ID="cs3" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="qty3" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="price3" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vos3" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vat3" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td><asp:Label ID="ts4" runat="server"></asp:Label></td>
            <td><asp:Label ID="cs4" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="qty4" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="price4" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vos4" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vat4" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td><asp:Label ID="ts5" runat="server"></asp:Label></td>
            <td><asp:Label ID="cs5" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="qty5" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="price5" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vos5" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="vat5" runat="server"></asp:Label></td>
        </tr>
    
    </table>
    

    <table width=98% border="3"style="border-collapse: collapse; margin-top:5px;" >
        <tr >
            <td bgcolor="#efefef" width="10%" align=center><b> 수량</b></td>
            <td align=right><p> 375
                    <asp:Label ID="lbllink1" runat="server"></asp:Label>
                </p></td>
            <td bgcolor="#efefef" width="10%" align=center><b> 공급가액</b></td>
            <td align=right><p>9,000,000
                    <asp:Label ID="lbltech1" runat="server"></asp:Label>
                </p></td>
            <td bgcolor="#efefef" width="10%" align=center><b> VAT</b></td>
            <td align=right><p>900,000
                    <asp:Label ID="lblcorp1" runat="server"></asp:Label>
                </p></td>
            <td bgcolor="#efefef" width="10%" align=center style="border-color: red;"><b> 합계</b></td>
            <td align=right><p>10,000,000
                    <asp:Label ID="lblsec1" runat="server"></asp:Label>
                </p></td>
        </tr>
    </table>
    <br>
 
 <table width="100%" border="0">
		<tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/Images/ok_bt.gif" OnClick="btnSubmit_Click" />
                        <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/Images/cancel_bt.gif"
                            OnClick="btnCancel_Click" />
                </td></tr>
            </table>
  
<div style="display: none">
<asp:Label ID="txtlang1" runat="server"></asp:Label>
</div>