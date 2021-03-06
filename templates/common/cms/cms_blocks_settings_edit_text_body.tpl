<!-- INCLUDE ../common/cms/page_header.tpl -->

<table class="forumline">
<tr>
	<td class="row1 row-center c-r-l" width="100" valign="middle"><img src="{IP_ROOT_PATH}templates/common/images/cms/cms_blocks.png" alt="{L_BLOCKS_CREATION_02}" title="{L_BLOCKS_CREATION_02}" /></td>
	<td class="row1 c-r-r" valign="top"><h1>{L_BLOCKS_CREATION_02}</h1><span class="genmed">{L_BLOCKS_TEXT}</span></td>
</tr>
</table>

<!-- BEGIN block_preview -->
<table class="forumline">
<tr><td class="row-header"><span>{L_PREVIEW}</span></td></tr>
<tr><td class="row-post tw100pct"><div class="post-text-container"><div class="post-text post-text-hide-flow">{block_preview.PREVIEW_MESSAGE}</div></div></td></tr>
<tr><td class="spaceRow"><img src="{SPACER}" width="1" height="3" alt="" /></td></tr>
<tr><td class="cat tdalignc">&nbsp;</td></tr>
</table>
<!-- END block_preview -->

<form method="post" action="{S_BLOCKS_ACTION}" name="post">
<table class="forumline cells-no-rounded" width="100%" cellspacing="0" cellpadding="0">
<tr><th colspan="2">{L_EDIT_BLOCK}</th></tr>
<tr>
	<td class="row1">
		<b>{L_B_CONTENT}</b><br /><br /><br />
		<table><tr><td class="tdalignc tvalignm"><br />{BBCB_SMILEYS_MG}</td></tr></table>
	</td>
	<td class="row2" valign="top" align="left">
		{BBCB_MG}
		<textarea name="message" rows="15" cols="35" style="width: 98%;" tabindex="3" class="post" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);">{CONTENT}</textarea>
	</td>
</tr>
<tr>
	<td class="row1 tdalignr"><b>{L_B_TYPE}</b></td>
	<td class="row2">
		<input type="radio" name="type" value="1" {BBCODE} /> {L_B_BBCODE}&nbsp;&nbsp;
		<input type="radio" name="type" value="0" {HTML} /> {L_B_HTML}
	</td>
</tr>
<tr><td class="spaceRow" colspan="2"><img src="{SPACER}" width="1" height="3" alt="" /></td></tr>
<tr>
	<td class="cat tdalignc" colspan="2">
		{S_HIDDEN_FIELDS}
		<input type="submit" name="save" class="mainoption" value="{L_SUBMIT}" />&nbsp;&nbsp;
		<input type="submit" name="preview" class="liteoption" value="{L_PREVIEW}" />&nbsp;&nbsp;
		<input type="reset" name="reset" class="liteoption" value="{L_RESET}" />
	</td>
</tr>
</table>
</form>

<!-- INCLUDE ../common/cms/page_footer.tpl -->