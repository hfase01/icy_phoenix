<h1>{L_BM_TITLE}</h1> 
<p>{L_BM_EXPLAIN}</p>
<form action="{S_BANCENTER_ACTION}" method="post">
<div style="text-align:right;padding:3px;">
<span class="genmed">
	<strong>{L_SHOW_BANS_BY}:</strong>&nbsp;
	<select name="show" class="post">
		<option value="username"{USERNAME_SELECTED}>{L_USERNAME}</option>
		<option value="ip"{IP_SELECTED}>{L_IP}</option>
		<option value="email"{EMAIL_SELECTED}>{L_EMAIL}</option>
		<option value="all"{ALL_SELECTED}>{L_ALL}</option>
	</select>
	&nbsp;&nbsp;
	<input type="submit" class="btn" name="show_submit" value="{L_SHOW}" />
	&nbsp;&nbsp;
	<strong>{L_ORDER}:</strong>
	<select name="order" class="post">
		<option value="ASC">{L_ASCENDING}</option>
		<option value="DESC">{L_DESCENDING}</option>
	</select>
	&nbsp;&nbsp;
	<input type="submit" class="btn" name="sort_submit" value="{L_SORT}" />
</span>
</div>
</form>

<form action="{S_BANCENTER_ACTION}" method="post">
<table class="forumline" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<!-- BEGIN username_header -->
	<th nowrap="nowrap">{username_header.L_USERNAME}</th>
	<!-- END username_header -->
	<!-- BEGIN ip_header -->
	<th nowrap="nowrap">{ip_header.L_IP}</th>
	<!-- END ip_header -->
	<!-- BEGIN email_header -->
	<th nowrap="nowrap">{email_header.L_EMAIL}</th>
	<!-- END email_header -->
	<th nowrap="nowrap">{L_BANNED}</th>
	<th nowrap="nowrap">{L_EXPIRES}</th>
	<th nowrap="nowrap">{L_BY}</th>
	<th nowrap="nowrap">{L_REASONS}</th>
	<th nowrap="nowrap">{L_EDIT}</th>
	<th nowrap="nowrap">{L_DELETE}</th>
<tr>
<!-- BEGIN switch_nobans -->
<tr><td class="row1" colspan="11" align="left">{NO_BANS}</td></tr>
<!-- END switch_nobans -->
<!-- BEGIN rowlist -->
<tr>
	<!-- BEGIN username_content -->
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.username_content.USERNAME}</td>
	<!-- END username_content -->
	<!-- BEGIN ip_content -->
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.ip_content.IP}</td>
	<!-- END ip_content -->
	<!-- BEGIN email_content -->
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.email_content.EMAIL}</td>
	<!-- END email_content -->
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.BAN_TIME}</td>
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.BAN_EXPIRE_TIME}</td>
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.BAN_BY}</td>
	<td class="{rowlist.ROW_CLASS} row-center">{rowlist.BAN_REASON}</td>
	<td class="{rowlist.ROW_CLASS} row-center"><a href="{rowlist.U_BAN_EDIT}">{L_EDIT}</a></td>
	<td class="{rowlist.ROW_CLASS} row-center"><input type="checkbox" name="ban_delete[]" value="{rowlist.BAN_ID}"></td>
</tr>
<!-- END rowlist -->
<tr>
	<td class="cat" align="center" colspan="11">
		<input type="submit" name="add" value="{L_ADD_A_NEW_BAN}" class="btn" />&nbsp;&nbsp;<input type="submit" name="delete_submit" value="{L_DELETE_SELECTED_BANS}" class="btn" />
	</td>
</tr>
</table>

<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<td><span class="gensmall">{PAGE_NUMBER}</span></td>
	<td align="right"><span class="pagination">{PAGINATION}</span></td>
</tr>
</table>
</form>
<br />