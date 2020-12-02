<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeModifyControl.ascx.cs" Inherits="Admin_SCM_NoticeModifyControl" %>

<!--캘린더 javascript-->
<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script>

<!--자동입력 설정 -->
<script type= "text/javaScript">
        function sw(form){
            var dic1 = { '고객사1': "충남 당진시", '고객사2': "서울시", '고객사3': "강릉시", '고객사4': "대구시", '고객사5' : "경기 성남시" }
            var dic2 = { '충남 당진시': "010-3890-3590", '서울시': "010-2222-2222", '강릉시': "010-2222-3333", '대구시': "010-2222-4444", '경기 성남시': "010-3333-5555" }
            document.getElementsByClassName('lang1')[0].value =  dic1[document.getElementsByClassName('code1')[0].value];
            document.getElementsByClassName('ps')[0].value =  dic2[document.getElementsByClassName('lang1')[0].value];       
      }
      
      function drug1(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            document.getElementsByClassName('ts1')[0].value =  dic1[document.getElementsByClassName('cs1')[0].value];       
      }
      
      function drug2(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            document.getElementsByClassName('ts02')[0].value =  dic1[document.getElementsByClassName('cs2')[0].value];
      }
      
      function drug3(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            document.getElementsByClassName('ts03')[0].value =  dic1[document.getElementsByClassName('cs3')[0].value];
      }
      
      function drug4(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            document.getElementsByClassName('ts04')[0].value =  dic1[document.getElementsByClassName('cs4')[0].value];      
      }
      
      function drug5(form){
            var dic1 = { '-': "-", '올멕포스에이치정': "644914600", '뉴글리아정': "644914700", '듀파락시럽': "644900634", '인파서프주': "644914421", '제이그렐정' : "644914580" }
            document.getElementsByClassName('ts05')[0].value =  dic1[document.getElementsByClassName('cs5')[0].value];    
      }
      
      function total1(){
     qty_1 = document.getElementsByClassName('qty1')[0].value;
     price_1 = document.getElementsByClassName('price1')[0].value;
     document.getElementsByClassName('vos1')[0].value = qty_1 * price_1;
     document.getElementsByClassName('vat1')[0].value = parseInt(qty_1 * price_1 * 1.1);
    
     vat_1 = document.getElementsByClassName('vat1')[0].value;
     document.getElementsByClassName('vat1')[0].value = vat_1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     
     }
     
     function total2(){
     qty_2 = document.getElementsByClassName('qty2')[0].value;
     price_2 = document.getElementsByClassName('price2')[0].value;
     document.getElementsByClassName('vos2')[0].value = qty_2 * price_2;
     document.getElementsByClassName('vat2')[0].value = parseInt(qty_2* price_2 * 1.1);

     vat_2 = document.getElementsByClassName('vat2')[0].value;
     document.getElementsByClassName('vat2')[0].value = vat_2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }
     
     function total3(){
     qty_3 = document.getElementsByClassName('qty3')[0].value;
     price_3 = document.getElementsByClassName('price3')[0].value;
     document.getElementsByClassName('vos3')[0].value = qty_3 * price_3;
     document.getElementsByClassName('vat3')[0].value = parseInt(qty_3 * price_3 * 1.1);

     vat_3 = document.getElementsByClassName('vat3')[0].value;
     document.getElementsByClassName('vat3')[0].value = vat_3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }
     
     function total4(){
     qty_4 = document.getElementsByClassName('qty4')[0].value;
     price_4 = document.getElementsByClassName('price4')[0].value;
     document.getElementsByClassName('vos4')[0].value = qty_4 * price_4;
     document.getElementsByClassName('vat4')[0].value = parseInt(qty_4 * price_4 * 1.1);
     vat_4 = document.getElementsByClassName('vat4')[0].value;
     document.getElementsByClassName('vat4')[0].value = vat_4.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }
     
     function total5(){
     qty_5 = document.getElementsByClassName('qty5')[0].value;
     price_5 = document.getElementsByClassName('price5')[0].value;
     document.getElementsByClassName('vos5')[0].value = qty_5 * price_5;
     document.getElementsByClassName('vat5')[0].value = parseInt(qty_5 * price_5 * 1.1);
     vat_5 = document.getElementsByClassName('vat5')[0].value;
     document.getElementsByClassName('vat5')[0].value = vat_5.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }

     
     function sum_vos() {
    var vos1= document.getElementsByClassName('vos1')[0].value;
    var vos2= document.getElementsByClassName('vos2')[0].value;
    var vos3= document.getElementsByClassName('vos3')[0].value;
    var vos4= document.getElementsByClassName('vos4')[0].value;
    var vos5= document.getElementsByClassName('vos5')[0].value;
    var vos_1 = Number(vos1);
    var vos_2 = Number(vos2);
    var vos_3 = Number(vos3);
    var vos_4 = Number(vos4);
    var vos_5 = Number(vos5);
     document.getElementsByClassName('tech1')[0].value = vos_1 + vos_2 + vos_3 + vos_4 + vos_5 ;
     
    var tech1 = document.getElementsByClassName('tech1')[0].value;
     var corp1 = parseInt(tech1 * 0.1);
     var sec1 = parseInt(tech1 * 1.1);
    
    document.getElementsByClassName('tech1')[0].value = tech1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    document.getElementsByClassName('corp1')[0].value = corp1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    document.getElementsByClassName('sec1')[0].value = sec1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     }
