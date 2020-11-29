<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeModifyControl.ascx.cs" Inherits="Admin_SCM_NoticeModifyControl" %>

<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script>
<script type= "text/javaScript">
        function sw(form){
            var dic1 = { '고객사1': "충남 당진시", '고객사2': "서울시", '고객사3': "강릉시", '고객사4': "대구시", '고객사5' : "경기 성남시" }
            var dic2 = { '충남 당진시': "010-3890-3590", '서울시': "010-2222-2222", '강릉시': "010-2222-3333", '대구시': "010-2222-4444", '경기 성남시': "010-3333-5555" }
            document.getElementsByClassName('lang1')[0].value =  dic1[document.getElementsByClassName('code1')[0].value];
            document.getElementsByClassName('ps')[0].value =  dic2[document.getElementsByClassName('lang1')[0].value];       
      }
      
      function drug1(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            var dic2 = { '-': "0", '644914600': "765", '644914700': "504", '644900634': "150", '644914421': "389403", '644914580': "800" }
            document.getElementsByClassName('ts1')[0].value =  dic1[document.getElementsByClassName('cs1')[0].value];
            document.getElementsByClassName('price1')[0].value =  dic2[document.getElementsByClassName('ts1')[0].value];       
      }
      
      function drug2(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            var dic2 = { '-': "0", '644914600': "765", '644914700': "504", '644900634': "150", '644914421': "389403", '644914580': "800" }
            document.getElementsByClassName('ts02')[0].value =  dic1[document.getElementsByClassName('cs2')[0].value];
            document.getElementsByClassName('price2')[0].value =  dic2[document.getElementsByClassName('ts02')[0].value];       
      }
      
      function drug3(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            var dic2 = { '-': "0", '644914600': "765", '644914700': "504", '644900634': "150", '644914421': "389403", '644914580': "800" }
            document.getElementsByClassName('ts03')[0].value =  dic1[document.getElementsByClassName('cs3')[0].value];
            document.getElementsByClassName('price3')[0].value =  dic2[document.getElementsByClassName('ts03')[0].value];       
      }
      
      function drug4(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            var dic2 = { '-': "0", '644914600': "765", '644914700': "504", '644900634': "150", '644914421': "389403", '644914580': "800" }
            document.getElementsByClassName('ts04')[0].value =  dic1[document.getElementsByClassName('cs4')[0].value];
            document.getElementsByClassName('price4')[0].value =  dic2[document.getElementsByClassName('ts04')[0].value];       
      }
      
      function drug5(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            var dic2 = { '-': "0", '644914600': "765", '644914700': "504", '644900634': "150", '644914421': "389403", '644914580': "800" }
            document.getElementsByClassName('ts05')[0].value =  dic1[document.getElementsByClassName('cs5')[0].value];
            document.getElementsByClassName('price5')[0].value =  dic2[document.getElementsByClassName('ts05')[0].value];       
      }
      
