<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeAddControl.ascx.cs" Inherits="Admin_SCM_NoticeAddControl" %>

<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css" media="screen">
    .kalendae .k-days span.closed {
        background:red;
    }
</style>


<table style="border: 1px solid #d7d7d7">
    <asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>
    </td></tr></table>   
    

     <table width=98%>
        <tr><td width=45% valign="top">
            <table width=100% border="2px" style="text-align: center; border-collapse: collapse;">
                <tr>
                    <td width=22% bgcolor="#efefef"><b>일련번호</b></td>
                    <td><b><asp:TextBox ID="txtTitle" runat="server"   width="80%"></asp:TextBox></b></td> 
                </tr>
                <tr>
                    <td bgcolor="#efefef"><b>고객사</b></td>
                    <td><b><asp:TextBox ID="txtcode1" runat="server"   width="80%"></asp:TextBox></b></td> 
                </tr>
                <tr>
                    <td bgcolor="#efefef"><b>참조</b></td>
                    <td><b><asp:TextBox ID="txtlang1" runat="server"   width="80%"></asp:TextBox></b></td> 
                </tr>
                <tr>
                    <td bgcolor="#efefef"><b>TEL</b></td>
                    <td><b><asp:TextBox ID="txtps" runat="server"   width="80%"></asp:TextBox></b></td> 
                </tr>
            
            </table>
                <table width=100% border="2px" style="text-align: center; border-collapse: collapse;  border-top: none;">
                <tr>
                    <td style="text-align: right; border-right: none;" width=50%>납기일자:</td>
                    <td style="text-align: left; border-left: none;" width=50%><b><asp:TextBox ID="txtDead1" runat="server" Width="50%" class="auto-kal"></asp:TextBox></td>
                </tr>
                </table>



            <td width=53% valign="top">
                <table width=100% border="2px"  style="text-align: center; border-collapse: collapse;">
                    <tr height=50>
                        <td colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" /></asp:FileUpload></td>
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
    
    

    
    <table width=98% border="3" bordercolor="black" style="border-collapse: collapse; margin-top: 5px;">
        <tr height=30>
            <td style="border: none;" width="30%" align=center><b>금액 : 일천칠만일천삼백팔십원 정<asp:Label ID="금액" runat="server"></asp:Label> </b>
            </td>
            <td style="border: none;" align="right"><b>($ 10,071,380원) / VAT포함</b>
        
            </td>
        </tr>
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
            <td><b><asp:TextBox ID="txtts1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td><b><asp:TextBox ID="txtcs1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtqty1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtprice1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvos1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvat1" runat="server"   width="80%"></asp:TextBox></b></td>
        </tr>

        <tr>
            <td><b><asp:TextBox ID="txtts2" runat="server"   width="80%"></asp:TextBox></b></td>
            <td><b><asp:TextBox ID="txtcs2" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtqty2" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtprice2" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvos2" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvat2" runat="server"   width="80%"></asp:TextBox></b></td>
        </tr>

        <tr>
            <td><b><asp:TextBox ID="txtts3" runat="server"   width="80%"></asp:TextBox></b></td>
            <td><b><asp:TextBox ID="txtcs3" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtqty3" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtprice3" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvos3" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvat3" runat="server"   width="80%"></asp:TextBox></b></td>
        </tr>

        <tr>
            <td><b><asp:TextBox ID="txtts4" runat="server"   width="80%"></asp:TextBox></b></td>
            <td><b><asp:TextBox ID="txtcs4" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtqty4" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtprice4" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvos4" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvat4" runat="server"   width="80%"></asp:TextBox></b></td>
        </tr>

        <tr>
            <td><b><asp:TextBox ID="txtts5" runat="server"   width="80%"></asp:TextBox></b></td>
            <td><b><asp:TextBox ID="txtcs5" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtqty5" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtprice5" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvos5" runat="server"   width="80%"></asp:TextBox></b></td>
            <td style="text-align: right;"><b><asp:TextBox ID="txtvat5" runat="server"   width="80%"></asp:TextBox></b></td>
        </tr>
    </table>
    
    


    <table width=98% border="3"style="border-collapse: collapse; margin-top:5px;" >
        <tr >
            <td bgcolor="#efefef" width="10%" align=center><b> 수량</b></td>
            <td align=right><b><asp:TextBox ID="txtlink1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td bgcolor="#efefef" width="10%" align=center><b> 공급가액</b></td>
            <td align=right><b><asp:TextBox ID="txttech1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td bgcolor="#efefef" width="10%" align=center><b> VAT</b></td>
            <td align=right><b><asp:TextBox ID="txtcorp1" runat="server"   width="80%"></asp:TextBox></b></td>
            <td bgcolor="#efefef" width="10%" align=center><b> 합계</b></td>
            <td align=right><b><asp:TextBox ID="txtsec1" runat="server"   width="80%"></asp:TextBox></b></td>
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
<asp:FileUpload ID="FileUpload1" runat="server" /></asp:FileUpload>
</div>

   