</script>

<!-- Main -->
     <table width=98%>
         <!-- 타이틀 -->
         <tr><td width=97% height=30px; colspan="2" style="border: 1px solid #d7d7d7; text-align:center; background-color:#E50914; color:white;"><b>발  주  서</b></td></tr>
         <!-- 고객사 정보 (좌측상단)-->
        <tr><td width=45% valign="top">
            <table width=100% border="2px" style="text-align: center; border-collapse: collapse;">
                <tr> <!--일련번호 칸-->
                    <td height=30px; width=22% bgcolor="#efefef"><b>일련번호</b></td>
                    <td><b><asp:TextBox ID="txtTitle" runat="server"   width="90%" readonly></asp:TextBox></b></td> 
                </tr>
                <tr> <!--고객사 칸-->
                    <td height=30px; bgcolor="#efefef"><b>고객사</b></td>
                    
                    <td  width="80%" align=center> <!-- DB 연결 -->
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
                <tr> <!-- 주소 칸 -->
                    <td height=56px; bgcolor="#efefef"><b>주소</b></td>
                    <td><b><asp:TextBox class="lang1" ID="txtlang1" runat="server"  height="40px" width="90%"></asp:TextBox></b></td> 
                </tr>   
                <tr> <!-- TEL 칸 -->
                    <td height=30px; bgcolor="#efefef"><b>TEL</b></td>
                    <td><b><asp:TextBox class="ps" ID="txtps" runat="server"   width="90%"></asp:TextBox></b></td> 
                </tr>
            
            </table>
            <!-- 납기일자 칸 -->
                <table width=100% border="2px" style="text-align: center; border-collapse: collapse;  border-top: none;">
                <tr>
                    <td style="text-align: right; border-right: none;" width=50%>납기일자 :</td>
                    <td style="text-align: left; border-left: none;" width=50%><b><asp:TextBox ID="txtDead1" runat="server" Width="50%" class="auto-kal"></asp:TextBox></td>
                </tr>
                </table>


<!-- 자사정보 (우측상단) -->
            <td width=53% valign="top">
                <table width=100% border="2px"  style="text-align: center; border-collapse: collapse;">
                    <tr height=50>
                        <td colspan="2"><img src ="ECOUNT.jpg" height=100px;></td>
                    </tr>
                    <tr> <!-- 사업자등록번호 -->
                        <td width=20% bgcolor="#efefef"><b>사업자등록번호</b></td>
                        <td style="text-align: left;">339-95-00113</td>
                    </tr>
                    <tr> <!-- 회사명/대표 -->
                        <td bgcolor="#efefef"><b>회사명/대표</b></td>
                        <td style="text-align: left;">이카운트/ 이재연</td>
                        
                    </tr>
                    <tr> <!-- 회사 주소 -->
                        <td bgcolor="#efefef"><b>주소</b></td>
                        <td style="text-align: left;">서울특별시 서초구 서초중앙로 230(반포동) 동화반포프라자 5층</td>
                    </tr>
                    <tr> <!-- 담당자 연락처 -->
                        <td bgcolor="#efefef"><b>담당/연락처</b></td>
                        <td style="text-align: left;">윤승관/ 010-1234-5678</td>
                    </tr>
                </table>
            </td>
        </td></tr>
    </table>


<!-- 합계금액 -->
    <!-- <table width=97.5% border="3" bordercolor="black" style="border-collapse: collapse; margin-top: 5px;">
        <tr height=30>
            <td style="border: none;" width="30%" align=center><b>금액 : 일천칠만일천삼백팔십원 정<asp:Label ID="금액" runat="server"></asp:Label> </b>
            </td>
            <td style="border: none;" align="right"><b>($ 10,071,380원) / VAT포함</b>
                <asp:Label ID="none" runat="server"></asp:Label>
            </td>
        </tr>
    </table> -->
    
    
    
    
 
