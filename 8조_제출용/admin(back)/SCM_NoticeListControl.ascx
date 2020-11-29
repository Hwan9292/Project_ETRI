<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeListControl.ascx.cs" Inherits="Admin_SCM_NoticeListControl" %>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


<table width=98% border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td height="30" colspan=9 align=center bgcolor="#E50914">
            <font color="#ffffff"><b>발  주  서</b></font>
        </td>
    </tr>
    <tr>
        <td height="40" align="center">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="ctlNoticeList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                        Width="100%" Font-Size="11px" CellPadding="4" ForeColor="#333333" PageSize="50"
                        OnPageIndexChanging="ctlNoticeList_PageIndexChanging">

                        <Columns>

                            <asp:BoundField DataField="SCM_NoticeID" HeaderText="번호" ItemStyle-Width="70px"
                                ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="5%"
                                HeaderStyle-HorizontalAlign="Center" />

                            <asp:TemplateField HeaderText="일련번호">
                                <ItemTemplate>
                                    <a href='SCM_NoticeView.aspx?SCM_NoticeID=<%#Eval("SCM_NoticeID") %>'>
                                        <%#FuncCutStrng(Eval("Title"))%>
                                        &nbsp;
                                        <%#FuncNew(Eval("PostDate")) %>
                                    </a>
                                </ItemTemplate>
                                <ItemStyle Width="25%" HorizontalAlign="left" />
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="고객사">
                                <ItemTemplate>
                                    <%#FuncCutStrng(Eval("code1"))%>
                                </ItemTemplate>
                                <ItemStyle Width="45%" HorizontalAlign="left" />
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="납기일자">
                                <ItemTemplate>
                                    <%#FuncCutStrng(Eval("Dead1"))%>
                                </ItemTemplate>
                                <ItemStyle Width="20%" HorizontalAlign="left" />
                            </asp:TemplateField>


                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkAll" runat="server" AutoPostBack="true"
                                        OnCheckedChanged="chkAll_CheckedChanged" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chk" runat="server" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="center" />
                            </asp:TemplateField>

                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#d7d7d7" Font-Bold="True" ForeColor="black" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>

    <tr>
        <td height="1" bgcolor="#cccccc">
        </td>
    </tr>
    <tr>
        <td colspan=3 align=right>

</table>
<table border="0" cellpadding="1" cellspacing="1" align=right style="padding-right:8px; padding-top:5px;">
                <tr>
                    <td height="40" align="right" valign="top">
                         <asp:Panel ID="Panel1" runat="server" Width="100%" DefaultButton="btnSearch">
                             <asp:DropDownList ID="lstField" runat="server" CssClass="DropList">
                                 <asp:ListItem Selected="True" Value="code1">고객사</asp:ListItem> 
                                  <asp:ListItem Value="Title">일련번호</asp:ListItem>
                             </asp:DropDownList></td>                        
                             
                           <td height="40" align="left" valign="top">
                              <asp:TextBox ID="txtQuery" runat="server" CssClass="txt"></asp:TextBox>
                           </td>
                              <td height="40" align="left" valign="top"><nobr><asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/find_bt.gif" OnClick="btnSearch_Click" />
                                 <asp:ImageButton ID="btnWrite" runat="server" ImageUrl="~/Images/write_bt.gif" OnClick="btnWrite_Click" />
                                 <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete_bt.gif" OnClick="btnDelete_Click" />
                                 <!--<asp:ImageButton ID="btnPush" runat="server" ImageUrl="~/Images/Push_bt.gif" OnClick="btnPush_Click" />-->
                              </td>
                         </asp:Panel>
    </tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>