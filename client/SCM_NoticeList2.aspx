﻿<%@ Page Language="C#" MasterPageFile="MasterPageSCM_Notice.master" Title="발주서 list" %>

<%@ Register Src="SCM_NoticeListControl.ascx" TagName="SCM_NoticeListControl" TagPrefix="uc1" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
	<uc1:SCM_NoticeListControl ID="NoticeListControl1" code="의약품" runat="server" />
</asp:Content>

 