<!-- 주문목록 -->
    <table width=97.5% border="1" style="border-collapse: collapse; margin-top: 5px;">
        <tr bgcolor="#efefef" style="text-align: center;">
          <td width=14%><b>품목코드</b></td>
            <td width=46%><b>품목명(규격)</b></td>
            <td width=10%><b>수량</b></td>
            <td width=10%><b>단가</b></td>
            <td width=10%><b>공급가액</b></td>
            <td width=10%><b>합계</b></td>
        </tr>

        
<!-- 첫번째 줄 -->
        <tr style="text-align:center;">
            <td height="30px" style=>
            <asp:TextBox class="ts1" ID="txtts1" runat="server" width="80%"></asp:TextBox> <!-- 품목코드 -->
            </td>
            <!-- 품목명 -->
            <td><b><asp:DropDownList class="cs1" ID="txtcs1" runat="server"   width="90%" onChange="drug1(this)"> 
            <asp:ListItem Value="-">-</asp:ListItem>
            <asp:ListItem Value="올멕포스에이치정">올멕포스에이치정</asp:ListItem>
                <asp:ListItem Value="뉴글리아정">뉴글리아정</asp:ListItem>
                <asp:ListItem Value="듀파락시럽">듀파락시럽</asp:ListItem>
                <asp:ListItem Value="인파서프주">인파서프주</asp:ListItem>
                <asp:ListItem Value="제이그렐정">제이그렐정</asp:ListItem>
         </asp:DropDownList></b></td>
            <td style="text-align: center;"><b><asp:TextBox ID="txtqty1" runat="server"   width="80%" style="text-align:right"></asp:TextBox></b></td> <!-- 수량 -->
            <td style="text-align: right;"><asp:TextBox ID="txtprice1" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 단가 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvos1" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 공급가액 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvat1" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 부가세 -->
        </tr>
<!-- 두번째 줄 -->
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
             <td style="text-align: right;"><asp:TextBox ID="txtprice2" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 단가 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvos2" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 공급가액 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvat2" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 부가세 -->
        </tr>
<!-- 세번째 줄 -->
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
             <td style="text-align: right;"><asp:TextBox ID="txtprice3" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 단가 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvos3" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 공급가액 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvat3" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 부가세 -->
        </tr>
<!-- 네번째 줄 -->
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
             <td style="text-align: right;"><asp:TextBox ID="txtprice4" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 단가 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvos4" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 공급가액 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvat4" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 부가세 -->
        </tr>
<!-- 다섯번째 줄 -->
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
            <td style="text-align: right;"><asp:TextBox ID="txtprice5" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 단가 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvos5" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 공급가액 -->
            <td style="text-align: right;"><asp:TextBox ID="txtvat5" runat="server" style="padding-right:4px;"></asp:TextBox></td> <!-- 부가세 -->
        
        </tr>
    </table>

      <!-- 합계 (하단) -->
    <table width=97.7% border="3"style="border-collapse: collapse; margin-top:7px;" >
        <tr >
            <td bgcolor="#efefef" width="10%" align=center><b> 공급가액</b></td>
            <td align=right width="12%"><asp:TextBox ID="txttech1" runat="server" style="padding-right:4px;"></asp:TextBox></td>
            <td bgcolor="#efefef" width="10%" align=center><b>VAT</b></td>
            <td align=right width="12%"><asp:TextBox ID="txtcorp1" runat="server" style="padding-right:4px;"></asp:TextBox></td>
            <td bgcolor="#efefef" width="10%" style="text-align:center;"><b>합계</b></td>
            <td align=right width="25%"><asp:TextBox ID="txtsec1" runat="server" style="padding-right:4px;"></asp:TextBox></td>
        </tr>
    </table>
 <!-- 하단 버튼 -->
 <table width="98%" border="0">
      <tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/Images/ok_bt.gif" OnClick="btnSubmit_Click" /><!-- 확인 버튼 -->
                        <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/Images/cancel_bt.gif"
                            OnClick="btnCancel_Click" /> <!-- 취소 버튼 -->
                </td></tr>
            </table>
  




  
<div style="display: none">
<asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
 <asp:FileUpload ID="FileUpload1" runat="server" /></asp:FileUpload>
     <asp:Label ID="lblFileName" runat="server" /></asp:FileUpload>

</div>