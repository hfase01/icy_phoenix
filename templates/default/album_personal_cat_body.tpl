<!-- INCLUDE overall_header.tpl -->

<form method="post" name="acp" action="{S_ALBUM_ACTION}">
<table class="forumline" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td class="row1" width="100%"><b>&nbsp;&nbsp;&nbsp;<a href="{U_INDEX}" class="nav">{L_INDEX}</a> {ALBUM_NAVIGATION_ARROW} <a href="{U_ALBUM}" class="nav">{L_ALBUM}</a> {ALBUM_NAVIGATION_ARROW} <a href="{U_PERSONAL_ALBUM}" class="nav">{L_PERSONAL_ALBUM}</a> {ALBUM_NAVIGATION_ARROW} <a href="{U_PERSONAL_CAT_ADMIN}" class="nav">{L_PERSONAL_CAT_ADMIN}</a></b></td>
</tr>
</table>

<table class="forumline" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr><th colspan="2">{L_PERSONAL_CAT_ADMIN}</th></tr>
<tr>
	<td class="row1" colspan="2"><br />
		<table class="forumline" width="100%" cellpadding="0" cellspacing="0" border="0">

		<tr>
			<th colspan="{HEADER_INC_SPAN}" width="75%%">{L_ALBUM_TITLE}</th>
			<th colspan="3" width="25%">{L_ALBUM_ACTION}</th>
		</tr>

		<!-- BEGIN catrow -->
			<!-- BEGIN cathead -->
		<tr>
			<!-- BEGIN inc -->
			<td class="row2" rowspan="{catrow.cathead.inc.ROWSPAN}" width="46"><img src="{SPACER}" width="1" height="3" alt="" /></td>
			<!-- END inc -->
			<td class="{catrow.cathead.CLASS_CATLEFT}" colspan="{catrow.cathead.INC_SPAN}" {catrow.cathead.WIDTH}><span class="cattitle"><b><a href="{catrow.cathead.U_VIEWCAT}" class="cattitle">{catrow.cathead.CAT_TITLE}</a></b></span></td>
			<td class="{catrow.cathead.CLASS_CATMIDDLE}" align="center" valign="middle"><span class="gen"><a href="{catrow.cathead.U_CAT_EDIT}" class="gen">{catrow.cathead.L_EDIT}</a></span></td>
			<td class="{catrow.cathead.CLASS_CATMIDDLE}" align="center" valign="middle"><span class="gen"><a href="{catrow.cathead.U_CAT_DELETE}" class="gen">{catrow.cathead.L_DELETE}</a></span></td>
			<td class="{catrow.cathead.CLASS_CATMIDDLE}" align="center" valign="middle" nowrap="nowrap"><span class="gen"><a href="{catrow.cathead.U_CAT_MOVE_UP}" class="gen">{catrow.cathead.L_MOVE_UP}</a> <a href="{catrow.cathead.U_CAT_MOVE_DOWN}" class="gen">{catrow.cathead.L_MOVE_DOWN}</a></span></td>
		</tr>
			<!-- END cathead -->
			<!-- BEGIN cattitle -->
		<tr><td class="row3" colspan="{catrow.cattitle.INC_SPAN_ALL}"><span class="gensmall">{catrow.cattitle.CAT_DESCRIPTION}</span></td></tr>
			<!-- END cattitle -->

			<!-- BEGIN catfoot -->
		<tr>
				<!-- BEGIN inc -->
			<td class="row2" width="46">&nbsp;</td>
				<!-- END inc -->
			<td colspan="{catrow.catfoot.INC_SPAN_ALL}" class="row2" nowrap="nowrap">&nbsp;
				<input class="post" type="text" name="{catrow.catfoot.S_ADD_NAME}" />&nbsp;
				<input type="submit" {DISABLE_CREATION} class="btn" name="{catrow.catfoot.S_ADD_CAT_SUBMIT}" value="{L_CREATE_CATEGORY}" />
			</td>
		</tr>
		<tr>
			<!-- BEGIN inc -->
			<td class="row2" width="46"><img src="{SPACER}" width="1" height="3" alt="" /></td>
			<!-- END inc -->
			<td colspan="{catrow.catfoot.INC_SPAN_ALL}" class="spaceRow"><img src="{SPACER}" width="1" height="3" alt="" /></td>
		</tr>
			<!-- END catfoot -->
		<!-- END catrow -->

		<!-- BEGIN switch_board_footer -->
		<tr>
			<td colspan="{INC_SPAN_ALL}" class="cat">
				<input class="post" type="text" name="name[0]" />&nbsp;
				<input type="submit" {DISABLE_CREATION} class="btn"  name="addcategory[0]" value="{L_CREATE_CATEGORY}" />
			</td>
		</tr>
		<!-- END switch_board_footer -->
		</table>
	</td>
</tr>
</table>
<input type="hidden" value="new" name="mode" />
</form>

<!-- INCLUDE overall_footer.tpl -->