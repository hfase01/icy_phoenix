	<tr><th colspan="2">{L_POSTED_ATTACHMENTS}</th></tr>
	<!-- BEGIN attach_row -->
	<tr>
		<td class="row1"><span class="gen"><b>{L_FILE_NAME}</b></span></td>
		<td class="row2"><span class="gen"><a class="gen" href="{attach_row.U_VIEW_ATTACHMENT}" target="_blank">{attach_row.FILE_NAME}</a></span>
		</td>
	</tr>
	<tr>
		<td class="row1" valign="top"><span class="gen"><b>{L_FILE_COMMENT}</b></span></td>
		<td class="row2">
			<span class="genmed"><textarea name="comment_list[]" rows="3" cols="35" style="width: 98%;" size="40" class="post">{attach_row.FILE_COMMENT}</textarea></span>
		</td>
	</tr>
	<tr>
		<td class="row1" valign="top"><span class="gen"><b>{L_OPTIONS}</b></span></td>
		<td class="row2">
		<span class="genmed">
		<input type="submit" name="edit_comment[{attach_row.ATTACH_FILENAME}]" value="{L_UPDATE_COMMENT}" class="btn" />
		<!-- BEGIN switch_update_attachment -->
		&nbsp; <input type="submit" name="update_attachment[{attach_row.ATTACH_ID}]" value="{L_UPLOAD_NEW_VERSION}" class="btn" />
		<!-- END switch_update_attachment -->
		&nbsp; <input type="submit" name="del_attachment[{attach_row.ATTACH_FILENAME}]" value="{L_DELETE_ATTACHMENT}" class="btn" />
		<!-- BEGIN switch_thumbnail -->
		&nbsp; <input type="submit" name="del_thumbnail[{attach_row.ATTACH_FILENAME}]" value="{L_DELETE_THUMBNAIL}" class="btn" />
		<!-- END switch_thumbnail -->
		</span>
		</td>
	</tr>
	{attach_row.S_HIDDEN}
	<!-- END attach_row -->