</script>
   

     <table width=98%>
         <tr><td width=97% height=30px; colspan="2" style="border: 1px solid #d7d7d7; text-align:center; background-color:#E50914; color:white;"><b>발  주  서</b></td></tr>
        <tr><td width=45% valign="top">
            <table width=100% border="2px" style="text-align: center; border-collapse: collapse;">
                <tr>
                    <td height=30px; width=22% bgcolor="#efefef"><b>일련번호</b></td>
                    <td><b><asp:TextBox ID="txtTitle" runat="server"   width="90%" readonly></asp:TextBox></b></td> 
                </tr>
                <tr>
                    <td height=30px; bgcolor="#efefef"><b>고객사</b></td>
                    
                    <td  width="80%" align=center>
                       <asp:DropDownList class="code1" ID="txtcode1" runat="server" width="92%" onChange="sw(this)">
                           <asp:ListItem Value="-">-</asp:ListItem>
                           <asp:ListItem Value="고객사1">고객사1</asp:ListItem>
                           <asp:ListItem Value="고객사2">고객사2</asp:ListItem>
                           <asp:ListItem Value="고객사3">고객사3</asp:ListItem>
                           <asp:ListItem Value="고객사4">고객사4</asp:ListItem>
                           <asp:ListItem Value="고객사5">고객사5</asp:ListItem>
                       </asp:DropDownList>
                    </td>   

                </tr>
                <tr>
                    <td height=56px; bgcolor="#efefef"><b>주소</b></td>
                    <td><b><asp:TextBox class="lang1" ID="txtlang1" runat="server"  height="40px" width="90%"></asp:TextBox></b></td> 
                </tr>   
                <tr>
                    <td height=30px; bgcolor="#efefef"><b>TEL</b></td>
                    <td><b><asp:TextBox class="ps" ID="txtps" runat="server"   width="90%"></asp:TextBox></b></td> 
                </tr>
            
            </table>
                <table width=100% border="2px" style="text-align: center; border-collapse: collapse;  border-top: none;">
                <tr>
                    <td style="text-align: right; border-right: none;" width=50%>납기일자 :</td>
                    <td style="text-align: left; border-left: none;" width=50%><b><asp:TextBox ID="txtDead1" runat="server" Width="50%" class="auto-kal"></asp:TextBox></td>
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
            <td width=20%><b>품목코드</b></td>
            <td width=65%><b>품목명(규격)</b></td>
            <td width=15%><b>수량</b></td>

            
        </tr>

        <tr style="text-align:center;">
            <td height="30px" style=>
            <asp:TextBox class="ts1" ID="txtts1" runat="server" width="80%"></asp:TextBox>
            </td>
            <td><b><asp:DropDownList class="cs1" ID="txtcs1" runat="server"   width="90%" onChange="drug1(this)">
				<asp:ListItem Value="-">-</asp:ListItem>
				<asp:ListItem Value="올멕포스에이치정">올멕포스에이치정</asp:ListItem>
                <asp:ListItem Value="뉴글리아정">뉴글리아정</asp:ListItem>
                <asp:ListItem Value="듀파락시럽">듀파락시럽</asp:ListItem>
                <asp:ListItem Value="인파서프주">인파서프주</asp:ListItem>
                <asp:ListItem Value="제이그렐정">제이그렐정</asp:ListItem>
         </asp:DropDownList></b></td>
            <td style="text-align: center;"><b><asp:TextBox ID="txtqty1" runat="server"   width="80%" style="text-align:right"></asp:TextBox></b></td>
            
        </tr>

        <tr style="text-align:center;">
            <td height="30px" style=>
            <asp:TextBox class="ts02" ID="txtts02" runat="server" width="80%"></asp:TextBox>
            </td>
            <td><b><asp:DropDownList class="cs2" ID="txtcs2" runat="server"   width="90%" onChange="drug2(this)">
            	<asp:ListItem Value="-">-</asp:ListItem>
				<asp:ListItem Value="올멕포스에이치정">올멕포스에이치정</asp:ListItem>
                <asp:ListItem Value="뉴글리아정">뉴글리아정</asp:ListItem>
                <asp:ListItem Value="듀파락시럽">듀파락시럽</asp:ListItem>
                <asp:ListItem Value="인파서프주">인파서프주</asp:ListItem>
                <asp:ListItem Value="제이그렐정">제이그렐정</asp:ListItem>
         </asp:DropDownList></b></td>
            <td style="text-align: center;"><b><asp:TextBox ID="txtqty2" runat="server"   width="80%" style="text-align:right"></asp:TextBox></b></td>
        
        </tr>

        <tr style="text-align:center;">
            <td height="30px" style=>
            <asp:TextBox class="ts03" ID="txtts03" runat="server" width="80%"></asp:TextBox>
            </td>
            <td><b><asp:DropDownList class="cs3" ID="txtcs3" runat="server"   width="90%" onChange="drug3(this)">
				<asp:ListItem Value="-">-</asp:ListItem>
				<asp:ListItem Value="올멕포스에이치정">올멕포스에이치정</asp:ListItem>
                <asp:ListItem Value="뉴글리아정">뉴글리아정</asp:ListItem>
                <asp:ListItem Value="듀파락시럽">듀파락시럽</asp:ListItem>
                <asp:ListItem Value="인파서프주">인파서프주</asp:ListItem>
                <asp:ListItem Value="제이그렐정">제이그렐정</asp:ListItem>
         </asp:DropDownList></b></td>
            <td style="text-align: center;"><b><asp:TextBox ID="txtqty3" runat="server"   width="80%" style="text-align:right"></asp:TextBox></b></td>
            
        </tr>

        <tr style="text-align:center;">
            <td height="30px" style=>
            <asp:TextBox class="ts04" ID="txtts04" runat="server" width="80%"></asp:TextBox>
            </td>
            <td><b><asp:DropDownList class="cs4" ID="txtcs4" runat="server"   width="90%" onChange="drug4(this)">
            	<asp:ListItem Value="-">-</asp:ListItem>
				<asp:ListItem Value="올멕포스에이치정">올멕포스에이치정</asp:ListItem>
                <asp:ListItem Value="뉴글리아정">뉴글리아정</asp:ListItem>
                <asp:ListItem Value="듀파락시럽">듀파락시럽</asp:ListItem>
                <asp:ListItem Value="인파서프주">인파서프주</asp:ListItem>
                <asp:ListItem Value="제이그렐정">제이그렐정</asp:ListItem>
         </asp:DropDownList></b></td>
            <td style="text-align: center;"><b><asp:TextBox ID="txtqty4" runat="server"   width="80%" style="text-align:right"></asp:TextBox></b></td>
            
        </tr>

        <tr style="text-align:center;">
            <td height="30px" style=>
            <asp:TextBox class="ts05" ID="txtts05" runat="server" width="80%"></asp:TextBox>
            </td>
            <td><b><asp:DropDownList class="cs5" ID="txtcs5" runat="server"   width="90%" onChange="drug5(this)">
				<asp:ListItem Value="-">-</asp:ListItem>
				<asp:ListItem Value="올멕포스에이치정">올멕포스에이치정</asp:ListItem>
                <asp:ListItem Value="뉴글리아정">뉴글리아정</asp:ListItem>
                <asp:ListItem Value="듀파락시럽">듀파락시럽</asp:ListItem>
                <asp:ListItem Value="인파서프주">인파서프주</asp:ListItem>
                <asp:ListItem Value="제이그렐정">제이그렐정</asp:ListItem>
         </asp:DropDownList></b></td>
            <td style="text-align: center;"><b><asp:TextBox ID="txtqty5" runat="server"   width="80%" style="text-align:right"></asp:TextBox></b></td>
           
        
        </tr>
    </table>
    
    <br>
 
 <table width="98%" border="0">
		<tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/Images/ok_bt.gif" OnClick="btnSubmit_Click" />
                        <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/Images/cancel_bt.gif"
                            OnClick="btnCancel_Click" />
                </td></tr>
            </table>
  
