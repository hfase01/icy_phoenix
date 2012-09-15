<!-- INCLUDE ../common/cms/page_header.tpl -->

<table class="forumline" width="100%" cellspacing="0" cellpadding="0">
<tr>
	<td class="row1 row-center c-r-l" width="100" valign="middle"><img src="{IP_ROOT_PATH}templates/common/images/cms/cms_users_auth.png" alt="{L_CMS_PERMISSIONS_ROLES}" title="{L_CMS_PERMISSIONS_ROLES}" /></td>
	<td class="row1 c-r-r" valign="top"><h1>{L_CMS_PERMISSIONS_ROLES}</h1><span class="genmed">{L_EXPLAIN}</span></td>
</tr>
</table>


<!-- IF S_EDIT -->

	<script type="text/javascript">
	// <![CDATA[
		var active_pmask = '0';
		var active_fmask = '0';
		var active_cat = '0';

		var id = '000';

		var role_options = new Array();

		<!-- IF S_ROLE_JS_ARRAY -->
			{S_ROLE_JS_ARRAY}
		<!-- ENDIF -->
	// ]]>
	</script>

	<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}js/permissions.js"></script>

	<h2 style="text-align: left;">{L_TITLE}</h2>

	<br clear="all" />
	<br />
	<a href="#acl" style="float: right;">&raquo; {L_SET_ROLE_PERMISSIONS}</a>

	<form id="acp_roles" method="post" action="{U_ACTION}">

	<fieldset class="permissions phpbb">
		<legend class="phpbb">{L_ROLE_DETAILS}</legend>
		<dl>
			<dt><label for="role_name">{L_ROLE_NAME}:</label></dt>
			<dd style="text-align: left;"><input class="post" name="role_name" type="text" id="role_name" value="{ROLE_NAME}" maxlength="255" size="100" /></dd>
		</dl>
		<dl>
			<dt><label for="role_description">{L_ROLE_DESCRIPTION}:</label><br /><span>{L_ROLE_DESCRIPTION_EXPLAIN}</span></dt>
			<dd style="text-align: left;"><textarea id="role_description" name="role_description" rows="3" cols="45">{ROLE_DESCRIPTION}</textarea></dd>
		</dl>

		<p class="quick">
			<input type="submit" class="mainoption" name="submit" value="{L_SUBMIT}" />
			{S_FORM_TOKEN}
		</p>
	</fieldset>

	<!-- IF S_DISPLAY_ROLE_MASK -->

	<h2 style="text-align: left;">{L_ROLE_ASSIGNED_TO}</h2>

	<!-- INCLUDE ../common/cms/cms_permission_roles_mask.tpl -->

	<!-- ENDIF -->

	<p><a name="acl"></a><br /><br /></p>

	<h2 style="text-align: left;">{L_ACL_TYPE}</h2>

	<fieldset class="permissions phpbb perm nolegend">

		<div id="advanced00">
			<div class="permissions-category">
				<ul>
				<!-- BEGIN auth -->
					<!-- IF auth.S_YES -->
						<li class="permissions-preset-yes<!-- IF auth.S_FIRST_ROW --> activetab<!-- ENDIF -->" id="tab00{auth.S_ROW_COUNT}">
					<!-- ELSEIF auth.S_NEVER -->
						<li class="permissions-preset-never<!-- IF auth.S_FIRST_ROW --> activetab<!-- ENDIF -->" id="tab00{auth.S_ROW_COUNT}">
					<!-- ELSEIF auth.S_NO -->
						<li class="permissions-preset-no<!-- IF auth.S_FIRST_ROW --> activetab<!-- ENDIF -->" id="tab00{auth.S_ROW_COUNT}">
					<!-- ELSE -->
						<li class="permissions-preset-custom<!-- IF auth.S_FIRST_ROW --> activetab<!-- ENDIF -->" id="tab00{auth.S_ROW_COUNT}">
					<!-- ENDIF -->
						<a href="#" onclick="swap_options('0','0','{auth.S_ROW_COUNT}'); return false;"><span class="tabbg"><span class="colour"></span>{auth.CAT_NAME}</span></a></li>	
				<!-- END auth -->
				</ul>
			</div>
			<!-- BEGIN auth -->
			<div class="permissions-panel" id="options00{auth.S_ROW_COUNT}"<!-- IF auth.S_FIRST_ROW --><!-- ELSE --> style="display: none;"<!-- ENDIF -->>
				<span class="corners-top"><span></span></span>
				<div class="tablewrap">
					<table id="table00{auth.S_ROW_COUNT}" cellspacing="1">
					<colgroup>
						<col class="permissions-name" />
						<col class="permissions-yes" />
						<col class="permissions-no" />
						<col class="permissions-never" />
					</colgroup>
					<thead>
					<tr>
						<th class="name" scope="col"><strong>{L_ACL_SETTING}</strong></th>
						<th class="value permissions-yes" scope="col"><a href="#" onclick="mark_options('options00{auth.S_ROW_COUNT}', 'y'); set_colours('00{auth.S_ROW_COUNT}', false, 'yes'); return false;">{L_ACL_YES}</a></th>
						<th class="value permissions-no" scope="col"><a href="#" onclick="mark_options('options00{auth.S_ROW_COUNT}', 'u'); set_colours('00{auth.S_ROW_COUNT}', false, 'no'); return false;">{L_ACL_NO}</a></th>
						<th class="value permissions-never" scope="col"><a href="#" onclick="mark_options('options00{auth.S_ROW_COUNT}', 'n'); set_colours('00{auth.S_ROW_COUNT}', false, 'never'); return false;">{L_ACL_NEVER}</a></th>
					</tr>
					</thead>
					<tbody>
					<!-- BEGIN mask -->
						<!-- IF auth.mask.S_ROW_COUNT is even --><tr class="bbrow4"><!-- ELSE --><tr class="bbrow3"><!-- ENDIF -->
						<th class="permissions-name<!-- IF auth.mask.S_ROW_COUNT is even --> bbrow4<!-- ELSE --> bbrow3<!-- ENDIF -->">{auth.mask.PERMISSION}</th>
							
						<td class="permissions-yes"><label for="setting_{auth.mask.FIELD_NAME}_y"><input onchange="set_colours('00{auth.S_ROW_COUNT}', false)" id="setting_{auth.mask.FIELD_NAME}_y" name="setting[{auth.mask.FIELD_NAME}]" class="radio" type="radio"<!-- IF auth.mask.S_YES --> checked="checked"<!-- ENDIF --> value="1" /></label></td>
						<td class="permissions-no"><label for="setting_{auth.mask.FIELD_NAME}_u"><input onchange="set_colours('00{auth.S_ROW_COUNT}', false)" id="setting_{auth.mask.FIELD_NAME}_u" name="setting[{auth.mask.FIELD_NAME}]" class="radio" type="radio"<!-- IF auth.mask.S_NO --> checked="checked"<!-- ENDIF --> value="-1" /></label></td>
						<td class="permissions-never"><label for="setting_{auth.mask.FIELD_NAME}_n"><input onchange="set_colours('00{auth.S_ROW_COUNT}', false)" id="setting_{auth.mask.FIELD_NAME}_n" name="setting[{auth.mask.FIELD_NAME}]" class="radio" type="radio"<!-- IF auth.mask.S_NEVER --> checked="checked"<!-- ENDIF --> value="0" /></label></td>
					</tr>
					<!-- END mask -->
					</tbody>
					</table>
				</div>
				<span class="corners-bottom"><span></span></span>
			</div>
			<!-- END auth -->
		</div>

	</fieldset>

	<fieldset class="permissions phpbb quick">
		<input type="submit" class="mainoption" name="submit" value="{L_SUBMIT}" />
		{S_FORM_TOKEN}
	</fieldset>
	</form>

	<br />

