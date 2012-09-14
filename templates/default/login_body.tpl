<!-- INCLUDE overall_header.tpl -->

<form action="{S_LOGIN_ACTION}" method="post">

{IMG_THL}{IMG_THC}<span class="forumlink">{L_ENTER_PASSWORD}</span>{IMG_THR}<table class="forumlinenb" width="100%" cellspacing="0" cellpadding="0">
<tr>
	<td class="row1g row-center" width="150" style="padding: 30px; width: 150px;"><img src="images/icy_phoenix_small.png" alt="" /></td>
	<td class="row1g" style="padding: 30px;">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td align="left" width="120" nowrap="nowrap" style="width: 120px; padding-bottom: 10px;"><span class="gen">{L_USERNAME}:</span></td>
			<td align="left" style="padding-bottom: 10px;"><input type="text" name="username" class="post" size="32" maxlength="40" value="{USERNAME}" /></td>
		</tr>
		<tr>
			<td align="left" nowrap="nowrap"><span class="gen">{L_PASSWORD}:</span></td>
			<td align="left"><input type="password" name="password" class="post" size="32" maxlength="32" /></td>
		</tr>
		<tr>
			<td align="left">&nbsp;</td>
			<td align="left" nowrap="nowrap" style="padding-bottom: 20px;">
				<span class="gensmall">
					<a href="{U_REGISTER}" class="gensmall">{L_REGISTER}</a>&nbsp;&#8226;&nbsp;<a href="{U_SEND_PASSWORD}" class="gensmall">{L_SEND_PASSWORD}</a><!-- IF S_SWITCH_RESEND_ACTIVATION_EMAIL -->&nbsp;&#8226;&nbsp;<a href="{U_RESEND_ACTIVATION_EMAIL}" class="gensmall">{L_RESEND_ACTIVATION_EMAIL}</a><!-- ENDIF -->
				</span>
			</td>
		</tr>
		<!-- BEGIN switch_login_type -->
		<tr>
			<td align="left">&nbsp;</td>
			<td align="left" nowrap="nowrap"><span class="genmed">{L_STATUS}:&nbsp;&nbsp;<input type="radio" name="online_status" value="default" checked="checked" />&nbsp;{L_DEFAULT}&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="online_status" value="hidden" />&nbsp;{L_HIDDEN}&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="online_status" value="visible" />&nbsp;{L_VISIBLE}&nbsp;&nbsp;</span><br /><br /></td>
		</tr>
		<!-- END switch_login_type -->
		<!-- BEGIN switch_allow_autologin -->
		<tr>
			<td align="left">&nbsp;</td>
			<td align="left" nowrap="nowrap" style="padding-bottom: 10px;"><span class="genmed">&nbsp;<input type="checkbox" name="autologin" checked="checked" />&nbsp;{L_AUTOLOGIN}</span></td>
		</tr>
		<!-- END switch_allow_autologin -->
		<tr>
			<td align="left">&nbsp;</td>
			<td align="left" style="padding-bottom: 10px;">{S_HIDDEN_FIELDS}<input type="submit" name="login" class="btn-primary" value="{L_LOGIN}" /></td>
		</tr>
		</table>
	</td>
</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}

</form>

<!-- INCLUDE overall_footer.tpl -->