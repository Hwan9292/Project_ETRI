<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeViewControl.ascx.cs" Inherits="Admin_SCM_NoticeViewControl" %>



     <table width=98%>
        <tr><td width=97% height=30px; colspan="2" style="border: 1px solid #d7d7d7; text-align:center; background-color:#E50914; color:white;"><b>발  주  서</b></td></tr>
        <tr><td width=45% valign="top">
            <table width=100% border="2px" style="text-align: center; border-collapse: collapse;">
                <tr>
                    <td height="30px" width=22% bgcolor="#efefef"><b>일련번호</b></td>
                    <td><asp:Label ID="lblTitle" runat="server"></asp:Label></td> 
                </tr>
                <tr>
                    <td height="30px" bgcolor="#efefef"><b>고객사</b></td>
                    <td><asp:Label ID="lblcode1" runat="server"></asp:Label></td> 
                </tr>
                <tr>
                    <td height="59px" bgcolor="#efefef"><b>주소</b></td>
                    <td><asp:Label ID="lbllang1" runat="server"></asp:Label></td> 
                    
                </tr>
                <tr>
                    <td height="30px" bgcolor="#efefef"><b>TEL</b></td>
                    <td><asp:Label ID="lblps" runat="server"></asp:Label></td> 
                </tr>
              
            </table>
                <table width=100% border="2px" style="text-align: center; border-collapse: collapse;  border-top: none;">
                <tr>
                    <td style="text-align: right; border-right: none;" width=50%>납기일자 : </td>
                    <td style="text-align: left; border-left: none;" width=50%><asp:Label ID="lblDead1" runat="server"></asp:Label></td>
                </tr>
                </table>



            <td width=53% valign="top">
                <table width=100% border="2px"  style="text-align: center; border-collapse: collapse;">
                    <tr height=50>
                        <td colspan="2"><img src ="ECOUNT.jpg" height=100px;></td>
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

    
    
    

    <table width=97.5% border="1" style="border-collapse: collapse; margin-top: 5px;">
        <tr bgcolor="#efefef" style="text-align: center;">
            <td width=10%><b>품목코드</b></td>
            <td><b>품목명(규격)</b></td>
            <td width=5%><b>수량</b></td>
            <td width=10%><b>단가</b></td>
            <td width=10%><b>공급가액</b></td>
            <td width=10%><b>부가세</b></td>
        </tr>

        <tr>
            <td height="30px"><asp:Label ID="lblts1" runat="server"></asp:Label></td>
            <td><asp:Label ID="lblcs1" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblqty1" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblprice1" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvos1" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvat1" runat="server" style="padding-right:4px;"></asp:Label></td>
        </tr>

        <tr>
            <td height="30px"><asp:Label ID="lblts02" runat="server"></asp:Label></td>
            <td><asp:Label ID="lblcs2" runat="server"></asp:Label></td>
            <td  style="text-align: right;"><asp:Label ID="lblqty2" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td  style="text-align: right;"><asp:Label ID="lblprice2" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td  style="text-align: right;"><asp:Label ID="lblvos2" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td  style="text-align: right;"><asp:Label ID="lblvat2" runat="server" style="padding-right:4px;"></asp:Label></td>
        </tr>

        <tr>
            <td height="30px"><asp:Label ID="lblts03" runat="server"></asp:Label></td>
            <td><asp:Label ID="lblcs3" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblqty3" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblprice3" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvos3" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvat3" runat="server" style="padding-right:4px;"></asp:Label></td>
        </tr>

        <tr>
            <td height="30px"><asp:Label ID="lblts04" runat="server"></asp:Label></td>
            <td><asp:Label ID="lblcs4" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblqty4" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblprice4" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvos4" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvat4" runat="server" style="padding-right:4px;"></asp:Label></td>
        </tr>

        <tr>
            <td height="30px"><asp:Label ID="lblts05" runat="server"></asp:Label></td>
            <td><asp:Label ID="lblcs5" runat="server"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblqty5" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblprice5" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvos5" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td style="text-align: right;"><asp:Label ID="lblvat5" runat="server" style="padding-right:4px;"></asp:Label></td>
        </tr>
    
    </table>
    

    <table width=97.7% border="3"style="border-collapse: collapse; margin-top:7px;" >
        <tr >
            <td height="20px" bgcolor="#efefef" width="10%" align=center><b> 수량</b></td>
            <td align=right  width="11%"><asp:Label ID="lbllink1" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td bgcolor="#efefef" width="10%" align=center><b> 공급가액</b></td>
            <td align=right width="12%"><asp:Label ID="lbltech1" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td bgcolor="#efefef" width="10%" align=center><b>VAT</b></td>
            <td align=right width="12%"><asp:Label ID="lblcorp1" runat="server" style="padding-right:4px;"></asp:Label></td>
            <td bgcolor="#efefef" width="10%" style="text-align:center;"><b>합계</b></td>
            <td align=right width="25%"><asp:Label ID="lblsec1" runat="server" style="padding-right:4px;"></asp:Label></td>
        </tr>
    </table>
    <br>
<table width=98% border="0">
      <tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/Images/list_bt.gif" OnClick="btnList_Click" />
                        <asp:ImageButton ID="btnmodify" runat="server" ImageUrl="~/Images/re_bt.gif" OnClick="btnmodify_Click" />
                        <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete_bt.gif" 
                                        OnClick="btnDelete_Click" style="height: 24px" />
                </td></tr>
            </table>
 <table style="border: 1px solid #d7d7d7">
<asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>
</table>   

 <div style="display: none">
<asp:Label ID="lblFileName" runat="server"></asp:Label><asp:Button  ID="btnFile"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName2" runat="server"></asp:Label><asp:Button  ID="btnFile2"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName3" runat="server"></asp:Label><asp:Button  ID="btnFile3"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName4" runat="server"></asp:Label><asp:Button  ID="btnFile4"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName5" runat="server"></asp:Label><asp:Button  ID="btnFile5"  runat="server" onclick="btnFile_Click" Text="download" />
</div>