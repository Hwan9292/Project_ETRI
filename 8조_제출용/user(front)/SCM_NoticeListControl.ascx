<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeListControl.ascx.cs"  Inherits="SCM_NoticeListControl" %>   
<asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>

<link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="js/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script> 
 					 
<SCRIPT LANGUAGE="JavaScript">
<!--
  function viewStyle(obj){
    while(true){
      if((obj=obj.nextSibling).nodeName=="DIV"){
        obj.style.display=(obj.style.display!='block')?'block':'none';
        obj.style.fontSize = "13px";	
        obj.style.color = "#000000";
		//obj.style.backgroundColor = "#ffffff";
		obj.style.width = "100%";		
        break;
      }
    }
  }
 
//-->
</SCRIPT>	 
<table class="best-quality2">
<tr height=50px>
<td valign=bottom width=10%><a href="SCM_NoticeList9.aspx"><span><b>전체</b></span></a></td>  
<td valign=bottom width=10%><a href="SCM_NoticeList.aspx"><span><b>거래처1</b></span></a></td>  
<td valign=bottom width=10%><a href="SCM_NoticeList2.aspx"><span><b>거래처2</b></span></a></td>
<td valign=bottom width=10%><a href="SCM_NoticeList3.aspx"><span><b>거래처3</b></span></a></td>  
<td valign=bottom width=10%><a href="SCM_NoticeList4.aspx"><span><b>거래처4</b></span></a></td>
<td valign=bottom width=10%><a href="SCM_NoticeList5.aspx"><span><b>거래처5</b></span></a></td>  

</tr>
</table>
  <font face='맑은 고딕'>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="ctlNoticeList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                    Width="100%" Font-Size="13px" CellPadding="1" ForeColor="#a29e9e"  PageSize="50"
                                    OnPageIndexChanging="ctlNoticeList_PageIndexChanging">

                                    <Columns>

                                        <asp:BoundField DataField="SCM_NoticeID" HeaderText="번호" ItemStyle-Width="70px" ItemStyle-Height="30px" ItemStyle-HorizontalAlign="Center"  
                                            HeaderStyle-Width="5%" HeaderStyle-height="35px" HeaderStyle-HorizontalAlign="Center" />
											
											
										<asp:TemplateField HeaderText="일련번호">
                                            <ItemTemplate>                                                
                                             &nbsp;<%#FuncCutStrng(Eval("title"))%></font> 											
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" HorizontalAlign="Center"   verticalAlign="top"/>
                                        </asp:TemplateField> 
											
											
											
										<asp:TemplateField HeaderText="고객사">
                                            <ItemTemplate>                                                
                                             &nbsp;<%#FuncCutStrng(Eval("code1"))%></font> 											
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" HorizontalAlign="center"   verticalAlign="top"/>
                                        </asp:TemplateField> 


                                        <asp:TemplateField HeaderText=  "품목명">
                                            <ItemTemplate> 


											
                                                <a href='SCM_NoticeView.aspx?SCM_NoticeID=<%#Eval("SCM_NoticeID") %>' onclick="viewStyle(this);return false">													
												<!a class="fancybox fancybox.iframe"  href='SCM_NoticeView.aspx?SCM_NoticeID=<%#Eval("SCM_NoticeID") %>' onfocus="this.blur()" rel="external"> 
												
                                                    &nbsp;<%#FuncCutStrng(Eval("cs1"))%>....<b>more</b>
                                                    &nbsp;<%#FuncNew(Eval("PostDate")) %></a>
												
												<!--more 누를 시 보이는 표-->
												<DIV style='display:none'>
												 <br>
													<table width=98% border="1" style="border-collapse: collapse; margin-top: 5px; border-color: black;">
														<tr bgcolor="#efefef" style="text-align: center;">
															<td width=10%><b>품목코드</b></td>
															<td><b>품목명(규격)</b></td>
															<td width=5%><b>수량</b></td>
															<td width=10%><b>단가</b></td>
															<td width=10%><b>공급가액</b></td>
															<td width=10%><b>부가세</b></td>
														</tr>

														<tr>
															<td><%#FuncCutStrng(Eval("ts1"))%></td>
															<td><%#FuncCutStrng(Eval("cs1"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("qty1"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("price1"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vos1"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vat1"))%></td>
														</tr>

														<tr>
															<td><%#FuncCutStrng(Eval("ts02"))%></td>
															<td><%#FuncCutStrng(Eval("cs2"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("qty2"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("price2"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vos2"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vat2"))%></td>
														</tr>

														<tr>
															<td><%#FuncCutStrng(Eval("ts03"))%></td>
															<td><%#FuncCutStrng(Eval("cs3"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("qty3"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("price3"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vos3"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vat3"))%></td>
														</tr>

														<tr>
															<td><%#FuncCutStrng(Eval("ts04"))%></td>
															<td><%#FuncCutStrng(Eval("cs4"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("qty4"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("price4"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vos4"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vat4"))%></td>
														</tr>

														<tr>
															<td><%#FuncCutStrng(Eval("ts05"))%></td>
															<td><%#FuncCutStrng(Eval("cs5"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("qty5"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("price5"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vos5"))%></td>
															<td style="text-align: right;"><%#FuncCutStrng(Eval("vat5"))%></td>
														</tr>
													
													</table>
													

													<table width=98% border="3"style="border-collapse: collapse; margin-top:5px; border-color: black;" >
														<tr >
															<td bgcolor="#efefef" width="10%" align=center><b> 수량</b></td>
															<td align=right><%#FuncCutStrng(Eval("link1"))%></td>
															<td bgcolor="#efefef" width="10%" align=center><b> 공급가액</b></td>
															<td align=right><%#FuncCutStrng(Eval("tech1"))%></asp:Label></td>
															<td bgcolor="#efefef" width="10%" align=center><b> VAT</b></td>
															<td align=right><%#FuncCutStrng(Eval("corp1"))%></td>
															<td bgcolor="#efefef" width="10%" align=center"><b> 합계</b></td>
															<td align=right><%#FuncCutStrng(Eval("sec1"))%></p></td>
														</tr>
													</table>
												<br><br>												   
												</div>
													
													
												 </ItemTemplate>
                                            <ItemStyle Width="35%"    HorizontalAlign="left" verticalAlign="top"/>
                                        </asp:TemplateField>  
										
						
										
									<asp:TemplateField HeaderText="납기일자">
                                            <ItemTemplate>                                                 
                                                   <%#FuncCutStrng(Eval("Dead1"))%> 
                                            </ItemTemplate>
                                            <ItemStyle Width="8%" HorizontalAlign="center"   verticalAlign="top"/>
                                        </asp:TemplateField> 
										
	
										
                                    </Columns>
									 <HeaderStyle BackColor="#E50914"  Font-Bold="True" ForeColor="#ffffff" HorizontalAlign="Center"/> 
									<RowStyle BackColor="#cfcdcd" ForeColor="#333333" />
									
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" /> 
                                    <EditRowStyle BackColor="#999999" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#a29e9e" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#000000" />								
									
									
                                </asp:GridView>
                                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
						
						
         </font>	         
  
							
 
 
 <script type="text/javascript" src="js/jquery-latest.js"></script> 
 <link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="js/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script> 

<script type="text/javascript">
	$(document).ready(function() {
		$(".fancybox").fancybox({		
		fitToView	: false,
		width		: '100%',
		height	: '300',
		autoSize	: false,
		autoCenter	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
		 
	});
});
</script> 

 
 		
