<form action="{S_MODCP_ACTION}" method="post">
{IMG_THL}{IMG_THC}<span class="forumlink">{MESSAGE_TITLE}</span>{IMG_THR}<table class="forumlinenb" width="100%" cellspacing="0" cellpadding="0">
<tr><th>&nbsp;</th></tr>
<tr>
	<td class="row1">
		<table width="100%" border="0" cellspacing="0" cellpadding="1">
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td align="center">
				<span class="gen">
					{L_MERGE_TOPIC} &nbsp; {S_TOPIC_SELECT}<br /><br />
					{MESSAGE_TEXT}
				</span>
				<br />
				<br />
				{S_HIDDEN_FIELDS}
				<input class="btn" type="submit" name="confirm" value="{L_YES}" />&nbsp;&nbsp;
				<input class="btn" type="submit" name="cancel" value="{L_NO}" />
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		</table>
	</td>
</tr>
<tr><td class="cat">&nbsp;</td></tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
</form>