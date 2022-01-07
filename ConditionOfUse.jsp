<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
<%@ page import="com.archway.core.bean.*" buffer="0kb" session="true"%>
<HTML>
<HEAD>
<STYLE>
	.normal				{font-family:Verdana; font-size:16px;}
	.pageHeader			{font-family:Verdana; font-size:24px; font-weight:bold;}
</STYLE>

</HEAD>
<BODY class=".normal">

<%
	AWCClientBean lobjClientBean = (AWCClientBean)session.getAttribute("CLIENTBEAN"); 
	
%>

<table width="100%" class="normal">
	<tr>
		<td colspan="2"><br><b>Condition of Use</b></td>
	</tr>
	<tr>
		<td>&nbsp;<br></td>
	</tr>
	
	<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">1.&nbsp;</td>
				<td align="justify">
					BY ENTERING THIS SITE YOU ACKNOWLEDGE AND AGREE TO ALL TERMS AND CONDITIONS STATED HEREIN. 
					IF YOU DO NOT AGREE TO THESE TERMS, DO NOT USE THIS SITE 
				</td>
			</tr>
			<tr align="justify" class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">2.&nbsp;</td>
				<td align="justify">
					BY ENTERING THIS SITE YOU ACKNOWLEDGE AND AGREE THAT THIS SITE IS INTENDED FOR VIEWING WITHIN 
					THE UNITED STATES ONLY AND WILL ONLY BE CONSTRUED AND EVALUATED ACCORDING TO UNITED STATES LAW. 
					IF YOU USE THIS SITE FROM OTHER LOCATIONS YOU ARE RESPONSIBLE FOR COMPLIANCE WITH ANY AND ALL 
					APPLICABLE LOCAL LAWS. <%= lobjClientBean.getStrClientName() %> MAKES NO REPRESENTATIONS THAT THE MATERIALS CONTAINED WITHIN 
					THIS SITE ARE APPROPRIATE FOR LOCATIONS OUTSIDE THE UNITED STATES.
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">3.&nbsp;</td>
				<td align="justify">
					<%= lobjClientBean.getStrClientName() %> is the copyright owner of everything on this site and no portion of this site, 
					including but not limited to the text, images, audio or video, may be used in any manner, 
					or for any purpose, without <%= lobjClientBean.getStrClientName() %> express written permission, except as provided 
					for herein. Without in any way waiving any of the foregoing rights, you may view and print 
					one copy of the material on this site for your local use, provided you do not delete or 
					change any copyright, trademark or other proprietary notices, and provided further that 
					you do not reproduce or duplicate any of the material. Modification or use of the material 
					on this site for any other purpose violates <%= lobjClientBean.getStrClientName() %> legal rights. Except for copies 
					printed for local use, and not for resale, no part of this information may be reproduced, 
					stored in a retrieval system, or transmitted without the prior written permission of <%= lobjClientBean.getStrClientName() %>. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">4.&nbsp;</td>
				<td align="justify">
					By entering this site you acknowledge and agree that your use is at your own risk and that 
					none of the parties involved in creating, producing, or delivering this site is liable for 
					any direct, incidental, consequential, indirect, or punitive damages, or any other losses, 
					costs, or expenses or any kind (including legal fees, expert fees, or other disbursements) 
					which may arise, directly or indirectly, through the access to, use of, or browsing of this 
					site or through your downloading of any materials, data, text, images, video or audio from 
					this site, including but not limited to anything caused by any viruses, bugs, human action 
					or inaction or any computer system, phone line, hardware, software or program malfunctions, 
					or any other errors, failures or delays in computer transmissions or network connections. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">5.&nbsp;</td>
				<td align="justify">
					Although the specifications, features, illustrations, products and other information contained 
					in the site are based upon up-to-date information, and while <%= lobjClientBean.getStrClientName() %> makes all reasonable 
					efforts to insure that all material, information and graphics on this site is correct, accuracy 
					cannot be guaranteed and <%= lobjClientBean.getStrClientName() %> makes no warranties or representations as to its accuracy. 
					This site, and all information and materials contained herein, is provided to you
					 "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, 
					 THE IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">6.&nbsp;</td>
				<td align="justify">
					This web site can be accessed through links on world wide web sites. <%= lobjClientBean.getStrClientName() %> does not have 
					responsibility for the content, availability, operation or performance of other web sites, from 
					which this web site may be accessed. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">7.&nbsp;</td>
				<td align="justify">
					Do not post on this site, or transmit to this site, any pornographic, obscene, profane, defamatory, 
					libelous, threatening, unlawful or other material which could constitute or encourage conduct that
					would be considered a criminal offense, give rise to civil liability, or otherwise violate any law 
					or regulation. Notwithstanding the fact that <%= lobjClientBean.getStrClientName() %> or other parties involved in creating, producing, 
					or delivering this site, may monitor or review transmissions, <%= lobjClientBean.getStrClientName() %> and all parties involved in 
					creating, producing, or delivering this site, assume no responsibility or liability which may arise from 
					the content thereof, including but not limited to claims for defamation, libel, slander, obscenity, 
					pornography, profanity, or misrepresentation. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">8.&nbsp;</td>
				<td align="justify">
					By entering this site you acknowledge and agree that any communication or material you transmit to this 
					site or <%= lobjClientBean.getStrClientName() %>, in any manner and for any reason, will not be treated as confidential or proprietary. 
					Furthermore, you acknowledge and agree that <%= lobjClientBean.getStrClientName() %> may use any ideas, concepts, techniques, procedures, 
					methods, systems, designs, plans, charts, or other materials you transmit to <%= lobjClientBean.getStrClientName() %> anywhere, anytime, 
					and for any reason whatsoever 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">9.&nbsp;</td>
				<td align="justify">
					By entering this site you acknowledge and agree that any name, logo, trademark, or service mark contained 
					on this Site is owned or licensed by <%= lobjClientBean.getStrClientName() %> and may not be used by you without prior written approval. 
					<%= lobjClientBean.getStrClientName() %> will aggressively enforce its intellectual property rights to the full extent of the law. 
					Sound, graphics, charts, information, or images of places or people are either property of <%= lobjClientBean.getStrClientName() %> 
					or used on this site with permission. Your use of any of these materials is prohibited unless specifically 
					provided for on the site. Any unauthorized use of these materials may subject you to penalties or damages, 
					including but not limited to those related to violation of trademarks, copyrights, privacy, 
					and publicity rights 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">10.&nbsp;</td>
				<td align="justify">
					Although this site can be accessed from other sites, <%= lobjClientBean.getStrClientName() %> is not, directly or indirectly, 
					implying any approval, association, sponsorship, endorsement, or affiliation with the linked site, 
					unless specifically stated therein. By entering this site you acknowledge and agree that <%= lobjClientBean.getStrClientName() %> 
					has not reviewed all the sites linked to this site and is not responsible for the content of 
					any off-site pages or any other site linked to this site. Your linking to any other off-site pages or 
					other sites is at your own risk.  
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">11.&nbsp;</td>
				<td align="justify">
					<%= lobjClientBean.getStrClientName() %> reserves the right to revise this Conditions of Use at any time and for any reason and 
					reserves the right to make changes at any time, without notice or obligation, to any of the information 
					contained on this site, including but not limited to materials or other product or service features. 
					By entering this site you acknowledge and agree that you shall be bound by any such revisions. 
					We suggest periodically visiting this page of the site to review these conditions of use. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">12.&nbsp;</td>
				<td align="justify">
					You are responsible for maintaining the confidentiality of the Username and Password, and you are 
					fully responsible for all activities that occur under your Username or Password. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">13.&nbsp;</td>
				<td align="justify">
					The requesting URLs the machine originating the request and the time of the request are logged for 
					access statistics and security purposes. Use of this web site constitutes consent to such monitoring. 
					This web site may be unavailable from time to time due to mechanical, telecommunication, software, 
					hardware and third party vendor failures. <%= lobjClientBean.getStrClientName() %> cannot predict or control when such downtime 
					may occur and cannot control the duration of such downtime. 
				</td>
			</tr>
			<tr class="trEmptyRow">
				<td class="tdEmptyCell">&nbsp;&nbsp;</td>
			</tr>
			<tr class="tdDisplayTextNoAlign">
				<td align="right" valign="top">14.&nbsp;</td>
				<td align="justify">
					IN NO EVENT WILL <%= lobjClientBean.getStrClientName() %> BE LIABLE FOR DAMAGES OF ANY KIND, INCLUDING WITHOUT LIMITATION ANY SPECIAL, 
					INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES EVEN IF <%= lobjClientBean.getStrClientName() %> HAS BEEN ADVISED OF THE POSSIBILITY OF 
					SUCH DAMAGES. 
				</td>
			</tr>
	
</table>
</body>
		