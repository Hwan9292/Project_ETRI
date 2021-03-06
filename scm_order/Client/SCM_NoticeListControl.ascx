﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeListControl.ascx.cs"  Inherits="SCM_NoticeListControl" %>   
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

  <font face='맑은 고딕'>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="ctlNoticeList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                    Width="100%" Font-Size="13px" CellPadding="1" ForeColor="#a29e9e"  PageSize="50"
                                    OnPageIndexChanging="ctlNoticeList_PageIndexChanging">

                                    <Columns>

                                        <asp:BoundField DataField="SCM_NoticeID" HeaderText="No" ItemStyle-Width="70px" ItemStyle-Height="30px" ItemStyle-HorizontalAlign="Center"  
                                            HeaderStyle-Width="5%" HeaderStyle-height="35px" HeaderStyle-HorizontalAlign="Center" />
											
											
											<asp:TemplateField HeaderText="업종">
                                            <ItemTemplate>                                                
                                             &nbsp;<%#FuncCutStrng(Eval("code1"))%></font> 											
                                            </ItemTemplate>
                                            <ItemStyle Width="5%" HorizontalAlign="Center"   verticalAlign="top"/>
                                        </asp:TemplateField> 
											
											
											
											<asp:TemplateField HeaderText="고객사">
                                            <ItemTemplate>                                                
                                             &nbsp;<%#FuncCutStrng(Eval("ts1"))%></font> 											
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" HorizontalAlign="left"   verticalAlign="top"/>
                                        </asp:TemplateField> 


                                        <asp:TemplateField HeaderText=  "프로젝트 명">
                                            <ItemTemplate> 


											
                                                <a href='SCM_NoticeView.aspx?SCM_NoticeID=<%#Eval("SCM_NoticeID") %>' onclick="viewStyle(this);return false">													
												<!a class="fancybox fancybox.iframe"  href='SCM_NoticeView.aspx?SCM_NoticeID=<%#Eval("SCM_NoticeID") %>' onfocus="this.blur()" rel="external"> 
												
                                                    &nbsp;<%#FuncCutStrng(Eval("title"))%>....<b>more</b>
                                                    &nbsp;<%#FuncNew(Eval("PostDate")) %></a>
												 
												<DIV style='display:none'>
												 <br>
												<img src='../../fileUpload/notice/<%#FuncCutStrng(Eval("UpFileName"))%>' width=100%>													
												    <br><br>
												   <%#FuncLineReturn(Eval("cs1"))%> 	
														<br><br>												   
													</div>
													
													
												 </ItemTemplate>
                                            <ItemStyle Width="35%"    HorizontalAlign="left" verticalAlign="top"/>
                                        </asp:TemplateField>  
										
										
										
										<asp:TemplateField HeaderText="언어">
                                            <ItemTemplate> 
											
                                                   <%#FuncCutStrng(Eval("lang1"))%> 
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" HorizontalAlign="center"   verticalAlign="top"/>
                                        </asp:TemplateField>  
										
										<asp:TemplateField HeaderText="업무">
                                            <ItemTemplate>                                                 
                                                   <%#FuncCutStrng(Eval("sec1"))%> 
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" HorizontalAlign="center"   verticalAlign="top"/>
                                        </asp:TemplateField> 
										
										<asp:TemplateField HeaderText="기간">
                                            <ItemTemplate>                                                 
                                                   <%#FuncCutStrng(Eval("link1"))%> 
                                            </ItemTemplate>
                                            <ItemStyle Width="8%" HorizontalAlign="center"   verticalAlign="top"/>
                                        </asp:TemplateField> 
										
										
										
									<asp:TemplateField HeaderText="마감">
                                            <ItemTemplate>                                                 
                                                   <%#FuncCutStrng(Eval("Dead1"))%> 
                                            </ItemTemplate>
                                            <ItemStyle Width="8%" HorizontalAlign="center"   verticalAlign="top"/>
                                        </asp:TemplateField> 
										
										<asp:TemplateField HeaderText="진행">
                                            <ItemTemplate> 
                                            &nbsp;<font color="<%#FuncCutStrng(Eval("Color"))%>"><b><%#FuncCutStrng(Eval("progress1"))%></b></font>											   
                                            </ItemTemplate>
                                            <ItemStyle Width="5%" HorizontalAlign="center" verticalAlign="top"/>
                                        </asp:TemplateField> 
										
										
									
										 


										
                                    </Columns>
									 <HeaderStyle BackColor="#467e99"  Font-Bold="True" ForeColor="#ffffff" HorizontalAlign="Center"/> 
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

 
 		