<div style="display: none">
<asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
 <asp:FileUpload ID="FileUpload1" runat="server" /></asp:FileUpload>
     <asp:Label ID="lblFileName" runat="server" /></asp:FileUpload>
     <asp:TextBox ID="txtvos1" runat="server"   width="80%"></asp:TextBox>
            <asp:TextBox ID="txtvat1" runat="server"   width="80%"></asp:TextBox>
           <asp:TextBox ID="txtvos2" runat="server"   width="80%"></asp:TextBox>
        <asp:TextBox class="price1" ID="txtprice1" runat="server"   width="80%"></asp:TextBox>
        <asp:TextBox class="price2" ID="txtprice2" runat="server"   width="80%"></asp:TextBox>
            <asp:TextBox ID="txtvat2" runat="server"   width="80%"></asp:TextBox>
           <asp:TextBox ID="txtvos3" runat="server"   width="80%"></asp:TextBox>
           <asp:TextBox ID="txtvat3" runat="server"   width="80%"></asp:TextBox>
        <asp:TextBox ID="txtvos4" runat="server"   width="80%"></asp:TextBox>
            <asp:TextBox ID="txtvat4" runat="server"   width="80%"></asp:TextBox>
           <asp:TextBox ID="txtvos5" runat="server"   width="80%"></asp:TextBox>
    <asp:TextBox ID="txtvat5" runat="server"   width="80%"></asp:TextBox>
     <asp:TextBox class="price3" ID="txtprice3" runat="server"   width="80%"></asp:TextBox>
     <asp:TextBox class="price4" ID="txtprice4" runat="server"   width="80%"></asp:TextBox>
      <asp:TextBox class="price5" ID="txtprice5" runat="server"   width="80%"></asp:TextBox>
</div>