<!-- ELSE -->

<h2 style="text-align: left;">{L_TITLE}</h2>

<form id="acp_roles" method="post" action="{U_ACTION}">

<table class="forumline" width="100%" cellspacing="0" cellpadding="0">
<tr>
	<th style="width: 300px;">{L_ROLE_NAME}</th>
	<th colspan="2">{L_OPTIONS}</th>
</tr>
<!-- BEGIN roles -->
<tr class="<!-- IF roles.S_ROW_COUNT is even -->row1<!-- ELSE -->row2<!-- ENDIF --> <!-- IF roles.S_ROW_COUNT is even -->row1<!-- ELSE -->row2<!-- ENDIF -->h" style="background-image: none;">
	<td class="<!-- IF roles.S_ROW_COUNT is even -->row1<!-- ELSE -->row2<!-- ENDIF -->"><strong>{roles.ROLE_NAME}</strong><!-- IF roles.ROLE_DESCRIPTION --><br /><span>{roles.ROLE_DESCRIPTION}</span><!-- ENDIF --></td>
	<td class="<!-- IF roles.S_ROW_COUNT is even -->row1<!-- ELSE -->row2<!-- ENDIF -->" style="width: 30%; text-align: center; vertical-align: top; white-space: nowrap;"><!-- IF roles.U_DISPLAY_ITEMS --><a href="{roles.U_DISPLAY_ITEMS}">{L_VIEW_ASSIGNED_ITEMS}</a><!-- ELSE -->{L_VIEW_ASSIGNED_ITEMS}<!-- ENDIF --></td>
	<td class="<!-- IF roles.S_ROW_COUNT is even -->row1<!-- ELSE -->row2<!-- ENDIF -->" style="width: 80px; text-align: right; vertical-align: top; white-space: nowrap;">
		<!-- IF roles.S_FIRST_ROW && not roles.S_LAST_ROW -->
			{ICON_MOVE_UP_DISABLED}
			<a href="{roles.U_MOVE_DOWN}">{ICON_MOVE_DOWN}</a>
		<!-- ELSEIF not roles.S_FIRST_ROW && not roles.S_LAST_ROW -->
			<a href="{roles.U_MOVE_UP}">{ICON_MOVE_UP}</a> 
			<a href="{roles.U_MOVE_DOWN}">{ICON_MOVE_DOWN}</a> 
		<!-- ELSEIF roles.S_LAST_ROW && not roles.S_FIRST_ROW -->
			<a href="{roles.U_MOVE_UP}">{ICON_MOVE_UP}</a>	
			{ICON_MOVE_DOWN_DISABLED}
		<!-- ELSE -->
			{ICON_MOVE_UP_DISABLED}
			{ICON_MOVE_DOWN_DISABLED}
		<!-- ENDIF -->
		<a href="{roles.U_EDIT}" title="{L_EDIT_ROLE}">{ICON_EDIT}</a> 
		<a href="{roles.U_REMOVE}" title="{L_REMOVE_ROLE}">{ICON_DELETE}</a>
	</td>
</tr>
<!-- END roles -->
<tr><td class="spaceRow" colspan="3"><img src="{SPACER}" width="1" height="3" alt="" /></td></tr>
<tr><td class="cat" align="center" colspan="3">&nbsp;</td></tr>
</table>

<br clear="all" />
<br />
<fieldset class="permissions phpbb">
	{L_CREATE_ROLE}: <input class="post" type="text" name="role_name" value="" maxlength="255" /><!-- IF S_ROLE_OPTIONS --> <select name="options_from"><option value="0" selected="selected">{L_CREATE_ROLE_FROM}</option>{S_ROLE_OPTIONS}</select><!-- ENDIF --> <input class="btn" type="submit" name="add" value="{L_SUBMIT}" /><br />
	{S_FORM_TOKEN}
</fieldset>

</form>

<!-- IF S_DISPLAY_ROLE_MASK -->

<br clear="all" />
<a name="assigned_to"></a>

<h2 style="text-align: left;">{L_ROLE_ASSIGNED_TO}</h2>
<br clear="all" />

<!-- INCLUDE ../common/cms/cms_permission_roles_mask.tpl -->

<!-- ENDIF -->

<!-- ENDIF -->

<!-- INCLUDE ../common/cms/page_footer.tpl -->
