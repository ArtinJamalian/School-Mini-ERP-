prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>200001
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'SC'
);
end;
/
 
prompt APPLICATION 101 - school
--
-- Application Export:
--   Application:     101
--   Name:            school
--   Date and Time:   18:51 Sunday October 5, 2025
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     32
--       Items:                   78
--       Validations:              2
--       Processes:               30
--       Regions:                 76
--       Buttons:                 52
--       Dynamic Actions:         22
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:          9
--       Navigation:
--         Lists:                  9
--         Breadcrumbs:            1
--           Entries:              5
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   9
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.0
--   Instance ID:     743338342937109
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SC')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'school')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SCHOOL')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'756028C2C553AEF3A7B0783281665AC640AADF4266196A33048E81B38719E565'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'fa'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(4316279642395910)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'school'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(4323463509395992)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'school'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>12
,p_version_scn=>6578880
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(4604509511396554)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(101)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(4317082545395915)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_FILES#firststyle#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(4318207770395959)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_101_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(4604509511396554)
,p_name=>'App 101 Push Notifications Credentials'
,p_static_id=>'App_101_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4317082545395915)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>6577523
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4334288551396045)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5309318326389112)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>unistr('\0627\0637\0644\0627\0639\0627\062A \067E\0627\06CC\0647')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5266258080347195)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'edu_base_rep'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(5309318326389112)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5322108003399557)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'lessons_rep'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(5309318326389112)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5249917753151704)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>unistr('\0641\0631\0627\06CC\0646\062F \062B\0628\062A \0646\0627\0645 \062F\0627\0646\0634 \0622\0645\0648\0632')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4335785251396053)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'STD_REP'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(5249917753151704)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5250247664153735)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>unistr('\0627\0637\0644\0627\0639\0627\062A \067E\0627\06CC\0647 \0627\0633\0627\062A\06CC\062F')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5250581383259521)
,p_list_item_display_sequence=>13
,p_list_item_link_text=>unistr('\062A\06A9\0627\0644\06CC\0641 \0648 \0627\0645\062A\062D\0627\0646\0627\062A')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4578484996396484)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(4323345719395992)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4318207770395959)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>4289760
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4574628927396478)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4575027461396479)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4575370819396479)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(4321461123395978)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4575869891396481)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(4575370819396479)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(4321461123395978)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4576261787396481)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(4575370819396479)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4576601363396481)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(4575370819396479)
,p_required_patch=>wwv_flow_imp.id(4321461123395978)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4576996904396481)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4604232106396553)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(4576996904396481)
,p_required_patch=>wwv_flow_imp.id(4597879642396532)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4577408077396482)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4576996904396481)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4577841958396482)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(4576996904396481)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4401721980396164)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>4289165
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4402103794396165)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'STD_REP'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4579505010396485)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(4321198010395978)
,p_version_scn=>4289678
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4579917797396487)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(4321198010395978)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4580269268396487)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(4321576324395978)
,p_version_scn=>4289678
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4580519718396487)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(4321576324395978)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4580851539396493)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_version_scn=>4289678
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4581205271396495)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4581671024396495)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4582066555396495)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4582413528396495)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4582880611396495)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583287056396495)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4583522870396498)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_version_scn=>4289678
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4583972384396498)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4584351085396498)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4584622662396500)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_version_scn=>4289678
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4585020941396500)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4601412074396546)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(4597879642396532)
,p_version_scn=>4289754
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4601863222396546)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(4597536409396532)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001F2494441545847ED96BD6B137118C73FF79E34C12651A3560DA289A160A582884B872AE2AE089D74707511FF0641C1C5A1A320';
wwv_flow_imp.g_varchar2_table(2) := '38098283A29B4241289266113B142D6A1A8768527277B95CEE259174F06DB8CB1B74B9DFFCFCBECF870FCFEFE127BC5F7AD463178F1001440622039181510DD89E83E5D94CC91A31591B79950DB5885CDFC374DB0802A48A87C81CCDE2B43B54CA9F4877';
wwv_flow_imp.g_varchar2_table(3) := 'E323410C0CE0753DDA698123B3C7E9FA3E5AE24F436BDBE067E90B534A6C68888101B66D83638BA75034F59F26B661D1D4759287D3F82D87CACA3AFBB41492280E04130AD0D7DE921CD44C82DCDC09EAD51A0E1EC999BDB4B6EA08B2C8FCADCBBF9B995F';
wwv_flow_imp.g_varchar2_table(4) := 'EBACDE7DCE81587A32000DDFE4E4C5333B611DB38DE15ACCDD5C0C0C2F3D7889F6AD3319002B23903B9DDF09AB6D7EA7786381D8FE4460F8C6D3553AEFAA9301D0E32EB9F9027AB3899A4D52B8722E34B8FA669DCD6725527230683F2874060CC7227BA9';
wwv_flow_imp.g_varchar2_table(5) := '48FE6A78E3BFC9EC9AC1DABD17ECF18277C4400067EF5F439D1EFE89951FBE46F96C051A0B0568D83A0BCBD711152954FDFF051F1FAFD02DFF180FA0E3BB146E5F603A9F1D0AC0B31CDEDE79C24125351E40FF762BE1935F3A4F667606519583417AD0F8';
wwv_flow_imp.g_varchar2_table(6) := 'B0C5C6AB35E44A1B4D52C607E827988E45DF468FF04FB42A29249538A210BE0D43676028EF231447009181C84064E017847CF3E129D8FDCE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4319363913395970)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000116E49444154785EED9D097014D79DC6BFD733A3D131BA1012B26E61C465C2216024B4B603C1172401EF5664093B1B234B80D755';
wwv_flow_imp.g_varchar2_table(2) := 'CE6ECA9B78B76A6BD7D41E712AB55576766B13401276ECA091C93A3E3837652E2F5817083B262004084908741F23CD487374BFAD6EA15DF08299E9EE996ED1EF5551854AEF7FBCEFFDD4FDFABDD7AF0958610A28508028B065A64C01308018048A146000';
wwv_flow_imp.g_varchar2_table(3) := '29928F19338018038A14600029928F19338018038A14600029928F19338018038A14600029928F19338018038A14600029928F19338018038A14600029928F19EB12A0D675BFB07A6C268B13D608334C111CB80870D44205DE6C842E239CC90F81F80408';
wwv_flow_imp.g_varchar2_table(4) := '5E3F786F1C3C5EEB18EFCB3BF8438FDEDAAF294014949CDEF4D63C1E7C01115040013B21580C108BDE84D2473ED44729BE20403DE5D06082A97E79CDE6160242B5CA2FAC009D29AE4EE64D74950014100A3B4057829078AD1A7F5FC4A57404208D14B49E';
wwv_flow_imp.g_varchar2_table(5) := '50D4FB294E16EDAD180C57DBC2069078B5692AD9BD8112FA130045E16AA0A1E2507A92827BDD5E5BB63F5C57A59003D4B4758745709A3783D2BF0621730DD5A15A3596A28512FCDC14E7FFF58A9DDB7CA14C23A4009D2D7E3BDDC3F93E24842C0F652398';
wwv_flow_imp.g_varchar2_table(6) := 'EF3B2B4081260B4FD6E7EF7DA12F541A850CA0BAE2EA8584A3FF4508D243953CF31B8002945E06276CB4D76C3D1740EDA0AB8404A0A6E2AA87058EEE6303E4A0FB233406E2409BE336DA6B5E38AE7600D50112AF3C1C2734829068B59365FE142840A91B';
wwv_flow_imp.g_varchar2_table(7) := '9C6057FB4AA42A404DDFDD11CD479B1B09C142054D65A62153809EE35CBC7DC5C7DBDC6A855015A086D2CAB700F2BC5AC9313FA15080BE6D77546C56CBB36A003594568949ED562B31E627A40A94D91DE56FA9114115804E15BF17653239BB0848A21A49';
wwv_flow_imp.g_varchar2_table(8) := '311FA15580523A6872F3996ADCCA5401A8BEB4EA4502FC32B4CD66DED55480027F51E028FF95529F8A011297281A4BAACF83609ED264987DF814A0949EB7D7963FA474C94331400D9B2A9F022507C3D77416493505085D67AFA938A4C49F6280EA4BAA0E';
wwv_flow_imp.g_varchar2_table(9) := '1182279524C16CB55180521C2EA82D7F4A49744500B56DDE1DD937C1BB00C2294982D96AA50015FC7C9CAD68EF33E3723350045063E9AED514DC51B9C1999DF60A10086B563AB61C939B8922801A4AAAFE06043F951B9CD9E940018ABFB5D796BF2E3713';
wwv_flow_imp.g_varchar2_table(10) := '4500D597547E4008D9283738B3D35E014AE98705B5154FCBCD443640D2E37B69B5B8CF24496E7066A7BD0214B4A7C051912A3713D900D53DF76E1CC77B46E4066676FA51C06AB1D896BCF303979C8C640374A6B42ACD0F74C909CA6CF4A5801948CF7794';
wwv_flow_imp.g_varchar2_table(11) := '5F9793956C809A4B77E7F820B4C909CA6CF4A58099A339F97B2ADAE564251BA0BA6777E7718270514E5066A32F05048E9B5BB8A7AC554E56B2016AD8B4F32150D3977282321B7D29C0116EC18A9AB20B72B2920D50534975BE40E8693941998DCE1420FC';
wwv_flow_imp.g_varchar2_table(12) := '22B95B5DE503545A5D2080D6E94C0A968E0C050868FE4A4745B30C53F9078D3794561701F4A49CA0CC465F0A7020852B1C2FD4CBC94AF615A8AE64572147B8CFE4046536FA528001A4AFFE9876D93080A65D97E92B610690BEFA63DA65C30052B1CB26FC';
wwv_flow_imp.g_varchar2_table(13) := '5E78051FFC022F798D365B1169B6AA18417FAE18402AF4C9E08413C39E5178F83B9F86126D8E444A7422A2EE439818400A00F2F17E74B9FA30EEF780700419D9998899118788E8484C8CBAE1EC1FC240EF207CDEC9E3096744C621392A01DC7DB48B9701';
wwv_flow_imp.g_varchar2_table(14) := '241320810AB8EABC215D755233D3307BE93C982C773EC773E8463FAE5D6CC7F0C02022380BB2E35261E64C3223EBCB8C01748FFE18F3BAE1117C1228BCC0C36A8A80D564C1A8D78D519F1BD9737391B5684E40BDDA75FE2AAE9C6F458C250A59B1B302B2';
wwv_flow_imp.g_varchar2_table(15) := 'D17B2506D05D7AC8CBFB70DDD52FDD9EEE5692526662E1C3CB82EAE3EED60EB4FEA145BA95CD8C4A08CA568F95194077E89511CF98048F589266CD446A561AA2E26DB0C64462DCE9427F571F3CEE71CC5E320F666BF0A70A9F3E7C0A6E970BF312B3A6FD';
wwv_flow_imp.g_varchar2_table(16) := '788801F41580C481F11567174C660BE62E5F881969C9AAFFE1DF68E9C0A5732DC8B4A5C01631BDCFD262007D050F71602CDEB61617E5233E35347BFE5D834E9C39568F446B2C526342134375EAEFE29001748B30223822400F646760CEF20521ED83531F';
wwv_flow_imp.g_varchar2_table(17) := '7E028E72488C8C05018185334BFF22CD11218DABB67306D02D8A8A13823DEE41E4AF2E90E67342519CFDC3B87EF12AFABAEF7C7AAE8970D253DAACE8449839FD7FDE8301740B255D637D707A5D28FCF63761B1AA7B2518ECEC41FBC5AB181B714E4E2AA6';
wwv_flow_imp.g_varchar2_table(18) := '2723297B166292E341790AF7D018063B7B31D0D12DFD5E046956F40CC45B6DA1E058359F0CA05BA46C7776C3ED9FC0237FF6B86A028B8EDABFBC848E8B932FA12C5EBF0AB94F2D817546CC1D638CB5F5E3CA275FE0C2B1C94D7EE2ECB508925E0B030880';
wwv_flow_imp.g_varchar2_table(19) := 'CB3701976F1CC39E31F09447C1938F202226F2AE7D4679016343A3181D18C6B87B1C3EF704226DD1888A8D414CBC0DB6A4FFFB06CC143C4999B350F0E23AD8B2031B34BBBB86F1C93F39303EEAD2F560DBD00089E31D71CE87A7C26DB0D89FF813586DFF';
wwv_flow_imp.g_varchar2_table(20) := 'FFF15A04A7FBD2355C6DB90CBFDF7F57C0A2A3A3919A930EBFD7878E4B5731332B156BB66F02B1047792CD44EFA80491F8D4961A9D240DB8F5560C09905FF0E3DAD8E422A82D3E0E19B33311191783C8D8685822EE3C31284E20FEF1B3CFA50940623621';
wwv_flow_imp.g_varchar2_table(21) := '6FD543C8289C87D8B419B02444C13BE4C668C700FA5BAEE1CBDF3781FA27B7748857A627FFF9CF614D92379671DF18C1BE1F578223040FC667E86E0DCD7000897B763A467BA45B95F8B83E7BE95C70A6AF5FD81C1B1841F3F10609889C6573B16CCBE3B0';
wwv_flow_imp.g_varchar2_table(22) := 'C4DDFD16E71FF3E0F28133F8FCA35378E2EF9E43C27CD9E70F4831CFBFF329FE70B84197E321C301D436721D13BC177316CFC7037332EF7947F08D7B70FA933AF8BC5E1495AD43C6DAF01FA4EF1B9DC0BE1FED82E0F1636E62D63D730E67054301343031';
wwv_flow_imp.g_varchar2_table(23) := '825EF71092535330BF6849403A5F3875569AB359B9E95BC8FD76700BA7010508B0D2E97F3B84CBF5E7901D9B8A68CBDDAF7E01BA53AD9A6100FADF352E8B052B1E2F0A681174B47F04674F34207B491E0A7EBC4135D1E538BAFC41134EFFF6B8F4482F3E';
wwv_flow_imp.g_varchar2_table(24) := 'DAEBA51806A081F111F48E0F216B6E2EB203DCBF73E9F479DC68BF86C77E5282198B3334EDB3BEA6361C7DE37D690B88B815442FC53000DD70F54BF33C8B0A972231C015F6BA7DC7A5B1CF33EFBEA2797F8D5CEAC5E1D7DED1DD40DA3000894F5EE26461';
wwv_flow_imp.g_varchar2_table(25) := 'E1FA476189BCF79B127EAF1F9FED3B0A710270ED4FBFAF3940535720BD6D44330E40CE6EB8FC1301AF73899BE21B7F7F1279458BB0EC25EDCF42BFF49F8D38F3BB1348B725232EE2CECB205A506E1880A6164A973CBC02712977FE3090C7358E9EAB3730';
wwv_flow_imp.g_varchar2_table(26) := '36348291C16169B679E1DAE55854B65A8BBEB92DE689EDEFA1BBB513B97169BADAF2611880A61EE1F3BE310FA979B7CFA588B3CCED7FBC8CBEEB3DB7755A6A5E26167CC78EE4E5399A0374F0E55D181D72C2444C981915AF9B2731C30024BE557165A40B';
wwv_flow_imp.g_varchar2_table(27) := '31B6182C5B5B08629A5C97EA387705ED2D97A5FF672CC8C1EC6F2D415CD64C44A7EBE74947CC6DA2CF858B1F37E0C2913352AEE2EB41E2CB8AB11A6F89350C40122C37C741B90BE62063412EAE345F40575BA7D421F667D72267FD52CDAF34F74A405C73';
wwv_flow_imp.g_varchar2_table(28) := 'BB72B0195F1C983C9F4BEB7921430124AE83B539274FA4CDCCCD42675B07E25366E0911F3D8DE8CCE9F5C1C4EE53AD38F11F1F496DD17276DA50008962DFFACA8EF8F3777E56AEBBDBD5BDAE4253BFBFF1690B3EDDB14F1A17CD8E4FD364A5DE700089E2';
wwv_flow_imp.g_varchar2_table(29) := '4FBD79612F598B9CEFEAFFB6F575405DA839892FF6D769F6A2A2E10012D7C42E8D5C43EA831978747B49A07FECBAAD278E893E78F997D2A0FAC184F4B0E7693880FAC787D1373E8C475FDA88D4A2C0DE690F7BAF041950CB957AC30134F524B6FE5FCA60';
wwv_flow_imp.g_varchar2_table(30) := 'CBD2EF66F56018EA3A721E27AB0F20C16AC30331338331555CD77000897341E29C901E164815F7DE4D07FD4DED38F2C66F211E64251E1D13CE6238802E0E75203E2D098FFDEC07E1D439A4B19CAD3D38B4FD5DD82C51C80CF3B1318603A875B813E6A808';
wwv_flow_imp.g_varchar2_table(31) := '6CD8F152483B359CCE277A9CF8E8955DD222ABB8D81ACE623880A65E1EDCF8E636D96F4A84B383028935D2D28DC3FFF81B36060A442CA575A63696AD7DE57B485A96ADD49D2EEC2FEC39292D6D68B1D5C3705720F1C8BACEB15E2C2F5E8D07372ED70500';
wwv_flow_imp.g_varchar2_table(32) := '4A93D8FFF24E4C0CBB9097900942647F8142561A86034854E9F270172CF19178EAF5CD30C5A87B8882AC5E506074FDD879FC77E501E91086B4303FC28B691B12A0A1895174BB0790F98D3958F5EAF4FDF2B8F8EAF3FE57ABC1FBFCC88A4D458C06AFFB18';
wwv_flow_imp.g_varchar2_table(33) := '1220F12FA773B40763BE712C7BFA11E47DCFAEE01AA08DA9E0E371ECEF6BD0DFD9A3D9D5C7B05720B1E1BC3079CEB3F86982DC15F3B1B4E231586CF7DE6CAF0D2EB747F50CBA70B6FA08DACF5ED464EEE7D66C0C7B051245100F59E81CED955E75168F66';
wwv_flow_imp.g_varchar2_table(34) := '59B5751D66EAF8C98CF7F8D1B6BF1967DE3F21F5A138F39C199BA2E949AF860668EA2F696AC3BDF8B3789A46C20349884D49446C4A024C166D4F94F78C7B317A6300CEEE410C5CEB955216F7FFA4442720C1AAFD712F0CA09B14B97D1310CF48144F9FD7';
wwv_flow_imp.g_varchar2_table(35) := '73115F6B9E1999001317DC5943A16A1303E82BCA8A27D44B9F35A0BC344EA2A0A1D23E20BFE2BC8E95B3C062B2208233877D9EE75E493280EEA510FBFDD72AC000628028528001A4483E66CC00620C28528001A4483E66AC09404D25D5F902A1A799FCD3';
wwv_flow_imp.g_varchar2_table(36) := '5F01029ABFD25131792A7A9045F6BE81864D3B1F02357D19643C565D8F0A107E91BD66EB3939A9C906A8EED9DD799C205C941394D9E84B0181E3E616EE296B9593956C809A4B77E7F8204C7E3C829569AD8099A339F97B2ADAE534423640674AABD2FC40';
wwv_flow_imp.g_varchar2_table(37) := '979CA0CC465F0A9881F47C47F9E489154116F900155727FB4D747265909569AD0047FCC92B6AB64D7E6036C8221BA0BAE7DE8DE378CF4890F158751D2A2098ACF185BFF9FEE447D0822CB201A2C5EF991A4CA36304D0CF91EB41369E5587B8CC3C61E763';
wwv_flow_imp.g_varchar2_table(38) := '6D64EF33935F9609B2C806488CD3505A750CC037838CC9AAEB4B81E37647B9EC13481501545F5AF51A01FE415F7AB06C82518002DB0B1CE5AF0563736B5D45003596EE5A4DC11D951B9CD969AF0081B066A5638B782791551401D4B6797764EF8430C4C6';
wwv_flow_imp.g_varchar2_table(39) := '41B2B4D7DC481CFFA4447289B96F954DC84D46114093E3A04A0740A6FF316172159CD676B4D6EEA82855D204C500D595EC2AE408F799922498AD360A0854585558BB65F2AC619945314062DCFAD2AA3A0214C8CC819969A00005EA0B1CE5854A43AB0250';
wwv_flow_imp.g_varchar2_table(40) := '6349652925A4466932CC3E7C0A104A37ADACAD70288DA80A4047571F3547A75E6E2320DA7ED14DA91A06B1A7145DEE9ED9396B8EADB9FB77CF03D4421580C4588D25D51B29A11F04189755D35201816EB0BF57F1B11A29A80690F4445652F90608F94B35';
wwv_flow_imp.g_varchar2_table(41) := '12633E42A400A56FDA6B2BFE4A2DEFAA02D4B475874518319F04C14AB512647ED454801EE3E2F82756ECDCE653CBABAA008949491BCDA8D00C027D7D6B492DC5A6A91F0ADA43095D5258B3E5F60FAA296C8FEA0049E3A1D2CA6502C8FB04D0FE2B6F0A05';
wwv_flow_imp.g_varchar2_table(42) := 'BA1FCC29683B28D958505BFEB9DAED0909406292F57FFA761289F03B40F098DA49337F812B408123F0989F29F8DDF303815B055E3364008929DCDC33F4EF047831F094584DD514A0F8D79542ECAB72F7FA04924748019A4AA0BEB4EA4542F12608A6F769';
wwv_flow_imp.g_varchar2_table(43) := '988128AA833A94629C10A1CCEED8521BEA74C20290D888B3C56FA77B395F3908A9103F3618EA8619D13F05BDC681545A7873E5D2BDCF87E58587B00134D5A1376F6B1B40B18D004F8020EC39DC4F70510A9E801EA0043BEC7CDCA150DEAEEEA49BA69DD7';
wwv_flow_imp.g_varchar2_table(44) := '54BC235E20A625205826FDA3249F822E208498EFA74E56AB2D94523F01394F81660E68A61C698E73D133F33F2A1F552B46B07E3405E86EC9B6AEFB85D56333599CB04698618AE0C04580A3162AF086008B70263F04E2132078FDE0BD71F078AD63BC2FEF';
wwv_flow_imp.g_varchar2_table(45) := 'E00F3DC17670A8EBEB12A050379AF9574F0106907A5A1AD21303C890DDAE5EA31940EA6969484F0C204376BB7A8D6600A9A7A5213D31800CD9EDEA359A01A49E9686F4C4003264B7ABD76806907A5A1AD21303C890DDAE5EA31940EA6969484F0C204376';
wwv_flow_imp.g_varchar2_table(46) := 'BB7A8D6600A9A7A5213DFD0FC2CBA6EB836DD7D90000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4319680852395973)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE9000012FF49444154785EED5D697054D795FED4FBAA7D4548080402C91863B1088C21820427D8108771B05D95A492893D9924AE4939F1';
wwv_flow_imp.g_varchar2_table(2) := '38896BB672661CCFD89599546692A95918DB35892BE535761C2F83F182C7886500B159208490D02EB4B47A5FA5A9FB1A352D0456AB17D17DCFB9FFA47EEFBE7BBEF37DEFBD7BDF39E7661DBA7FF704B831024411C8620110F53C9BAD20C0026022904680';
wwv_flow_imp.g_varchar2_table(3) := '0540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540';
wwv_flow_imp.g_varchar2_table(4) := 'DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD';
wwv_flow_imp.g_varchar2_table(5) := '6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C';
wwv_flow_imp.g_varchar2_table(6) := '0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A4116001CC81FBFDA1001C7E377CE301044341F8C783088C07A1CE5243A35241A3D2C0A8D1C3A431C0AC35CCC188F8129308B00052C485D0F8386C7E07EC3E17BC217FCC5711A228';
wwv_flow_imp.g_varchar2_table(7) := '32E622CF608DF91C3E307E045800F16377DD339D010FFA5C43088E87E2EE5DA7D2A2D45CC04F84B8118CED4416406C38C574D4F8C43806DDA318F539A61CAFD5EA50505688FCD22298AC66680D3A68F45A789D6EF89C1EB8C69C18ECEA83C33EF53CD149';
wwv_flow_imp.g_varchar2_table(8) := 'BE211B25A6FC98AECF07CD1E0116C0EC31BBE619131313E874F4C313F45DF93D2B0BD5B58B515653892C956AC62BB9C71C18ECEC477F670F028140E478313FA8B496409535731F335E840F9882000B204984E8720C40BCFA4CB682E24254D7D7426F9AFD';
wwv_flow_imp.g_varchar2_table(9) := 'A4361408E14CD3718C0C0D47FA1313642182ACACAC248D98BB1108B0003E85076222EB0CB815628B959CE0444879AFD7AA34D0A8D4D0ABB530A8F5F0847C18F339233D952FACC0A25B9725C6B089099C3F7A06BD9DDD917EAC5A13E65B8B13EB97CFE627';
wwv_flow_imp.g_varchar2_table(10) := 'C04C1C10C41FF2DA30E2B5CF74E8B4DF0B4A8B5077DBCA599F77BD137A5A2EA0BDA52DF2B3980F887901B7E420C04F80AB7074FADDE8750D233431FB159CEC9C6CDCDCB81A2AB53A39DEB9DCCBE97D47303234A2FC25964917E796F37C204908B300A280';
wwv_flow_imp.g_varchar2_table(11) := '1CF68E29AB38D12D273F173985F9B0E45860CC36C1986341D0EB87DFE387E3D22806BAFB60B7D961329BB1A27135B47A5D925C73A51BAFC38DC37B3E8EFCA3D8948702434ED2AF43B14316C065AF5F4D7E8D4683252B6B5158593A232F3C7637F4667DD2';
wwv_flow_imp.g_varchar2_table(12) := 'EFFCD117BE78EA3C3A5BDB957F89B9C7A29CF219C7C507CC8C000B005026B9621567B215961661717D2DB406FDCC08CED111419F1F4D7FF83072B5AAEC32257C825B620890178098F09E1FEB89BCF3171415A06E637D62A8A6E8EC23EFEC87DBE5527A17';
wwv_flow_imp.g_varchar2_table(13) := 'E11285C6DC145D894EB7E40520DEF9C5EB8F685AAD06ABEED89092F7F86450EA42F35974B75F54BACAD699516E294A46B7A4FB202D00F1F5F69CAD0BA18971850475AB6F46410CEFFC378A3123DD83387DE8F8E579800E8B72E6DDA8A148735DD202104B';
wwv_flow_imp.g_varchar2_table(14) := '9E5DCE41C5993ABD1E0D776D4A5BC74E84C631D8D18BD6E32DD3C6A8CE5229CBA3AAAC2CE8D45A58B446E509C15F8D6776276901F4382FC1EE0FBF53979497A1A661F9CC88CDF1118E211B063AFB30D8DD875028F66F13420C569D19F97A2B0C3C59BEAE';
wwv_flow_imp.g_varchar2_table(15) := 'D7480BA07DAC07BE5038E86CF12DCB50565D31C7F4BEFEE544A468FBB1B318BE3494F09844084591294F593EE5361501D202681D15EFFFE1BBEAAA2DEB60CA4D8F2494CE13ADB8D8D6398DAB654B2B51B9BA06F935F3A0B51AA0B118A03169E11B76C137';
wwv_flow_imp.g_varchar2_table(16) := 'EC8467C409D7A00D1D4D2D18EABAB2AC3BD91187564F973F6901B48C744410D9F8475B6FF8CD31E0F3A365FF718C8DDA2263D119F4B879C77A5434D64197638C798CAECE61B4ED69C6D90F9AA79C63D61A516E2E823A86F0EC982F96C107921640EBE8C5';
wwv_flow_imp.g_varchar2_table(17) := 'C80AD0FAED9BA1D1696E982B3D36274EEE3F0A9FF74A3EC1CDDB1AB064678372978FB779FAC770F2F98FD071F46CA40BBD5A870A4B31B4EA1B676FBCF624FB3C520210AB3EAEA05779EFF785FC535216EB1B1B60CE8F2FCA723C14C268EF1006BBFAE1F3';
wwv_flow_imp.g_varchar2_table(18) := '7811F00710F0FBA052A961C9C98639DB0C83C50493C5046B51EEB4900911EB73F4BD039149AE4AA3C6A6EF7C11C50D8B92E6EFBE8F5A71F0D977E0F785F3938508AAB24BC907D5492F0011BF3FE4B129AB3D93EBFDD762553CDF007C2E0FBACF5C405F57';
wwv_flow_imp.g_varchar2_table(19) := '2F26C6276222AB88312AAB98879285E530E65A20C4D3FCDE41B81CE1D5289140B3E547F7C25A9DFC8F5CEEDE31BCFBF86FE075851377C4726985B524A671CB7A90D40210A548FA62086DD6EA74A8DFB20E3A536CB135417F005D9FB447BECA5E8B1C05F3';
wwv_flow_imp.g_varchar2_table(20) := '8BA1D16931D0DE735DEE58B3AD10D79ECCFCD29B4DF8DC5FDE077345EA7280474FF560CFDFFF36322611552AA24BA936690520AA32D8A2B2B48483B55A2D0ACB4B5050560483D904AD5EAB24A7CFA65DEAECC3B9E696696BF28BD6D661C16DCB605D5004';
wwv_flow_imp.g_varchar2_table(21) := '4391654A97DE2127DCBD368C5EE8C7A9370E2AAF49D76A5B1EDD85C25B2A67339CB88EED78AB19877EB33772EEC2EC32B2DF0AA41380A8CCD0EDBC0457547EAEB8CB2EACAD46F1C27264A9E2CBA915AF2AE78FB4A0BFBB2F421C63B605F5BB36A1A4A11A';
wwv_flow_imp.g_varchar2_table(22) := '1A536C790021971F675F3E8853FF73680A79ABEA9762ED0FB6C745E8784EDAF7F80BE83FD7A59C2A568644BE31C5269D003AEC7D532A3314979560F1EA3AA8B5F1AF788C078338FEFE61381D57F27E6B36AEC0F2AF35C6BD42E3EEB1E1E833EFA2F74CA7';
wwv_flow_imp.g_varchar2_table(23) := 'F224BAF3A96F425F30F5C9914A42BAFBC6F0C6A3FF19B9C4026B294C04ABD24925807ED7F0949A3C55CBAA515197E84ACA043EF9DF660C0F86BFC89AF3AC58FF2777227FC5FCA4F0D3D93104B5410B63E9DC67789D7EEE439CDEF37F8A1D54A34BA51180';
wwv_flow_imp.g_varchar2_table(24) := 'A8CAD0EBBA1236B06069352A6F4A94FC40E78973B8D816FE60269632BFF0E4D7A1CB332585FC37BA93E8A78008A8ABC94BFDFCE346DB7CF5F5A5108078EF6FB3754796398BE79560E9BA150963ED181A43F3BEF0BBBA5AADC6D6BFFE0AB253B03C99F040';
wwv_flow_imp.g_varchar2_table(25) := '13E8E0BDC77E1D099BA8B496922BC5288500863D6318F48493D94552CB9A6D9BA0D6245E99E1D8DE83708E854BA334FED99750DC509D00D5D2F3D433CFEFC789379B94C1518C1592420022A965B2106DB2A23A47BA0670FAF0098518654B1760E35F7D39';
wwv_flow_imp.g_varchar2_table(26) := '3D199CE0A8864F7461EF532F84E737A2FA5CF6CC450012BC645A9D9EF102F006FDB860EF554015B533D7DFBD19AA24047A9DFAF0084687C3B5783EF3D09750B25EBEBBBFB04D7CA378FDE17F53EC14E111D4B2CC325E0022CCE192271C3D593A7F1E96AC';
wwv_flow_imp.g_varchar2_table(27) := 'BD29E13B4C301044D3EFDF57FA3158CDD8FECFDF824A236761DA903B8097BFF50BC55651EE71496EFAE44424ECC8183AC87801743B06E108B815536F5A7B0BF2E7275E3B537CED3D73E494D2E7CABB6F47CDAE8618A0CCDC435EF8EACF2283AFCDAFCA5C';
wwv_flow_imp.g_varchar2_table(28) := '43E21879C60B20FAC357C3E76F87CE1C7BCCFCF5F0EA3876165D17C2D517B6FEF83EE42D4FCE9A7F1CFE49F92901BB07AF7EF757CA75445E714D1E3F01520E7A322F103D014E564CFF99FDC771A93F9C2C7FE713DF8065414132879C567DB9BA46F087C7';
wwv_flow_imp.g_varchar2_table(29) := '9E51C644B1E25CC63F015291D575ECDD03705EDEADE5EE5F7C1BFA7C735A91369983898E0EA5587E3DE30530E5097057E3ACA33BAF45A6FDAFED452814AE15B4EBB9EF234B2DE70458D877FEB52338F2E2078AAD14ABCD65BC002E8CF54676615CBD7503';
wwv_flow_imp.g_varchar2_table(30) := '8CD6D98529F8DD5E88D2234EBB0B2EBB03F611BB92CD35D9EEFDF523C9BCE1A65D5F7B7EF89C92CD269A488E114932945AC60B207A6BA2BA352B5050114358EFC40446FB87D1D7DE85E1814F2F3BF2E5671E864A9BF857E574249577C08ED71FF98FC8D0';
wwv_flow_imp.g_varchar2_table(31) := '72F516E52920F62DA6D2325E0053BF039461C9DA4F2F6E35D273096DC75BA6249F5FCFD9F5F76CC2E29D6BA4E582BB7B146FFCF8BFA6D927845068C82591349FF10288FE122CB6235DB74394379C9EF42262FA2F9C68436F47380924BA15569561E1DA65';
wwv_flow_imp.g_varchar2_table(32) := 'C8AF9B0F7DB6115A8B1EEA18135C325D1DA32D7D38FBFB83B878E2FC34538A8D792830CE7D98F65C629AF102502672B61EF8C7C315DE6A572D47E182B22918BAC79C68397022525A7CF2C7E577AC41F5B67AE8AF4A619C4B07A4CBB5FC631EF4379D43F3';
wwv_flow_imp.g_varchar2_table(33) := 'AB1FC1EBBA92B229C223E65B8A949AA33236290430EA75A0DF1DDE52543C05D67C61432403CC35EAC0F17D8722AB3AE29825B72D47DDAE0D4CFC6B305AA46CB6BCB81F9FBC7B24F2ABD81553945091716E20850084A7DAC77A955A3FA2893D7AEB6E5FA9';
wwv_flow_imp.g_varchar2_table(34) := 'ECE37574EF0104FCE1FFAB351ADCF6E03694DD5E23E3CD2CA9368D9CECC607FFF43282FEA0D2AFF84826F20544BC904C4D1A01B8035E65A7F6C9266AEFD86D63917A3BA61C0B1AFFFC1E581616CAE4BF94DA626F1DC0FB4FBF14A9622136EB5E2059B8B4';
wwv_flow_imp.g_varchar2_table(35) := '3402104C88DEED259A19229BEBF33FF99AD4210DA95282ED4C3FF63CF13CC46622A2C93631964A00C241D135FF2749D1F8BD9D285E9B787E70AA4896EEFDB6BD7218475FD91719A64C7584A41380F0527478842858B5FA7BDBD29D63693FBE7D3F7911FD';
wwv_flow_imp.g_varchar2_table(36) := 'ADE10859994A2A4A27802919622A15EE7AFA01184BE22B7A9BF6AC9CC3013A3B87F1E65F3C1BF51498078326B662607338CC595F4A3A0144BF022D6BBC152B1EDC326B50F8846B2370F4976FA3ADE9B4F2A32C7584A41280D8F3B7D5167E4C8BB6E3A907';
wwv_flow_imp.g_varchar2_table(37) := '609CC77BE9264BD0F6F38378FB6FFE3BD2DDD2BCCA8C2FAF2E9500A28B63E51617E08E7FFC46B27CCFFD5C46E0ED8777C33E14CEC1169B6C5874B38BBE4D3720A512C0807B0423DE701D9F153B3660D97DEBD20DEF8C1F4FEB8B07D0FCDAC78A1D32D411';
wwv_flow_imp.g_varchar2_table(38) := '924A0017EDFDCA0E30A26DFEFE3D285A452BC17B2ED4255B1D21A90410BDEDE99D7FFB75FEEA9B024588AAD66FFC68B7D2B30C7584A41240F4FAFFCE5F7D17DA6C5AD94D29E0FBB42EC70321BCF4C73F57FE2F431D21A904109D202F7B2AE35C90FD7AD7';
wwv_flow_imp.g_varchar2_table(39) := '98AC2324431915A90410BDEDE9CE7F7D48D94C9A5B7211083A7D78E5DBFFA274AA5369519D5B9EDC0BCC716F5209207A0EB0FDC96FC2544177F3B754F1C83BE8C0EB3FF877A57BA3468FAAECA9C947A9BA6EAAFA954A00D109F25B1FBB1F793765F6DD29';
wwv_flow_imp.g_varchar2_table(40) := '554E4FA4DFE1639DD8FBB397942E64D85B4C2A018822B922495EB435F76EC6C22FD627E26B3EF71A08F0778034A685D817B8DB192E695850598ACFFEF42B693CDACC1CDAC77FF7327ACE84B78CE22FC169E643B15592580A1DBF9CBCB1FDE907612A93BB';
wwv_flow_imp.g_varchar2_table(41) := 'AAC15CBA4024CEFFEEA170215DD13816682ED18FF15AD1D1A0351B6FC1CA3FFD5C8C67F261332170F685261C7F7DBF72184783CE84D60DFADD13F441944C9F6CDBFFE10198CA3922345177F8865D78F387BB11F085CBCFC8B2AFB05493E0492747AF0655';
wwv_flow_imp.g_varchar2_table(42) := 'DD5A83B58FEC48D4FFE4CF6F7AF255749D6E577090210462D2A1520A203A2B4C18BAE9A1BB51BA7E317912C70BC040D3797CF8CBDF454E97E5EE2F0C925200C2B0E89AA1A22AC41D8F7F15D62A2E89325B11383A86F0DE13BF85CF13AE982D4308743406';
wwv_flow_imp.g_varchar2_table(43) := 'D20A401819BD7D92D16A46E3A3F7C0BAA868B61C207BBCC803DE2BC8EF0E87988BE2580BB3E7212B6B7AEDD54C05496A0104C783B860EF8BEC212C2AC36DFCCE0E14377089949908DBBFBF0D0776BF05BF2F5C554F447E8A571FD96A844A2D00E1385F28';
wwv_flow_imp.g_varchar2_table(44) := '0031290E8C874BFC8956B5AA06CBEFFF0C4C655C2DE26A21049C3E9C7CF603B41D08EF922933F9A59E03443B5624CBF7380723D96293BFD56EBE154B76AC81A1D83AD30D51FADF03360FCEBF751427DF398C89602862AF78ED996F2996EECE3F69A0F44F';
wwv_flow_imp.g_varchar2_table(45) := '8068E6464F8CA3FF5F545586AA865AE4D79693D81F408434FB1D5EF8465D183EDB83DE931D91A257D1B88809AF288528D33BFFD57732520210C68B0F65A286A8FB72EEB0F4B7F6380C1471FE25E67C12FB859113C0241FC4B7029BCFA1EC321F1CBFF2C8';
wwv_flow_imp.g_varchar2_table(46) := '8F832FD29C225E770A0C39C8D15BA4B1692643C80A201A18F154104F04210A7F2880E044486A518854468D4AA5EC0CAF536B94C416A3C6A02C73526B2C006A1E677BA720C00260429046800540DAFD6C3C0B8039401A01160069F7B3F12C00E600690458';
wwv_flow_imp.g_varchar2_table(47) := '00A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4';
wwv_flow_imp.g_varchar2_table(48) := 'DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCF';
wwv_flow_imp.g_varchar2_table(49) := 'C6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3009803A411600190763F1BCF02600E9046800540DAFD6C3C0B8039401A01160069F7B3F12C00E60069045800A4DDCFC6B3';
wwv_flow_imp.g_varchar2_table(50) := '009803A411600190763F1BFFFFF771A5AAE3E0AA990000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4319959840395978)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D0B7494D5B9F7FFFB9D6B663221DC2F12AE22A0484012124411158B1EABB5B69068B5151394B6E7FB8EED';
wwv_flow_imp.g_varchar2_table(2) := 'B7BE636D4F97B4C7EF6B5DEB7CABEDEAB11E8E099CB65E12F1D45B2F6A55500A12C255A8A0040224408070C9652633C9CCBBBFB567C8E4C22DC9CCBBE7DDEF3C7B2D970AEFFBECE7F93D7BFEF3CE7EF77E360335224004D296004BDBC829702240044002';
wwv_flow_imp.g_varchar2_table(3) := '40838008A431011280344E3E854E044800680C10813426400290C6C9A7D0890009008D012290C6044800D238F9143A112001A0314004D2980009401A279F4227022400340688401A13200148E3E453E844800480C600114863022400699C7C0A9D089000';
wwv_flow_imp.g_varchar2_table(4) := 'D0182002694C8004208D934FA1130112001A0344208D099000A471F2297422400240638008A431011280344E3E854E044800680C10813426400290C6C9A7D0890009008D012290C6044800D238F9143A112001A0314004D298000940AFE4AF5BB8CE3E61';
wwv_flow_imp.g_varchar2_table(5) := 'C221BBDF1FB00761B7391D995A5B5B5873D8235ABB3DA2D943BAA639EDC4CD841F1ABD3DCCC32E4D77866D7A47D8A66764D8F5F68E56DD8D70C4EBF5840F1D9A10BE75FDAD6113BA9E3297D272206F2DFAAFC93A3A720196CB815C068C076323008C4959';
wwv_flow_imp.g_varchar2_table(6) := '26A86399048E81F3931C38CC805D00DFC56CB69DF92F3F7A50A61366E82B2D0460CB9235B360D3EF01E78BC0D81C005E33C0271F4C47C00F602B74FE3E67ECED82CA925DA6F330C90E595200F62C79D5D9C69A1671C6BE0CF10F9093646E642E0D0870CE';
wwv_flow_imp.g_varchar2_table(7) := '6B19F01618DEF644B236CC58BBB4DD6A615B4A00B62D29BB3A62C3A39CB36F3286ABAC962C8A27750438C75130FCD61EE16BE6AC2DAD499D27C9ED597901D8B3E4B9CC369B6BA90EB68C013725170F5923021712E0E01B18D86A4F24F8DA8CB5DF6D5599';
wwv_flow_imp.g_varchar2_table(8) := '91D20250555CFE5506FEAF00BB4EE52490EF6A12E09C6F03D77E54F0EAA3EFAA1901D43C1DB8BAF885853A673F638C15AA0A9EFCB60E01CEF9668DF1A7F22B96AF572D2AA59E00C4E37E4073BF008662D54093BFE94080BFE88984BEADD2CF026504604B';
wwv_flow_imp.g_varchar2_table(9) := 'F1EA1B01FE7B0093D26128518C8A12E0FC804DE74573D62EDFA642044A08405551F9371920BEF99D2A40251FD39C00473B0796175496FCCEEC244C2D001C9C6D295EFD0C037E687690E41F11B8C8FB8267E65694FED8CC644C2B0062314F406B7E058CDD';
wwv_flow_imp.g_varchar2_table(10) := '6F6680E41B11B81C01CEF13BAFEE5B6ED64544A61400B121C73BF2E0EB6010ABF8A81101D509BCE56F98F435336E4432A500541597BFCC800754CF3AF94F04BA08F017E756943E6C3622A61380EAE2D53FE7E04F9A0D14F943041225C0C09ECDAF78F407';
wwv_flow_imp.g_varchar2_table(11) := '89DA49E6FDA61280EAA2F22738C32F921920D922026622C038BE975F59F24BB3F8641A01A85E5A369F6BF818609A59E0901F4420D9043847C4A66361DEDA92BF25DBF640EC994200CECFF87F06C6260F2408BA8708A84480735EE3D5B3AE33C39B015308';
wwv_flow_imp.g_varchar2_table(12) := '00FDEE5769F892AFC9206096F980940B407551D90C1D6C2763B025032CD920022A1088FD14D066E7AD5DB63B95FEA65C00AA8ACADE608C7D259510A86F22900A029CF3370B2A4BEF4B45DF9D7DA65400CE6FF0D9984A00D437114825012D829B53392198';
wwv_flow_imp.g_varchar2_table(13) := '620128171FFE1B539900EA9B08A498C047732B4A16A6CA87940940D5D2B2FB98C65E4F55E0D42F11300D01C6EF9AFB4AE93BA9F0276502B0A5B85C544FB9251541539F44C0640452F614901201D8FE60D9F87084D582A95992CC648387DC519D0007E7BA';
wwv_flow_imp.g_varchar2_table(14) := '3EB960EDF25AD9A1A44400AA8ACB5732E069D9C1527F44C0AC0438F093828A9295B2FD932E00B1221FE5B50C6CBCEC60A93F22605602E21092B9952593191897E9A37401D85CF442A1C6B44F6406497D11011508E85C9F5758B97CB34C5FA50B002DFB95';
wwv_flow_imp.g_varchar2_table(15) := '995EEA4B2502A9F819205D00AA8ACAC5B2DF5C951243BE12011904385055505122F5AC0BA902B0BDB87C4C98A39E66FF650C27EA4339021C5CD3C383F3D63EDE24CB77A902B0A5B8FC11006B640547FD1001D50830CE1FC8AF2CAD90E5B75401A82A2AFB';
wwv_flow_imp.g_varchar2_table(16) := '0FC6D8E3B282A37E88806A0438E7AB0A2A4B57C8F25BAE0014976F664081ACE0A81F22A01A01D9F300D20480AF5CA96DD99BD3CA1832544B0AF94B04A411E03C903FBDDEC756AED465F4294D00B62C59330B367D878CA0A80F22A032018D69D3F35E59B6';
wwv_flow_imp.g_varchar2_table(17) := '4F460CD204A0AAB87C05039E971114F541045426207322509E00D004A0CA63927C97484066BD40890250FE0E63582C9123754504942420B354984C01A015804A0E47725A3601CEB1ABA0B264968C7EE50940715903031B292328EA8308A84C80839F28A8';
wwv_flow_imp.g_varchar2_table(18) := '281D252306290210DD025C54DECE18B3CB088AFA20026A13E01DF915252E195B83A508C0D6C75639F4667BBBDA4921EF89803C02FE86490E19C7894B1180E8D15FB696903C7CD41311509B8027E273C9383A4C8A006C5AF26A86DDD612503B25E43D1190';
wwv_flow_imp.g_varchar2_table(19) := '47201CF1796E5CBBB4CDE81EA508C0D67B567974AFDD6F7430649F08588580E60F7BF3DE7EDCF02F4D2902B067C97399019BBBC52AC9A1388880D1043C91A06FC6DAEFB61ADD8F1401D8776FB9AFD98366A38321FB44C02A04B202C89AF65689E15F9A52';
wwv_flow_imp.g_varchar2_table(20) := '0460F3375ECCD2222169554EAC3208288EF425A0DB5C830A5F7AC8F02F4D2902F0E9832F0D0EEAC133E99B4E8A9C08F48F80160967CB280D4602D0BFBCD0D544400A0147501B3CFB8D65E78CEE8C04C068C2649F080C800009C000A0D12D44C02A044800';
wwv_flow_imp.g_varchar2_table(21) := 'AC92498A83080C800009C000A0D12D44C02A044800AC92498A83080C800009C000A0D12D44C02A044800AC92498A83080C800009C000A0D12D44C02A044800AC924993C4C13947BB1E46871E46580F23A2EBD098069BA6C1CE6CC8B0BBC0989465212621';
wwv_flow_imp.g_varchar2_table(22) := '626E374800CC9D1F25BC6B8F74A0A53D80E6763F8291CB1764D21843A6C3039FD3832CA75789F8ACEC24098095B36B706CC1703B1A02A7D1161E581126BB6643B6CB87C12E1FC47F53934F8004403E734BF4783AD8849381B3178D252B3B0B19995EB8DC';
wwv_flow_imp.g_varchar2_table(23) := '2ED81C76B4B5F811F007E06F6E412472E15174E2A960B477183D11A460649000A400BACA5D8ADFF5C75A1BE10F077B84E170BA3076F2388C1837124EEFA5CF656D3A7106C70E1C4163C3A90B3088278151DEA12AE351CE771200E552963A87C37A04879A';
wwv_flow_imp.g_varchar2_table(24) := '8F4727F8BAB7B193C661DC7593A3DFF67D6D217F1B1A0ED4E348CDA11EB7643A3290E3A3631DFACA31D1EB4800122568A1FBC5B77B58D7C1C1A333F60E5BCF0FF491E6861EDFFC5983B23025EF5A7806F9064CC17FBA09BB37ED40474747DC86981CBC2A';
wwv_flow_imp.g_varchar2_table(25) := '73F8806DD28D7D274002D0775696BBB273F6BEB5A30D815E8FF49DC17AEC6E643A33108A74A029D4553A6EC8B0A1B86EC10D4961126C0D60F786ED08B67515A71DE9198221EEACA4D82723972640029086A343BCAB3FD5760E62226F202D33CB87DC8579';
wwv_flow_imp.g_varchar2_table(26) := 'D0EC7D7FE4BF523F1DA1F6A808888942D1C4C4E0A4ACAB2E780AB9921DFAFBFE112001E81F2FE5AF0E864338DADA8876BDEB91BB3F418999FDD9B715C0E176F5E7B63E5DDBD61CC0D6F737C6AFF5DADD189725E5E8BA3EF967C58B4800AC98D54BC4241E';
wwv_flow_imp.g_varchar2_table(27) := 'E18FF91B7BFCADCBE5C488B1A391357C3032BC1E38329CB03B1D680F04D1DE16C2A9FA13387EA81E9148040EA713B90BF29191E5318CDA91DD3538BCBF366E5F4C088A89416AC61020013086ABE9AC9E0BB5E0B8FF74DC2F9B4DC3C4695330F2EAABA0D9';
wwv_flow_imp.g_varchar2_table(28) := '2EBF08470F8771EAC8090C193D0C8E8CE47FF37787A54722D8FAEE468482B1C545342168EC5022013096AF29AC073A8238DCD210F7457C93CFBC790E3C83324DE15F6F27CE1C3D85BF57ED8CFFF194EC1C5A296850A648000C026B16B33AD771A0E928C4';
wwv_flow_imp.g_varchar2_table(29) := '3B7CD1EC763BE6DC5E78D9C53A66F0FD93B7D6211C8EAD3718E31D86412E738A95195825E203094022F414B8B7B1ED5C74C6BFB3CD5A900FDFB06CD37BFEF78FB7E34C63EC27CB50F7208CF00C36BDCF2A3A4802A062D6FAE8B358D8B3FF5C7DFCEA09D7';
wwv_flow_imp.g_varchar2_table(30) := '4C42CE8CC97DBC3BB5971DFE747F7C95A0D7918171B43AD0908490001882D51C464FB735E1645B6CC38ED3E542FE9DF3AF38E1670ECF8153878F63DFB63D51776CCC8621EED86A43B16BD0A139E0D06C70DA1C667157593F4800944DDD951D3FD27202FE';
wwv_flow_imp.g_varchar2_table(31) := '8ED8EABAB113C761E2ECA957BE29C557B4349EC3E9A32771A2FE38DA4397AF2D205C152B153D0E77ECDF546CA4DFD92301E83732756EF8E26C1D223C36F977FDBCD9C81E3DCC94CE8B577FC76BEA50B7FF083ADA07565B20F6A4A045E70BC41262AA3AD4';
wwv_flow_imp.g_varchar2_table(32) := 'B7549300F48D939257ED3DD3B5D3AE60F1CD707ADDA68BE3E4C16338F859CD453FF86E6F06464CC9813B2B036E5F06EC6E2742CD01B49E6CC2C9DAE3686BBEF8B1F6E267C2888CC1F4E6A00FD92601E80324152FE9888451D3D4350138FFDE5B93BA763F';
wwv_flow_imp.g_varchar2_table(33) := '5126E150073EDBB4134D672F3C977272FEB51877D3740C9F33E1B2DD041B5B71664F1D0E6CD883E39F1FB9E05AB18250EC2A143509A95D9C00098045478628D755DB7C2C1EDDCDF7DF619A48452D803D7FDB8180DF1FF789D96D9879670126DD390B8EEC';
wwv_flow_imp.g_varchar2_table(34) := 'FE2FFD0D9E6CC1C1777660CF7BD53DE2746A0E8CF58D808B260C2F9A7F1200D37C2C92E788D8ED2726FFEA5A4FC68D16DE7D0B1C2E67523A89748411094710690F43D723D145450E67DF66E4FD675BB07BE37674B4774DF04D9A7B2D721FBD0D8ECCC497';
wwv_flow_imp.g_varchar2_table(35) := '1987CEF8F159C546ECDFB43B1EAB981B1893399CF6145C24FB240049F948A4DE88D8D32F36FB88029DBD2BF608EF66DE9487412306BE98A6F574131AEB1AD050DFD0E3C3DB19B9CD6643E6201F3C5E0F3C5999183E7E341CEE9E82136A0D60FB8755F115';
wwv_flow_imp.g_varchar2_table(36) := '7EE2DEC287BF84718BAF4F3AC0BA0FFE8E4FD6BCD34304C6678DA627815EA44900923EF4E41A149B7C4EB7355F717BEFF41BAEC3B00963FAED5CC3C17AD47D5E8B605BCF1A807D313462F4488C99322EBAF250CCF4EFFAB01AAD2DB1FDFEA22DFC9F5FC5';
wwv_flow_imp.g_varchar2_table(37) := '88B993FA626A40D79CDD7B1C7FFD3F2FC7EF153F0726648D8E9E51402D46800440D191202AF434F84F5FB2924FF7B0C4E61FB1FEBF3F3BF91A0F1DC3C1BD0710BACC07DF3B242BFAE16E6D6C42EB994B1717C9F465C2E576E3F4A9AEADC8467DF3F74EE7';
wwv_flow_imp.g_varchar2_table(38) := '894F0EE0A3E7DE88FF31AD2AEC498804404101B8D8BE7E11866F5016868C1A8E41C3B3E1CA70C3EE7244F7F6F7A789DFF77B37EDC2D9D3672EB86D58CE484C5D9C87C153C7C03DCC0BCDD1B58D38120AA3EDF839F81BCEE1C49E23D8B77EC725BB15B3FC';
wwv_flow_imp.g_varchar2_table(39) := '73FEE9AEFEB895D0B507DED88A6DAF7D14B731CA331483CFAF2C4CC8B0056E2601502C89DD97F776BA3E6CF4088CBF7672C2DB7BDBFD6DD8DD6B765EF431ED96D998B468263227F67D21516B6D23AA57FF15A76ABBDE44085B2E8F1BFFF06F257064C95D';
wwv_flow_imp.g_varchar2_table(40) := '93B0EEC7AFC47D7168765C9D3D56B1CC1BE32E0980315C0DB12A76F589DD7D9DCDE17062C6BC5C642661775FA0A9159F7EBC0D1D1D5DB3F3437346A260C55DC81C3FF05AFDC73EFA1C5B5FFE00417F6C49F28215F760D44DD718C2E77246FD7567F0A7A7';
wwv_flow_imp.g_varchar2_table(41) := 'D6C42F19ED1D1A3D9528DD1B09802223409CBD57DFEDB59E3B2303D7DF7C03DC998997E7120539777E58D563A26FCE925B30F92B7949A1136E0DE1D8C62FA0D96D187BFBB549B1391023BBCB3EC4DEF33F4DE8292046900460202349F23DA27CB7389023';
wwv_flow_imp.g_varchar2_table(42) := 'C263C76A450B73DE5AD0AF49BDCBB9FCE9BA2D683ADB358977FB3F2FC5D0993992A334BEBB40DD59FCF1A9D5F18E26668D81DB9E9CB511C67B6F4C0F2400C6704DAAD5C3CD0DF1D97E51CB6FF6ADF3925698F3E8DE5A1CDC5B13F737558FE84905761963';
wwv_flow_imp.g_varchar2_table(43) := '9BFEEF1F50FF59ACE8E8F08C6C0CCB307F711423D9900018493709B6FD1D411CE956CFEF9A99D331F2EAE44C60750443D8FCE78FE35EDEF0B505B8FAABF949F0DABC26EA3FF80C9BD6FC25EA6086DD155D1790CE8D04C0E4D93FD8740CA1486C62CEE3F5';
wwv_flow_imp.g_varchar2_table(44) := '62CEE21B93E671CDB6BD387E38B66168EAC259C82DBD3D69B6CD6A48BC9DF8F38F7F1B776FFA90CB6F38326B1CC9F28B042059240DB0230EF1A86D3E1EB72C6AF2672561C65F1814B3FEDB3EF8246ADBE976E1DEE7BFDDE3BDBE01E198C26424D08EFF7E';
wwv_flow_imp.g_varchar2_table(45) := 'ECD7715FA6648F855D4BDE0947A608B21F4E9000F40396EC4BBBBFF317C771CD5E54983417BAD7DC9BBE7036AE2FBD2D69B6CD6EE8D587FE5FDCC58959A3E1B627BE09C9EC315FCA3F12001367AEFB69BCE3AE9988F133AE4E9AB75BFEB221BECCF78E1F';
wwv_flow_imp.g_varchar2_table(46) := '3E80C1D7F67F9F40D29C916CE8DDEFAD41D3A9D84AC79CCC11C87426FE2A55720849EB8E04206928936FE88BB347E2AFFE726FCE8B1EDF958CD6D6ECC7D6F737C54D7D7DCD1369F1F8DF19F0074FBD88D37527A2FF9BEE670E900024E31365908DEE25BD';
wwv_flow_imp.g_varchar2_table(47) := '0AFF6141D20EE4EC5E71D7377410EEFA55A9411198D3EC5B2B9E8738929C9E0068219039472880DE35FD9359D2AB7EEF21D4EEDD1FFB005C3F19F39EBCCFB41C8C70ACFB1C80780D285E07A66BA327009366DEC8925E07B6EDC5B1F3AFFFAE5B9487EB1E';
wwv_flow_imp.g_varchar2_table(48) := 'B9C5A41492EF56E8742BDEFCA75571C3D7648F4BEBFA002400C91F6349B1D8FB09A0F0CB0BFB5C76EB4A0E7CB661477C6F7EC1371661FC5DB957BAC5327F7F6A6B2DD6FDF20FD178449DC04983AEB24C6C030984046020D424DDD37D0E20EF8EF9C8F0F5';
wwv_flow_imp.g_varchar2_table(49) := '7FB65A14E06C3DD30C7F532BFCCD2DF037B7A22D10DB9927DAFCE577E3AA5BA6498A28F5DDECF8CD7BF17A81E2C051310998CE8D04C0C4D9DF7FAE2E7EAAEF75F933312467649FBD6D3A7516C7F61F4663C3A9CBDE53F8ADC51877C78C3EDB55FDC2374A';
wwv_flow_imp.g_varchar2_table(50) := 'FF1DEDC1D8E1236E9B33BA1F805E032EBBB0367B9213CD926CEFA2E63E7DF0A5C1413D7861291B199D1BD0475DCB0988629FA28D1E7F15AE9E73E5ADB467EA4FE2D06735F0B77695DCBE946BA26AD0A27F29863781FDFE06846D98C98E736D78FD1F7F73';
wwv_flow_imp.g_varchar2_table(51) := '817DF153409C26948EF501E809C0B0E196B86151F0F3B83F7644B6D3E944C1972F3D59274A791DD8B12F7AA6DEC5DAD86B2762D48CF1706579E1F4B9E1F0B8E19B340C36577A2D833DBA6E2F76FE61034479F2DE4D9C2F287E12386CE9C3840420F1CFA9';
wwv_flow_imp.g_varchar2_table(52) := '61167A4F04CE289C8DC1632EFCCDDA72EA1CF6567F8AD0F947DB4E87864F1C83E977E563D8AC71B07BD27BDF7BEF2435D59CC4F12D35F87CDD8E1E854FC51902233D43D2E658311200C33EBEC9317CB4F5149ADB638FF31E8F0773EE9CDFC370F38933D8';
wwv_flow_imp.g_varchar2_table(53) := 'B5715B8F3F1375F9E73CB810A36F32FF69C0C9A134702BED6703D851F63E0EEF8AAD8BE86CA24E80981FB07A23013079864535A0034D47E35E76DF132096F4EE58B7199148AC529068A280E7750FDF0C9BBB7FD5804D8EC170F71A3EA9C186557F040FC7';
wwv_flow_imp.g_varchar2_table(54) := '4E53166D846770F4B4612B37120005B22BEAFF9F0D75FD66BDBE7036444DFE1D1F6E8E3FF6DB1C76CC7FEC6E8C9A97BC0D430AA049AA8BA270E8FA675F83FF5C17EB1CDF484B1F29460290D421648CB1B01EC181A67AE89C473B10C770B9BD9EE87B7DD1';
wwv_flow_imp.g_varchar2_table(55) := '44EDFFC53F7908DE9C21C63890465683279AF1EE8F7F8F5020761292386A5CD40E14FFB66223015024ABE275A0782D78B1B6E89F8B30646672CA842982C350379BBF3881777EFA62BC0F71CCB87812B06223015028AB6232504C0A766FF90FDC868977CF';
wwv_flow_imp.g_varchar2_table(56) := '56280A355C3D597500EB7FDD75A49855B70D9300A8311EE35E76AF103C7CC268DCFACC838A45A08EBBDBFFFD5DD46CDE1375D8AAFB064800D4198FE8FD4660D193C518727D7A6F6631327DA1C656BCF944D7CEC1B19923E0B358F5201200234750926D1F';
wwv_flow_imp.g_varchar2_table(57) := 'F737E25CA8356A75D4941C2C787A69927B2073BD09ECFDFD06EC7E77CBF9A70027260DB256E934120085C67CF7DD810BBEF3158CBA915EF9199D3EF156E0ADFFF542BC1BB17D58FC1CB04A2301502493BD0F08F9DAAAFF019B9796F7CA485FF71A82563B';
wwv_flow_imp.g_varchar2_table(58) := '5A9C0440C6084A421FE25460713AB0686263CF8D3FBC3F0956C9445F08D4BCB115DB5FFB287AA9CFE1C158DF88BEDCA6C43524004AA409D1D77F9D7B0272EF998FA945C93B234011042973F3CCEEA378FFD98A68FF4ECD81C9D9D69978250148D9B0EA5F';
wwv_flow_imp.g_varchar2_table(59) := 'C7DD8F089BF7C862E42C4A9F221EFD2395FCAB0347CFE18F4F96C70D5BE938311280E48F17432C7E71B60E111EDBA872DBF7BF8E61378C37A41F327A2181DEC78959A9902809802223FEF3B387E37B01EEFAE937E19B345C11CFD57753EF88E0B565BF8C';
wwv_flow_imp.g_varchar2_table(60) := '0762A5370124008A8CCFEEAF00BFF4A36F207BFA28453C57DFCD8E96205EFFF673240009A4926A0226004FDCDABD40E82DFF781F46164E4ED022DDDE5702C1C656BCD56D4520FD04E82BB9AEEB4800FACFACC71DB54DC7108CB447FFACF0E12F61DCE2EB';
wwv_flow_imp.g_varchar2_table(61) := '13B448B7F79540CB8153F8CBD3BF8B5EAE3186A983AD33FF423F01FA3A0A527C5DF7D780536ECAC5EC158B52EC51FA745FF7DE6E7CF2BBF7A2015B6D5310098022E3F84CB0192702B18AE76E6F06EE5DF51D453C57DFCDEDCFBD8B9A4F62BB02B35D9918';
wwv_flow_imp.g_varchar2_table(62) := '6DA1C344480014199FC17008B5CD5D25BFEF7CFA21644DB166910AB3A5E48D925FA33D14FBF97555E6706439BD667371C0FE90000C189DFC1B6BCED5A3430F473BCEBD7B1EA63E70A37C27D2ACC7864D35F8F8376FC6A39E929D63A9F26024000A0D68B1';
wwv_flow_imp.g_varchar2_table(63) := '1740EC09104D1401BDF7578FC19195A15004EAB9FAB7675EC3B17D87A38E5BB1341809804263B27771D01977E4E3DA6F2D502802B55C3DB7AF01EF3DF352DCE971BE51F03ADC6A0571056F4900144BE7C9C0599C0E36C5BDBEF7172BE01E6E9DDFA46649';
wwv_flow_imp.g_varchar2_table(64) := '472414C6BBFFFBBFD07A26C6DA65B35E31101117098059465C1FFD88E87AF4A090CE7D0123AF1E8B053F5A02E6D0FA68812EEB0B817D2F6FC4A77FDE1CBF7442D66864D85D7DB955A96B4800944A57CCD9D6F600EA5A4FC63D9F34671AF2BE77B7829198';
wwv_flow_imp.g_varchar2_table(65) := 'D3E5A3EBF76163D99FE2CE899383C57981566C24008A66B57B7D4011C2D45B662177F9ED8A46631EB76BDFDE81EACA0FE30E89853FE26010C6A42C66950E8204403AF2E474C839C7E19606B485437183A250E8BCEFDF0B87CF5A1355C92176652B3B57FD';
wwv_flow_imp.g_varchar2_table(66) := '155F6CF8347EA143B363BC6F94A58F0B2701B8F2B830ED15623EE070CB7184221D5DDF585E0FE62CBD05636FBFD6B47E9BCD31B1D967D32FDE42E3E1AE8556E9F0E11779200130DB68ECA73F4204EA5B4F22108E9D65D7D9068F1A8AD90FDF8661B9E3FA';
wwv_flow_imp.g_varchar2_table(67) := '69317D2E6F6B68C2C1F776E1EFEF55F7085A94FD1AE71B69E96FFECE8049002C32DE7B9F20DC1956F6C821189F3F0DA3664FC4A0A95443A0B5B6118DFB8EE2C49EC338BC6BFF05D91FE4CAC4C88C21B069E9F1568504C0220220C21007888AC941B160E8';
wwv_flow_imp.g_varchar2_table(68) := '526D58CE280C1A3314BE5183E17059A7BEFDA5E28D84236869388333F58D387DA4E1925C6C4CC328EF504BADF3EFCBD02601E80B2585AED1B98EB3C1169C0E36C7D70A28E4BE7457C5073FDBE5C350F7A0B4F9D6EF0E990440FA9093D3A1981B1065C45B';
wwv_flow_imp.g_varchar2_table(69) := '3B02D1F9019D73391D2BD08B8DD9E0B63BE1B5BBA31FFE7479DCBF586A48001418B0C97031186E4728D21EDF4D980C9BAAD8101F7851C9C7A6D92066F7AD74B457A2392001489420DD4F0414264002A070F2C8752290280112804409D2FD444061022400';
wwv_flow_imp.g_varchar2_table(70) := '0A278F5C270289122001489420DD4F0414264002A070F2C8752290280112804409D2FD4440610224000A278F5C270289122001489420DD4F0414264002A070F2C875229028014B09C08EFBD66477B8F5B38942A1FB8940BA10D06DAE41852F3DD46C74BC';
wwv_flow_imp.g_varchar2_table(71) := '520AAA6DFEC68B595A24D45533DBE8A8C83E11509C40560059D3DE2A69313A0C2902B0EFDE725FB30786AB99D1B0C83E119045C01309FA66ACFD6EABD1FD4911803D4B9ECB0CD8DC86AB99D1B0C83E11904540F387BD796F3F1E30BA3F2902B0F59E551E';
wwv_flow_imp.g_varchar2_table(72) := 'DD6BF71B1D0CD927025621108EF83C37AE5DDA66743C520460CF92579D015B4B579D6CA3A322FB444071029E88CF3563EDD2D8D9E706362902C057AED4AAF7E55CBA209E8101926922A02281FC697536B672A56EB4EF52044004B1A5A82C08C6AC77889B';
wwv_flow_imp.g_varchar2_table(73) := 'D11922FBE94780F3D0DCCA5229A7C8481380AAE2B2430C6C7CFA6593222602FD23C0C10F1754944EE8DF5D03BB5AA200946F6640C1C0DCA4BB88405A11F8686E45C9421911CB1380A2B23718635F911114F54104D426C02BE7569416CB88419A005417AF';
wwv_flow_imp.g_varchar2_table(74) := 'FE39077F524650D40711509900037B36BFE2D11FC888419E0014951573C65E911114F541045426C0387F20BFB2B442460CD20460EB036BA6E95CDF2B2328EA8308A84C4063DAF4BC5796ED931183340188AD0518DB01B0F438DD5146F6A80FEB11E03C90';
wwv_flow_imp.g_varchar2_table(75) := '3FBDDE27630D8080274D0044675B8ACAF78161AAF5B246111181E410E040554145496172AC5DD98A5C01282EAB0058D195DDA22B88407A12E09CAF2AA82C5D212B7AA90250555CBE8201CFCB0A8EFA2102AA11E0C0B70B2A4AFE4396DF520560F3FD2F8C';
wwv_flow_imp.g_varchar2_table(76) := 'D51CDA1130B93F3D64C1A47E8840420438B89D61EC0D1525C712B2D38F9BA50A80F0ABAAA87C2763C8ED878F742911480B029C63574165C92C99C14A17005A102433BDD4974A04642E00EAE492020178612187B64EA5C490AF444006019DEBF30A2B976F';
wwv_flow_imp.g_varchar2_table(77) := '96D157CA0460EB63AB1C9166DB7EDA192833CDD497E909707EC47F62F2E45BD7DF1A96E9ABF42780E83C4071F94A063C2D3350EA8B08989900077E525051B252B68F291180ED0F968D0F47582DBD0D909D6EEACF8C0438E7619BEE989CB7F65B4764FB97';
wwv_flow_imp.g_varchar2_table(78) := '120138FF36E01DC6B05876C0D41F11301B01CEF99B0595A5F7A5C2AF94094075314D06A622E1D4A7F90830E8B7E6572C5F9F0ACF522600F414908A74539F6623C039DE2DA82CB933557EA55A007219C3CE54054FFD12815413D022DACCBCB5CB76A7CA8F';
wwv_flow_imp.g_varchar2_table(79) := '940A40EC29804A85A52AF9D46F6A09A4F2B77F67E42917806D4BCAAE0E6BD8C118CB4C6D3AA877222095805FE3B6DCBCCA470E48EDB55767291700E14F7551F9139CE117A904417D1301990464EFFABB546CA61000BEE455DB165BCB7A06DC243309D417';
wwv_flow_imp.g_varchar2_table(80) := '11480901CE37CEAD2C35C5583785008824D04F81940C45EA543E01533CFA9B660EA03BFFEAA5E55FE31A7F95EA06CA1F95D4A30C025CE7605F2FA828795D466F7DE9C3344F009DCE6E292AFF01187ED617E7E91A22A01201C6F1BDFCCA925F9AC967D309';
wwv_flow_imp.g_varchar2_table(81) := '8080B3A5A87C351896990914F942041222C0F9AFE656963E91900D036E36A500882DC37AB3ED4F00BBC38098C92411904DE0F5FC69755F9755EABB3FC199520044005BEF59E5D13DB6DF83B1FBFB13105D4B04CC44402CF6B105220FE6BDFD78C04C7E99';
wwv_flow_imp.g_varchar2_table(82) := '7212B037200ECEAA8BCB7F0AB07F31233CF289085C9E00FF597E45C98F1818372B29D33E017407565554FE4D00AB1983CDAC20C92F221027C0D10EE0D1B995252F999D8A120210FD4950BCBA40E7FCB774B290D987549AFBC7B19B333C5A5051B2550512';
wwv_flow_imp.g_varchar2_table(83) := 'CA08808059FBC81AF7C9A0FE0306FE43803954004C3EA60B012ECEBDFCB99615FED7BCFF7CBC4395A89512804EA8C3A4AB700000027C494441545545FF790D83F66F60EC1E5540939F1625C0C139C37FDB23FCA9396B4B6B548B524901E8845CBDB46C3E';
wwv_flow_imp.g_varchar2_table(84) := '6778168CCD570D3CF96B05025CEC5FF97E7E45E90E55A3515A003AA16F2E7AA19031F61DC6B1148CB9544D06F9AD0001CE43007B8D71FE7CFEABA51B15F0F8B22E5A42003A23DCFAC0AA613AB73D028E15606CB2EAC921FF4D45E020D7F92A9B2DB23AEF';
wwv_flow_imp.g_varchar2_table(85) := '95C71B4DE55902CE584A00BA73A85ABA7A3163FABDE7E70972126044B7A62F813A70FE47A6F1D7F35F59FE572B62B0AC00F41083A2F25CC6F93D60B8038CCD01E0B5623229A68409F8C1F93630F63E22DADB73D72EB37CBDCAB41080DEC3A2FAC1D59378';
wwv_flow_imp.g_varchar2_table(86) := '24320B60B91CC865C078303602C098848710195081C031707E92038719B00BE0BB343876A5BA3C572AC0A5A5005C0EF4BA85EBEC13261CB2FBFD017B10769BD391A9B5B58535873DA2B5DB239A3DA46B9AD34EDC52315AAFD0A7DE1EE66197A63BC336BD';
wwv_flow_imp.g_varchar2_table(87) := '236CD33332EC7A7B47ABEE4638E2F57AC2870E4D08CB3E7BCF84987AB84403D9EC1922FF8880810448000C844BA68980D9099000983D43E41F1130900009808170C93411303B011200B36788FC23020612200130102E9926026627400260F60C917F44C0';
wwv_flow_imp.g_varchar2_table(88) := '4002240006C225D344C0EC044800CC9E21F28F0818488004C040B8649A08989D000980D93344FE1101030990001808974C1301B3132001307B86C83F22602001120003E1926922607602240066CF10F947040C24400260205C324D04CC4E8004C0EC1922';
wwv_flow_imp.g_varchar2_table(89) := 'FF8880810448000C844BA68980D9099000983D43E41F1130900009808170C93411303B011200B36788FC23020612200130102E9926026627400260F60C917F44C04002240006C225D344C0EC044800CC9E21F28F081848E0FF03248F48C45DB205520000';
wwv_flow_imp.g_varchar2_table(90) := '000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4320263689395978)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD07945CD77DE7F95FA5CEB9D1688446CE8101240812CC202951E230C9A6462BC941A36069288791353A6B';
wwv_flow_imp.g_varchar2_table(2) := 'AFE5B5BCB2763D236B258D9265055B238F24DB4A14294A34C50882044804020440E4D04077A373AAAEAE5C735ED39419F0AA5E755775BD57F75BE7E04047BCEFDEFBFFFC2F59FFAA7AEF5EDFF3FFC7B732E285000208208000024609F828008CCA37C122';
wwv_flow_imp.g_varchar2_table(3) := '800002082030254001C042400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A21';
wwv_flow_imp.g_varchar2_table(4) := '2380000208204001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A2123';
wwv_flow_imp.g_varchar2_table(5) := '80000208204001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380';
wwv_flow_imp.g_varchar2_table(6) := '000208204001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A21238000';
wwv_flow_imp.g_varchar2_table(7) := '0208204001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A2123800002';
wwv_flow_imp.g_varchar2_table(8) := '08204001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208';
wwv_flow_imp.g_varchar2_table(9) := '204001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A21238000020820';
wwv_flow_imp.g_varchar2_table(10) := '4001C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A2123800002082040';
wwv_flow_imp.g_varchar2_table(11) := '01C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001';
wwv_flow_imp.g_varchar2_table(12) := 'C01A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C0';
wwv_flow_imp.g_varchar2_table(13) := '1A400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A';
wwv_flow_imp.g_varchar2_table(14) := '400001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A40';
wwv_flow_imp.g_varchar2_table(15) := '0001041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A4000';
wwv_flow_imp.g_varchar2_table(16) := '01041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A400001';
wwv_flow_imp.g_varchar2_table(17) := '041040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A40000104';
wwv_flow_imp.g_varchar2_table(18) := '1040C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A4000010410';
wwv_flow_imp.g_varchar2_table(19) := '40C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A400001041040';
wwv_flow_imp.g_varchar2_table(20) := 'C040010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B00010410400001030528000C4C3A212380000208204001C01A400001041040C0';
wwv_flow_imp.g_varchar2_table(21) := '40010A0003934EC80820800002085000B00610400001041030508002C0C0A413320208208000021400AC010410400001040C14A0003030E9848C00020820800005006B0081321148A4928AA5E29A4CC5154DC694CAA495CE6494FEB7BF539994FC3E9F82';
wwv_flow_imp.g_varchar2_table(22) := 'BEA042FE8002D61F9F5F417FE0953FBE802A03150A0582652242180820904D800280F58180470592E994C28988C2F14945A6DEF0530589A43210526DA87AEA4F5DA8BA207DD2090208B84F8002C07D39614608D80AC453098DC7230A27AC37FD68D1A5AC';
wwv_flow_imp.g_varchar2_table(23) := '6F0C6A83FF5E0CF0ED40D1C91900815913A00098356A064260FA02E1784443B1714512516594997E4733BCD2FA56A0ADBA49D5C1CA19F6C4E50820506A010A80526780F111B011B07EBB1F8E8E6B3836AE443AE92A270A0157A583C920302D010A8069B1';
wwv_flow_imp.g_varchar2_table(24) := '711102C515188D85D537392CEB777E37BF2804DC9C1DE6864076010A005608022E128826E3EA991850341577D1AC724F854220B7112D10709B000580DB32C27C8C15E89F1CD1E0E468497FE39F297E4B5583DA6B5A66DA0DD72380C02C085000CC023243';
wwv_flow_imp.g_varchar2_table(25) := '20904D20994EAA3B3CA08902DCD55F5555A5869626555657AAAABA4A15D5950A55552A5453A9CAAA4A29E0532A96542A99542A9154321AD7C4D8842646C7151E0B6B7C746CC6C9AA09566961DD1C05FDEC2730634C3A40A08802140045C4A56B04720958';
wwv_flow_imp.g_varchar2_table(26) := '8FF3596FFED37D86DF279F1A5B9B35675E9B9AE6B7AABAA136D79059FF793A95D268DFB006BBFAD4DFDDAB64727A371F067C0175D4B5A9265435A3F970310208144F8002A078B6F48C405681BEC8B006A3A3D3529AD7315F2D0BDAD4D4DEAA40A8789FB4';
wwv_flow_imp.g_varchar2_table(27) := '47FB8634D4DDAF9EB35D4AA5F2BF21716E4DB35AAB1AA7152317218040710528008AEB4BEF085C54E0FC789FC61391BC75162EED50C79A65AAA89DDD4FD6C95842DDC7CFAAF3C41965D2F9ED43D05051AB85756D79C7CA050820505C010A80E2FAD23B02';
wwv_flow_imp.g_varchar2_table(28) := '6F12C8F7CDDFFA9A7FDE92855AB476A92A6B4BBB356F221657D7D1B3EA3AD5A9743AED38BB8D95755A503BC7717B1A228040F10528008A6FCC0808FC5AA02BDCAFB1F88463919ADA5AADBBFA12D534D53BBE66361AC62626F5F2CE0379DD3468FD1460FD';
wwv_flow_imp.g_varchar2_table(29) := '24C00B0104DC214001E08E3C300B03047A23431A8A3ABFCBBE63D9222DB97495FC81802B7532E9B4CE1D3AA5CEE3671C3FBA38AFA655CD55EE2A665C89CBA4109805010A805940660804AC4FFDD6A77F27AF504585D65D75891ADBBDF13CFD58FFB08EBC';
wwv_flow_imp.g_varchar2_table(30) := 'F09262D19893F0A6EE07B0EE0BE0850002A515A00028AD3FA3BB4CC07A26DFDA8D2F914E2999494DEDC16F6DC76BFDFFD6DFD6413CD6236E019F5F01FF2B7F07FD0185FCC1A9E373ADA374DFF88A26633A3DD6E328D2B6F973B5F2CAF50A56BCB91F471D';
wwv_flow_imp.g_varchar2_table(31) := '94A851329ED0893D87D5DFD3E768068BEADB396AD891148D10289E000540F16CE9D9230293C9D8D4F1BAD6897B33DD82B7C21F526DA86AEACDCD7A063E93914E8D7539DAD37FC1D20EADB8629D47D42E3ECD53FB8EA8EBF4B99C3158C70C2FA99FA72A4E';
wwv_flow_imp.g_varchar2_table(32) := '15CC694503048A254001502C59FA75B5C0783C32F5185E383E39ED4D789C04687D33E0E4243FEBB9FE555B363AE9D2F56D8EBF704817CE75E79CA765B3A271A17C3E5FCEB634400081C20B500014DE941E5D2C60FD163F3039A2582AE19A595ABBF8ADDD';
wwv_flow_imp.g_varchar2_table(33) := '7A59D9BC116632191D79EE80062EE4FE39A0ADBA4973AA9B5C930B268280490214002665DBE058ADAFF8FB23C333FE8ABFD084CDAD2DDA70FD26F902FE42775DD2FE32A9B40EEDD8A7E181A19CF358D9D8A150A078BB19E69C000D1030548002C0D0C49B';
wwv_flow_imp.g_varchar2_table(34) := '12B675035E6F645891021CB45368B38A8A0A6DBEFDBAA26EE55BE839E7D39F7563E09E479F533C96FDE980FA508D3AEAE7E6D3356D1140A0000214000540A40B770AB8FD78DD4BAEBD424DF35ADD8957A059598F08EEDFBE3B676F3C159093880608145C';
wwv_flow_imp.g_varchar2_table(35) := '8002A0E0A474586A817426ADF3E17E4D24264B3D15DBF1DB3BE66B7599DCF4970BF9EC81E3536708647B594F4F2C6F5C5036F741E432E19F23E006010A0037648139144C209E4A4CBDF9C752F169F759575FA7D605EDAAAAAD56456548A1AA8AA9E7F22B';
wwv_flow_imp.g_varchar2_table(36) := 'AA2A95C9A4158BC4148F44159F8C69D2FA3B32A9B191514D8C3BDBE2B7A2B2529BDF7A6DD97EF57F31F87D8FED527834FB2E88EC1238ED25CB85084C4B8002605A6C5CE44601EB46BFEE70BF5219E787D4BC1A476D5DADE62E5EA0D6056DAA6E98DE2E75';
wwv_flow_imp.g_varchar2_table(37) := '13C363EA3DD3ADDE733D4A2693B644975D77A51A3CB2CB5FA1F26CD9EC7D6257D6EE2A031553DF02F0420081D911A000981D674629B2C0486C5C3D1383798F326FD10275AC593AED37FD8B0D984EA534DCD5AFDEB33D1AEC1F785D93B59B2F51DBE27979';
wwv_flow_imp.g_varchar2_table(38) := 'CFB31C2E38B2E345F5F766DF0E7959C37C36072A87641383270428003C912626994DC0FAE47F6EBC372FA496F6395AB671956A1AEBF2BA2EDFC6D17044435DFD533F2134B5B7A8A2A62ADF2ECAA67D6434AC3D8F3D97359EE6CA7ACDAB2DEF1B23CB26A1';
wwv_flow_imp.g_varchar2_table(39) := '04E279010A00CFA7D0EC00ACDFFCCF8CF538FEDABFB1B969EA8DBFBE8DCD674AB1728EEE7C497DDD176C87B6B6085EDDB4989B014B911CC6344E8002C0B894974FC0A9747AEACD3F9E76B6ABDFB2F5ABD4B17669F9007830926878522FFCEB335967BEA0';
wwv_flow_imp.g_varchar2_table(40) := '768E1A2B8BFBCD8C07E99832020517A0002838291DCE9640E7D8054D38D8E027100868DD964BD53C7FCE6C4D8D71B2081CDEBEEF4DF746BCB6796DB04A8B1BCCBC4F828583C06C0A5000CCA63663154CA03732A4A168F6C7CAACC12AAB2A75C97557A8BA';
wwv_flow_imp.g_varchar2_table(41) := 'C8BFF5172C30033AEA3BD5ADA32F1ECA1A29DB031BB01008B1E4021400254F0113C857209288EAECB8FDEFC8AFF657595DA54D376F51A8BA32DF21685F44814434A69D0F3F9D7584F9B5AD6AAAAC2FE22CE81A0104280058039E13B07EF79F4C66DF5F3E';
wwv_flow_imp.g_varchar2_table(42) := '10F06BD3B66B0AFA789FE7A05C3CE1834FEDD1F0A0FD41413C0DE0E2E431B5B211A000289B549A1148381ED1B970EE6366376EDDC46FFE2E5E123D27CFE9C4FE23B633AC09566909F701B838834CAD1C042800CA218B06C5706AB43BE736BF4BD7ACD0A2';
wwv_flow_imp.g_varchar2_table(43) := '0DCB0D52F15EA8F1484CBB7E69FF3380F538E09AE625DE0B8C1923E021010A000F25CBF4A98EC527D415CEBE935C5D438336DD76B5E9549E88FFF95F6C576C326A3B576E04F4441A99A4870528003C9C3CD3A67E72A42BE733FF9B6EDAA2BAD646D3683C';
wwv_flow_imp.g_varchar2_table(44) := '19EFC1A7F76A78C07EFBE6457573555751E3C9D89834025E10A000F0429698A3C6E3119DCFF1DBFFDCF9ED5AB3F552B43C227062CFCBEA397BDE76B673AB9BD55A4D31E79174324D0F0A5000783069264EB97B6240A3B1B06DE87E9F7FEA88DDCADA6A13';
wwv_flow_imp.g_varchar2_table(45) := '793C1973F791333A79F8B8EDDC1B2A6AB5B0AECD93B1316904BC204001E0852C31471D1B3EA75426652BB164F5722DDEB802290F090C9EEBD5E1170ED8CE38E0F32BE80F2A994EBEEEAC87802F20EB2641ABE8B3FEB6DA594709570482AAF08754110829';
wwv_flow_imp.g_varchar2_table(46) := 'E80F784882A922501A010A80D2B8336A1E024E36FED97AE736052B8279F44AD3520A246271F51CEFD4D963A78B320DAB00B01E25AC0D554DFD6D1505BC1040E0F5021400AC08D70BF4458635181DB59D676BDB1CADBF6193EBE3307D82D1F188467A06D4';
wwv_flow_imp.g_varchar2_table(47) := 'DFDDA791A1E159E508F983AA0B554F1D32541D6467C859C56730D70A5000B836354CEC55815C77FFAFBE6C9DDA577400E642815422A9A1737DEA3ED5A9B1B17157CCB0321092757F4163459D4201BE357245529844490428004AC2CEA04E05E2A9844E8E';
wwv_flow_imp.g_varchar2_table(48) := '76656D7EF5ED37A8A2B6CA6997B49B0581F0E0A82E9CEE524F67F6DCCDC254B20E617D2BD05AD5A89A10EBA7D4B960FCD917A000987D7346CC43C0BAF3DF7A02C0EE55D7D8A04DB7B2F14F1EA4456D3AD23DA0CEA3A7353A3C52D4710ADDB9759F80F5C8';
wwv_flow_imp.g_varchar2_table(49) := 'A15510F042C014010A005332EDD138ADDFFEAD7B00EC5E0B972DD2F24D6B3D1A5D994C3B93D1C0F93E9D3B724AE171FB4735BD10AD757FC0BC9A5655052BBC305DE688C08C04280066C4C7C5C516E88D0C69283A663BCC8AF5ABB460EDD2624F83FE6D04';
wwv_flow_imp.g_varchar2_table(50) := '2686C7756CF741CFBFF1BF363C9F7C6AAAAC535B75B3027E3FB947A06C052800CA36B5E51198B5F7BF750680DD6BDDE64B3467F1BCF208D64351A45329751E3AA57327CE146CD6B5CDF553B96C5AD4A6C645ADAA5BD0A2DA8E16F942AF7F134E4D26948E';
wwv_flow_imp.g_varchar2_table(51) := '27958A25958C26948AC4357AA64FFDC7BAD573E48C2263F6EB259FC95AFB0DB45537A9B9AA3E9FCB688B80670428003C932A3327DA3976411349FB03632EBB61B31ADA9ACDC42951D49363133AFCDC7E452666F6465BDD50A7E55BD76BC115CB55BF6CAE';
wwv_flow_imp.g_varchar2_table(52) := '82358579563FDA37AED153BDBA70F0AC4EED3CAC44343E2329EBFE006B474236179A112317BB508002C08549614AFF2E706AB44BB154C296E4AAB75CA7AA7A0E8C99AD353370B647C75E3CAC542A3DAD216B9BEA5F79D3BF6AA51A56B6CBE7F74DAB1FA7';
wwv_flow_imp.g_varchar2_table(53) := '17A5E3290DECEFD4B9678FE8EC8BC7944C249D5EFABA76D6B7015611606D2CC40B817211A00028974C96691C4787CF2A9DC9D84677DDBDB7CACFEFB445CF7E269DD6A97D47D59DE5F09E6C93D8F096CD5A7CDD7AD5AF2CDDDEFEA968427DBB4FA9F3B9A3';
wwv_flow_imp.g_varchar2_table(54) := '3ABBDFFE0C826C71CCA96E9AFA59801702E5204001500E592CE3188E0C9D5546590A807B6E913FC0BEEFC55C02D6A7E643DBF76A6CC47E37C68B8D6FDD4CB7F2DA8D5A77DF5655CD75D7EFE8D6CF0487FFE5599D78EE60DE74D6A3821D7573E5F315F7DB';
wwv_flow_imp.g_varchar2_table(55) := '8BBC27C60508E4294001902718CD6757E0D870E7EB0E8279E3E857BFFD465554B3B56BB1B262EDD9FFD2537B3411CEEFF1BEA59B566BFD3BAF53DDE296624DAD20FD86CF0E6AFF3F3EA9AE97F3BB99D1BA2F6051FDDCA903897821E055010A00AF66CE90';
wwv_flow_imp.g_varchar2_table(56) := '799F1839AF44DAFE77DB2B6FBD46358DEEFA74592EA9894D4CEAA5ED7B341999741CD2BC558BB4E9776E51FDB2398EAF7143C3A103E7B5EFFB4FCA3AA1D0E9CB3A817071FDDCA9130B7921E045010A002F66CDA0399F19EBD16432661B314F01146731C4';
wwv_flow_imp.g_varchar2_table(57) := '27637AF1895D8A45EDEDDF38F2D6FFF4362DBA75437126344BBD763E7A503BBFF388E3D1ACE3879734CCE30901C7623474930005809BB2C15C94CEA4A7EEFA8F26E38AA6621A8F4F2A9549D9CAACBE7CBDDA972FF4A49CF5093B169E54647C4213636145';
wwv_flow_imp.g_varchar2_table(58) := 'C3934A26935377AA27AC3FF157DE7CABAAAB555159A190F5A722F4CA9FAA0AD536D4A9A6B14E153585BD333D194FEAC093CF6B22ECEC313FEBF9FD1B3FFE1BAA5FEAAD4FFD768B66EC449F9EFEFC4F141975F6B387F54DC0D28679FC1CE0C97F0BCD9E34';
wwv_flow_imp.g_varchar2_table(59) := '0580D9F92F69F4994C66EA19FFD8D49B7D7CEA4D3F9EB67FE4EF62936DEF98AFD55B3696340E2783276309858746353E3CA6F1C1D1A9E3705329FBC2C6499FAFB60985426A6869547D53A3EA9AEBA7F6450884A6F7B5B4B5C1CFC1ED7B353AE46C2FFF45';
wwv_flow_imp.g_varchar2_table(60) := '1B57E8AADF7FBB8275E5751F467C6C52CF7FF1E7EA3E7AD6512AAC7B0216D7B77363A0232D1AB9458002C02D9930681E1389A8C6E2618DC723596FF0734212AAA8D03577DEE4A4E9ACB7C9A4D21AECEE9F3A156F786070D6C6F7F9FC9A33AF4DED4BE6AB';
wwv_flow_imp.g_varchar2_table(61) := 'A9BD55BE80D31BD5323AFCCC8B1AECB33F7CE9D520AC3BFC37DD77A356DEB3592AD39BE133A98C5EFEFE0E1DFCE52E47B9AB0FD5A8A37EAEA3B63442C00D0214006EC8820173B0BED6B74EF6B3B6F5CD7653DF7428AEBB7B9BFCC1E97DE29DCE78B9AE99';
wwv_flow_imp.g_varchar2_table(62) := '1C8BA8E764A77ACFF54C7DA55FCA573018545BC73CB52F9AAFFAB6ECCFAF9F3D78429DC74E3B9AEEB68FFDA6DAAE34E30C86DE5DA7B4E3EB0F2919CFFDED9475B4F0DC1A76A674B488685472010A8092A7A0BC2730121BD750745CB1D4CCB663CDA6B4F5';
wwv_flow_imp.g_varchar2_table(63) := 'CE6D0A5694BE00080F8DE9FC9153EABFD0EFCAA4D6D5D769F9C6D56A9CDFFAA6F98DF60EE9C08E3D8EE67DD3EFDFABF66B56386A5B2E8DACFB021EF9F4FF92F5AD4EAED7E2FA79EC18980B897FEE0A010A0057A4A1FC26114DC6D43D3158D4377E4BADB5';
wwv_flow_imp.g_varchar2_table(64) := '6D8ED6DFB0A9A480A3170675EEE8190D0F0E95741E4E076F6C69D2F24B56ABAEB571EA92442CA13DFFBA438944EE4FB8D77DE00E2DDCB6CEE95065D5AE7FCF193DF9851FCBBA7725DBCBDA367879E37C1E0F2CABEC9767301400E599D79245954AA73510';
wwv_flow_imp.g_varchar2_table(65) := '1DC97A846F2127B7E9A62DBF7E232B64BF4EFA8A8E47747CEFCB1AF1C81BFF1B636A9BD7A6C51B56E8F481E31AEACF7D8FC29677DDAAA5775DEE84A66CDB743DF1B2767CEBE19CF1D55A370536704A654E281A94548002A0A4FCE535B8F51B7F6F6438EB';
wwv_flow_imp.g_varchar2_table(66) := '637B858AB8AAAA4AABAFDAA8C6129C0468DD296FED1C77E6D8A94285E3FA7E2EBD63ABD6BEE75AD7CF73362678FC87CF6BDF4FB7E71CAABDA6452D550D39DBD1008152095000944ABE8CC6B56EF0BB3031A84896637B9D866BBDB137B434A9B2BA5295D5';
wwv_flow_imp.g_varchar2_table(67) := '5553DBFC5A7FACE7DEADE7E0ADC7DBACE7E72B6BAB9D7659D076919171BDBCF3802291C88CFB6D9A37472D8BE7AA6961ABEA3BE6A8AAB54EA19A0A05AA42537F82351553E7DE2727E24A4EC4141B9B5464604CE1DE11857B8735766158233D03535FE117';
wwv_flow_imp.g_varchar2_table(68) := 'F3B5F12D5769FDEFDE58CC213CD7F7816F3CAE234FEDCB3AEF80CFAFE58D0BD924C873D93567C21400E6E4BA289186E311754DF4673DB12FDBC0D6E3648D2D8D9A33BF5D4DF35B55DD505B947916A2D30B27CFE9C4FEA3590F27CA368E756AE1A24B5668';
wwv_flow_imp.g_varchar2_table(69) := 'F1356B35F7CA650AD4840A312D854F0FA86BD7719D7CF6A0AC1B110BF99ABB6C816EFAF4BBCBF549BF695365D2193DF1C9EF69A0F342D63E1A2BEBB4A0B63C36489A361617BA568002C0B5A971FFC4ACAFFCBB27723F337EB148DA17CE57EBC2B96A9CDB';
wwv_flow_imp.g_varchar2_table(70) := 'AC604561DE088B25663DFE7562F761F55FE89BD61073972FD0AA6D97ABFDEA950A16E84DDF6E22563170FEF9133AB9FD802646C6A735DFD75E74E77FFFA06A16BC72B320AFD70B58D60FFFF97772B22CA99FA79A5061776BCC39280D1070204001E00089';
wwv_flow_imp.g_varchar2_table(71) := '266F16188E8EEB4224F78D636FBC72DEA2055ABC6E992AEB6A3CC1FACA81387B3599E757FE5651B3FAC64BB574DB25AA5BF2E6C7EE8A1D7C3A9956DFF32775F8C15D1AC8E3809BD7CEEB8AFB6ED2CA7B37177BAA9EEEFFE80F9ED3FE879ECD1A4355A042';
wwv_flow_imp.g_varchar2_table(72) := 'CB1A17783A4E265F9E021400E599D7A246D53F39A28149675BC5BE3A9196B6395A7EE92A5537D615756E85ECDCFA3AFDE08EBD8E1E8F7BEDB857BEF3662D7DDB650A54967E6F026B5EA3472FE8F823FB74EAF9C38E795A3BE6EAD6BFFE6DC7ED4D6D9849';
wwv_flow_imp.g_varchar2_table(73) := 'A4F5E8FFF93F35D297BD185E54DFAEBA5069EE5B313537C49D5B800220B7112D5E23D03331A09198B34352ACCB1A9B9BB4EC9255AA9F937D173AB7210F77F7EBF0AE03538713397D2DDFB25E1BDF7DA3AADADC791FC3C4B921BDF08D7F55DFA9AEAC21F9';
wwv_flow_imp.g_varchar2_table(74) := '7C3EBDEDD3BF533687FB38CDDF74DB8D1DEFD32FFFF2BB7C0B305D40AE2B99000540C9E8BD37706F6428AFE7FB976F58A5856BBCB75DEC50579F0EEDDAEF3841D67EFB57BDFF2D6ADEE08D5309BB9F7C59BBBFFFB8A213D18BC678E95DD769EDBBAE711C';
wwv_flow_imp.g_varchar2_table(75) := '3F0DA543FFF0940EFD6A77560A760864A5B84D8002C06D1971E97CAC837BCE879DDD04170A06B5EEEA4BD5D83EFBBF7DCF946FAC6F58FBAD2D7173ECF6F6EA38EBB65DA14B3EB06DA6C3CEFAF5C9704C87FF69878E3CF1FA47D956DF70A92EFFF05B667D';
wwv_flow_imp.g_varchar2_table(76) := '3E5E1F30118EE9271FF972D630AC130397B03990D7535D56F3A70028AB74162798782AA133633D8E4EEEABADABD586EB3695EC39FD99084C0C8F6BFFD32F383EA6F7FA0FDEA105377B7B5BDCF870449D8F1FD4E4E8849659372C2EE391B5E9AEA1FDDF78';
wwv_flow_imp.g_varchar2_table(77) := '4C479F7A31EBE5CB1AE6AB2A585E47274FD78BEB4A2F400150FA1CB87A06D6BEE7A7C7BA656DF693EBD53A778ED65C73A902C140AEA6AEFBE7D6B6BE2F3EB94B8944EED3FBEA5A1A74C3C7DEA17ADE2C5D97C7524EC8BAC7E2E77FFAF759A760ED0C68ED';
wwv_flow_imp.g_varchar2_table(78) := '10C80B0137085000B8210B2E9E4357B87FEA08DF5CAF45CB166BE9A635B99AB9F29F5B5BFBEE7B74A7A3DDFDAC9B196FFDD4BB55D1E48DC7185D095EC693DAF1573F52D79133B61106FD01AD6A5A54C60284E625010A002F656B96E76A1DE5DB3391FB59';
wwv_flow_imp.g_varchar2_table(79) := '7FEB93FFFAEB4B7B22DF4C688EED3AA8DEAE9E9C5DD436D7EBB64FBD5795ADEEBCCB3F67003428BA40FFEE337AE20B3FCA3A0E3703163D0D0CE0508002C0219469CDA2C9B8CE8EF7E4DCE2D73A63FED26D5B3CF9B5BF95D3C1CE0B3ABCFBA59CE9B5DEFC';
wwv_flow_imp.g_varchar2_table(80) := '6FFDBFDFADAAB6FA9C6D6960AE80F593D9231FFBB6C606ECF7C9607B6073D787DB22A700705B465C321FEBA6BFC9642CEB6C42A1A036DDBA559535DEDCE6D4DAE277F723CFE4FCDDBFB6E9DFDEFCE7F2E6EF92E5E9EA699CF9F98B7AFEFB8FD9CE31E00B';
wwv_flow_imp.g_varchar2_table(81) := '6875333F03B83A89864C8E02C09044E713663831A973E3BD592FB10EF1B9ECC6AB543FC7BBFBC49FDC7358DD67B36F8AE30F0474FB5FFE169BE2E4B3800C6F1BE919D3439FF8465685650D0B5415AC305C8AF04B2D400150EA0CB8707C279FFED75CBE5E';
wwv_flow_imp.g_varchar2_table(82) := '73977B63E39B8B115B8FFCED7D62674EFD2DEFB9554BEFB83C673B1A20F05A819FFDE7BF5574DCFEE659EB4900EB89005E0894528002A094FA2E1C7B221155E778F6234E5BE6B46AC38D57B870F64EA794D1BE5FED54782CFB96C68B2F5BA9AB3F710F47';
wwv_flow_imp.g_varchar2_table(83) := 'E13A65A5DDAF05F67DF55F75FC59FB7B4BEA4335EAA89F8B18022515A0002829BFFB0677F2E97FF3AD5B3D75A8CF5210800D00002000494441541B959DDCF857D350A7B77DF67D0AD6B2698BFB56A9FB67D4F5E411EDF8E6CF6D27CA7D00EECFA10933A4';
wwv_flow_imp.g_varchar2_table(84) := '003021CB0E638C24A23A9BE3D37FDBFCB95ABBF532873DBAB3D9BE479F5378DCFED3BF7518CE5BFEEC3D6A5A3BCF9D01302BD70B4C5E18D583FFF59B59E7B9B2B143A1803B4E8C743D28132C8A0005405158BDD969E7D8054D242F7E40CCAB116DBEED5A';
wwv_flow_imp.g_varchar2_table(85) := '553778F739F8B10B83DAFFECDEAC09623F7C6FAE5FB7CD3AD77D001C11ECB68C99371F0A00F3727ED18893E9A48E8F9CCFAA31AF63BE566DD9E869B1834FEFD5F080FDE6467E7F40777DFE83AA6CADF3749C4CBEF402FBBEF6A88EEF38603B917935AD6A';
wwv_flow_imp.g_varchar2_table(86) := 'AEE2D1D2D267CADC195000989BFBD7453E1C1DD78548F65DFFB6BCF53A55D679770BDC899171ED7D3CFB9DFF1BDFBA45EB7FE706560502331638FDE03EBDF04F8FDBF6C3B9003326A683190A5000CC10B05C2E3F3FDEA7F144C4FED34AC702ADDAB2C1D3';
wwv_flow_imp.g_varchar2_table(87) := 'E19ED97754E74E77DAC6E00F0575CFFFF8B042F5DEDCD8C8D3C929C3C9773DF1B2767CEB61DBC87812A00C93EEB19028003C96B0624CD7DABEF4E870A732CAD876BFFEAA4BD5BAA8BD18C3CF4A9F568C3B1F7C42C964CA76BC4DF7DEA055F76D9995F930';
wwv_flow_imp.g_varchar2_table(88) := '48F90BF4BD705A4F7EF1C7B68156072BB5B4617EF94310A16B0528005C9B9AD99B98939DFFAEBDFB16CFEEF76F498EF40CE8A5E7F6D9A25A77FEDFFBD5FBF9F43F7BCBAEEC471A7EB9478F7EE67BB67156062AB4BC7141D93B10A07B052800DC9B9B599B';
wwv_flow_imp.g_varchar2_table(89) := '596F644843D131DBF1BCBFF18F7474E74BEAEBB6DFE0C8DAF4E79A4FDC336BE60C54FE02E1B3437AF8CFFEDE36D00A7F482B9ABCBB9B66F967B0FC23A40028FF1CE78CF0F8C83925D3F65F8DAFBC6CADE6AFF0EEE12599745ACF3DF88452A9B4ADC58DF7';
wwv_flow_imp.g_varchar2_table(90) := 'DFAD79D7AECA694503049C0AC406C37AE08FBE6EDB9CCD809C4AD2AE58021400C592F548BFF154422747B31F8873F5DB6E54458D7777C41B1F18D18B4FBF609B91604550F77CEDA30A54B2298B4796AD27A6998A26F5A30F7ED176AE7E9F4F6B9A977822';
wwv_flow_imp.g_varchar2_table(91) := '1626599E021400E59957C7518DC527D415EEB76D5FD750A74DB76D75DC9F1B1B9E3F7246A70F1FB79DDAAA6B2FD1A6FBDFEAC6A933270F0BA46249FDE80314001E4E61D94F9D02A0EC539C3D40EBB77FEB1E00BBD7FC251D5A79E53A4F2BE5DAFC87AFFF';
wwv_flow_imp.g_varchar2_table(92) := '3D9D5ED74E3EDA37AE9FFDF1DFD9CE2FE40F6A6553876BE7CFC4CA5F8002A0FC739C35C2FEC9110D4C8ED8B659B26685166F58EE5925EBF7FF1D0F3C2EEB3140BBD79DFFFD83AA59D0E8D91899B83B05464FF4E9914F7DD7767255810A2DE329007726CF';
wwv_flow_imp.g_varchar2_table(93) := '90595100189268BB307B26063412B33F1867F565EBD4BEC2BB9F522686C7B4F7895DF69FC22A43BAF79B7F20EB31405E081452A07FCF193DF1F91FD976591BAAD6E27AEFEEAD51482BFA2A8D00054069DC5D336AAE1D00375C73B95A16B4B966BEF94E64';
wwv_flow_imp.g_varchar2_table(94) := 'F05CAF0EBF60BF1F7BC7FA65BAF6FFFA8D7CBBA53D023905CE3D7648CFFDFD2F6DDB3554D46A619D77FFDDCA094003D70B5000B83E45C59DE099B11E4D2663B6836CBA698BEA5ABDFBF578D7CB6774EA65FB1B002FBBFB5AADF98FDEBEC9B1B82B84DEA7';
wwv_flow_imp.g_varchar2_table(95) := '2B70E247CF6BEF4FB6DB5ECE5900D395E5BA42095000144AD2A3FD9C1CE9523C9DB09DFD96DBAF57656DB547A3934EBC70483DE7BA6DE77FFD87FE8316DCB4D6B3F13171F70A1CF8D6E33AF284FDEE9373AA9BD456DDE4DE009859D90B5000947D8AB307';
wwv_flow_imp.g_varchar2_table(96) := '7864E86CD63300AEBBE716F90301CF2A1D7A7AAF86B21CFF7BCBC7EED39C2B7916DBB30976F1C477FECD83EA7CF198ED0CDB6B5A647D0BC00B8152095000944ADE25E31E1D3EAB74963BE4BD5E00EC7FFC798D8D8CDA6ADFFEE7EF55E39A792EC906D328';
wwv_flow_imp.g_varchar2_table(97) := '278187EEFFBA2263F637D82EAA6F575DC8BBDFAE9553AE4C8D8502C0D4CCFF5BDCC786CF2995B1DF06D8EB3F01EC79E4594526266CB37CE77FFB806A16F235ACE1FF1A143CFC5CE700F8E4D3EAE645F2FBFC051F9B0E11702A4001E054AA4CDB9D1839AF';
wwv_flow_imp.g_varchar2_table(98) := '443A691BDD15375FADDA16EF7E4DB9F3A1A79488C76DE3BBF72BF7ABA2914F6165BABC4B16D6E907F7E9857F7ADC767CF60028596A18F835021400862F8753A3DD8AA5ECDF202FD9BA494DF3E77856E9991FFF2AEB3D0EEFFCCEC7E40BF029CCB30976E9';
wwv_flow_imp.g_varchar2_table(99) := 'C4B77FFA87EA397AD676763C01E0D2C419362D0A00C312FEC670733D06B8F6F20D6A5BEEFE33CB33A9B4629351C526A28A45A29A9C9854341CC97A04B065F1CEFFF9C7F2F9D904C8F07F0D0A1A7E6A32A11FFFDE97B2EE3E693DFF6FED03C00B81520A50';
wwv_flow_imp.g_varchar2_table(100) := '009452DF05635B0701590702D9BD96AF5BA585EB96BA60A6AF9F426C6252E1A1318D0F8E68787044E1D1B169CDF1BE6FFF91FC159C02382D3C2EBAA840DFAE537AF24B3FC9AAB3AAA943413FEB8E25545A010A80D2FA977CF45C6701742C5FAC6597AF29';
wwv_flow_imp.g_varchar2_table(101) := 'F93CAD098C5E18D44057AFFA7B069488DB6F5E94CF64DFF1D58F2AD45095CF25B44520ABC0FE6F3CA6A34FBD68DB86438058406E11A000704B264A348FD15858DD1303B6A3373637EAD26D5B4A33BB4C46A3FD231A38DFABBEF33D4A26ED6F569CEE04EF';
wwv_flow_imp.g_varchar2_table(102) := 'FEDC8754D5EEDD9B1CA71B37D7154FE0810F7F4DB18988ED00015F40ED35CD6AACAC2BDE24E81901070214000E90CAB9493419D3E9B19EAC216EBDF366052B42B3C660FD9EDF7BB65B9D474E29162DCC277DBBC9DFFB958FAAA2916F00662DB9653E50E4';
wwv_flow_imp.g_varchar2_table(103) := 'DCB01EFAD36F3B8A32E80FA8A5B241CD55F53C0EE8488C468516A00028B4A807FBCBB519D0BA2B376ACE92F9458F2C9D4AA9F774B7CE1E395DB0AFF8B34DBAAEB95E777CE9F78A1E17039823D0BBF3849EFAF20379051CF0F9D554593FB52BA05514F042';
wwv_flow_imp.g_varchar2_table(104) := '60B6042800664BDAC5E3748EF76A2231693BC3B90BE669CD3597143582A1F37D3ABEFF88E2B1E27EE27F6D10B77FF2BD6A5CCB2E80454DAC619D0FECEFD4E39FFD976947DD5459A7D6AA46550466EF1BB7694F960B3D2F4001E0F914CE3C80C1C951F54D';
wwv_flow_imp.g_varchar2_table(105) := '0EDB76140A0675CD5D374BBEC23F2E67DDCD7F72EFCB1AEC1F9C79200E7AF005036A5FB6409B7E7B9BEA977314AB03329AE421908E27F58B8F7F5B13C3E3795CF5E6A61C1434233E2E76284001E010AA9C9B59C7015BFB01647B5D7AC36635B635178CC1';
wwv_flow_imp.g_varchar2_table(106) := 'FABABFEBC8599D397AB2607D766C58AE9A963A5537D6A9B2A15A558D35AAA8AF51A8AE5215D6FF6EAC962FC8A63F0503A7A38B0A84CF0EEAB1FFF79FB3DE08E884CEDA2D70415D9B2AF936C009176DA6214001300DB472BCE4F8C83925D3F667022C5EB9';
wwv_flow_imp.g_varchar2_table(107) := '544B2E5D5590D0AD0D7A0EED7831EB1EFD4E06AA6EA8D3F2ABD7AAFDF2656A59B750FE0A7E3F75E2469BE20BA4A2499D7BE2908EFD6AAF467A876634E0BC9AD6A91B0579215068010A80428B7AB4BFDEC89086A2F69BE98442415DF5B61B1408CD6CF392';
wwv_flow_imp.g_varchar2_table(108) := 'E19E01BDFCFC7EA552E96949CD59344F8B37AF56FBA6A5AA5FD62615FE578969CD8B8B10B013183FD9AFCE670EEBC43387149BB4BFD7269B606DA85A0B6A5BD93C88655650010A8082727AB7B36832AED363DD590358B26A99165FB2727A4166323A7BE8';
wwv_flow_imp.g_varchar2_table(109) := 'A43A8F9DCEFBFAAADA6AAD7FEB6675DCB841556D6C9F9A372017B846A07FF7699DDE7E5067F61CCB7B4EEC1F90371917E410A0006089FC5A20D7C140D64D805BDE7A9D2A6BF33B3D2F194FE8C8CE97343C90DF8D7E4DEDADDA70E7D59A7FDD2AB6EB659D';
wwv_flow_imp.g_varchar2_table(110) := '969540B46F5C07BFB75DA776BF9C775CCD95F59A57DB9AF7755C80C01B0528005813BF1618898DAB6722FB9B74BE8F0426A2311D786A4F5EBFF757545668F37B6E55C72DEBF98A9FF559D602A3C77AB5E71F7EA581CE0B79C5693D2E38BFD6BBA774E615';
wwv_flow_imp.g_varchar2_table(111) := '2C8D8B26400150345AEF759CC9647462F47CD69B01ADA8AED8768D6A9B73DF94948CC5B5FFC9DD79BDF92FD9B45A9B3E78DBD41DFBBC1030412093CEA87BFB51EDFBA7A714190B3B0ED93A4DD03A55901702D315A00098AE5C995E371C1DD78548F66F01';
wwv_flow_imp.g_varchar2_table(112) := '1A9A1B75598EF301ACAFFD0F3CB95B136167FF41B33EF56FFDE01D6ADFBAA24C65090B81EC02A9485C277EB6472FFD6297ACC7649DBC28029C28D1C64E800280B5F126811323E79548673F7827DB31C1A94452079EDAADF098B3CD50DA572CD035BF7F97';
wwv_flow_imp.g_varchar2_table(113) := '2ADB381C85E58880757FC0339FFB8986BAFA1D6158870A2DE0E7004756347ABD0005002BE24D02B94E087CF5820D5B2E534BC7DCD75D6FFD8C70F0E93D1A19B4DF59F0D50B7CF2E9D23BB76AF57D57B3410FEB1081D7082423713DF7370FA8E758A72317';
wwv_flow_imp.g_varchar2_table(114) := 'BE0970C444A337085000B0242E2A90EB7C00EB22BFCFAFCB6FDEF2BAFB01AC6D7DBBCF9CCFA9EAF3F974E3FD77AB7DEB341F2BCC39020D10F0B680752AE68B7FFBA88E3F77D0512014018E9868F41A010A0096C3450592E9A44E8E76299DC964150A5554';
wwv_flow_imp.g_varchar2_table(115) := 'E88A5BAE51454DA57A4F9ED7B1FDB91F6BE2CD9F4587807381133FDDADBD3F7CCAD1056DD54DB2CE11E0858013010A00274A86B6B17606B47608CCF5AAADABD58A4BD7E8C0B37B733595F5E67FF31FBE436D572DCBD996060820F08A40FF0BA7F5F4971F';
wwv_flow_imp.g_varchar2_table(116) := '502AC7CD81D6CF6A4B1BE6AB2A58011D0239052800721299DDC0C94F01F908DD78FF3D9A772D5FFBE763465B042C81BEE74FE9C9FFF1939C18D6E141CB1A164C15DBBC10C8264001C0FAC82A904AA7A74E0A8CA7133396BAEA5DB768D95D9B66DC0F1D20';
wwv_flow_imp.g_varchar2_table(117) := '60AAC091EFEDD0818777E60CBFA5AA41ED352D39DBD1C06C010A00B3F3EF28FA582AA13363DD39EF07C8D6D9C6DBB768FD6FDFE0683C1A2180C0C505AC4D839EF9CC0FD57334F7D3018BEBE7A93654052502B60214002C0E4702E3F188CE87FB1CB57D63';
wwv_flow_imp.g_varchar2_table(118) := 'A3451B97EB9A3F790707F74D4B8F8B1078BD40623CAA473FF95D8507ED4FEFB4AE08FA035ADEB05001BF1F42042E2A4001C0C2702CE0747F80D776686D197CFB5FBF4FC15A6E4A720C4D430472084C9C1BD2237FF15D25E3D937EC629320965236010A00';
wwv_flow_imp.g_varchar2_table(119) := 'D6475E0263F1097587079451F6C703AD4EFD7EBF6EFFD46FAB7E398796E4854C63041C0838BD2970D9D45301950E7AA48969021400A665BC00F15A45405738F736A55BDE758B9672D35F01C4E902818B0B1CFEC76774F097BBB2F2D4876AD451FFFA1D3B';
wwv_flow_imp.g_varchar2_table(120) := 'F144C012A000601DE42DE0E4A780B6A5F375F35FBD87DFFDF3D6E502049C0BA4E3293DF447DF50747C22EB45CB1B17CA7A3C901702AF15A000603DE42D706AB45BB1543CEB75777CE67DAA5BD29A77DF5C800002F909743DF1B2767CEBE1AC17712F407E';
wwv_flow_imp.g_varchar2_table(121) := 'A6A6B4A6003025D3058A73221155E7F885ACBDADBAFE326DFAC86D051A916E1040209B80F568E0A39FF88E467AED8FF1B676085CD9B450417F104C047E2D4001C062C84BE0DC78AFC28949DB6BAC1BFFEEFEC28755D1529357BF34460081E90BF4EF3EA3';
wwv_flow_imp.g_varchar2_table(122) := '27BEF0A3AC1DB039D0F47DCBF54A0A8072CD6C11E2B236043A35DA95B5E735375FAECB3E786B1146A74B0410C826F0F45FFEB32E1C3F675F9CFB7C5AD9B8887D0158467C03C01AC85FA067624023B1B0ED85D6DEE3777DEE43AA9A5B9F7FE75C81000233';
wwv_flow_imp.g_varchar2_table(123) := '12183BD1A75F7EEABB59FBE0B4C0191197DDC57C035076292D4E40994C46C7463AB36E07BC72EB065DF1D1B7156702F48A000239059EFFFC833AB3E7986DBB0A7F482B9A16E6EC8706660850009891E71947E9E4E6BFDBFFFCBD6A5C336FC663D1010208';
wwv_flow_imp.g_varchar2_table(124) := '4C4F60F850971EFDFF7E90F5E2958D1D0A05B819707AC2E57515054079E5B368D1F446863414B5DF7BBCB2A64A77FFEDFDF2F93982B46849A063047208584F04FCEC235F552C12B56D39BFB6554D95FC4CC762622320D680438193235D598F04E6E63F87';
wwv_flow_imp.g_varchar2_table(125) := '903443A0C8022F7EFD573AB67DBFED280D15B55A58D756E459D0BD1704F806C00B592AF11C9DDCFDBFEDBFFCA6DA362F2DF14C191E0104723D12E8F7F9B4A679095008B015306B20B7C06074547D9161DB867E7F40BFF1AD3F903F14C8DD192D1040A0A8';
wwv_flow_imp.g_varchar2_table(126) := '02E9444A3FF9D097954ADA9F14B8B461BEAA3920A8A879F042E77C03E0852C95788EE7C7FB349E88D8CE62C9E5AB75F57FBDABC4B3647804107855E0852FFC5CA7771FB105E17140D68A254001C03AC82990EBF7FFEB3E7087166E5B97B31F1A2080C0EC';
wwv_flow_imp.g_varchar2_table(127) := '08F46C3FA6ED5F7FD076B09A60959634F0C4CEEC64C3BDA35000B83737AE9899F5FCFF91E1B359E7F28EAFDCAF5063B52BE6CB241040408A0D86F5C01F7D3D2BC59AE6C5F2FBFC70192C40016070F29D841E4DC6747AACC7FEABC4650BB4EDD3EF76D215';
wwv_flow_imp.g_varchar2_table(128) := '6D104060960432927EF4BB5F503A95B21D91FB006629192E1E8602C0C5C971C3D4466361754F0CD84E65FDAD576AE37FBAD90D53650E0820F01A81C7FEF41F3578AED7D6A4A36EAEEA2B38B4CBE44543016072F61DC46EDDFD6F3D0560F7BAE21D3768E5';
wwv_flow_imp.g_varchar2_table(129) := '6F6E71D0134D1040603605767FFEE73AB5C7FE464036049ACD6CB8732C0A0077E6C535B3CAF504C0D6F7DDAE45B76D74CD7C99080208BC2270F407CF69FF43CFDA72F024002B850280359055E0CC588F269331DB3637FDC13BD47EF572141140C065025D';
wwv_flow_imp.g_varchar2_table(130) := '8FBFAC1DDF7ED876562D550D6AAF6971D9AC99CE6C0A5000CCA6B607C73A35DAAD582A6E3BF3B7FCD97BD4BC6EBE072363CA0894B7C0F0C12E3DFAD7F60703B1257079E7DF497414004E940C6E936B0F803BFFFAFDAAE968365888D01170A740B46F5C3F';
wwv_flow_imp.g_varchar2_table(131) := 'FBE3BFB39D5C6DB04A8BD90BC09DC99BA5595100CC12B457873931725E89B4FD96A2F77EE5A3AA68ACF26A78CC1B81B215888F46F5D38F7EC536BECA4048CB1B17966DFC04965B800220B791D12D8E0D9F532A63FF2CF13BFFF1E3E20060A39708C1BB54';
wwv_flow_imp.g_varchar2_table(132) := '20D61FD6031FB3DF0C28E00B6875F32297CE9E69CD860005C06C287B788C63C39D4A65D2B611BCF33B1F932FC06E621E4E31532F5381C8F9613DF427DFB68D8E02A04C139F47581400796099D8F4E8F059A533D6BE62177FDDF3C50FABB2B5CE441A6246';
wwv_flow_imp.g_varchar2_table(133) := 'C0D502E32707F48BBFF80E3F01B83A4BA59D1C054069FD5D3F7AAE7B00EEF8F4EFAA6ED91CD7C7C10411304D60F8E51E3DFA99EFD986CD4D80A6AD8837C74B01C01AC82A906B1F805B3F7E9F5A372D411101045C2630B0BF538F7FF65F6C67C563802E4B';
wwv_flow_imp.g_varchar2_table(134) := '5809A643015002742F0D996B27C0EB3F788716DCCC51C05ECA29733543A06FD7493DF9A59FDA06CB464066AC836C515200B006B20AF44C0C682416B66D73C56FDEA895EFB80A450410709940F7D347F4CCDFFDDC765673AB9BD55ADDE8B259339DD914A0';
wwv_flow_imp.g_varchar2_table(135) := '00984D6D0F8ED53F39A281C911DB99AFBFED4A6D7C1FA7017A30B54CB9CC058E7C6F870E3CBCD3364A0E032AF305E0203C0A0007482637198E8EEB4264D09660D9E635BAEABFDC693211B123E04A81A7FEE2FBEA3DD96D3B378E037665DA6675521400B3';
wwv_flow_imp.g_varchar2_table(136) := 'CAEDBDC1261251758E5FB09D78FB8A05BAE92FDFEDBDC0983102652C904EA6F5E3F77F51E9B4FD1E1E4B1BE6AB3A5859C60A84964B8002209790E1FF3C954EEBF8C8396574F1BD0002C1A0DEF18DDF973F14305C8AF011708FC0E8910B7AE4AFFE57D609';
wwv_flow_imp.g_varchar2_table(137) := 'AD6E5AAC809F4DBCDC93B5D99F0905C0EC9B7B6EC45C2702DEF2B1FB34E74A1E05F45C629970D90A9C79E8453DFF83C76CE3B33EF95BDF00F0325B8002C0ECFC3B8AFEC2C4A08663E3B66D57DF70992EFFF06D8EFAA2110208145FE0F9FFFF219DD97BD4';
wwv_flow_imp.g_varchar2_table(138) := '76A039D54D6AAB6E2AFE4418C1D5021400AE4E8F3B26371A0BAB7B62C07632953555BAFB6BFF993301DC912E6681801EF8BDAF281689DA4A2CAE9FA7DA10A7789ABE5428004C5F010EE28FA5123A35DA95B5E55BFEE45D6ADED8E1A0379A208040310572';
wwv_flow_imp.g_varchar2_table(139) := 'FDFEEFF7F9B4A6999FEC8A9903AFF44D01E0954C95789EB98E05663F80122788E111F837817D5F7D44C79F3D68EB5117AAD6A2FA76BC101005008BC09140AEFB00AAEB6B75E7D73E229FA3DE68840002C510488C47F5C047BF96F5F1BFB935CD6AAD6207';
wwv_flow_imp.g_varchar2_table(140) := 'C062F87BAD4F0A00AF65AC44F38D24A23A9B653F006B5A6FFDE47BD5B4765E8966C8B0082070FA677BF5C23F3F91156259C30255052BC042806F005803CE05721D0DBC7CCB7A6DFEC3B73BEF909608205030814C26A387FFF01B9A18B67F6227E0F36B75';
wwv_flow_imp.g_varchar2_table(141) := 'F3E2828D4947DE16E01B006FE76F56679FEB5C009FCFA7BB3EF72155CDAD9FD5793118020848832F76EAB1BFB13FFED732E2044056CA6B052800580F8E05E2A9844EE6781A60EDB64DBAF403B738EE938608205018815D9FFD99CEEE3F6EDB994F3EAD6C';
wwv_flow_imp.g_varchar2_table(142) := '5AA8A03F589801E9C5F30214009E4FE1EC067076EC822249FBE78BADD9DCFB95FB55D1583DBB136334040C1688F68DEB677FFC7759059A2BEB35AFB6D56025427FA30005006B222F81B1F884BAC2FD59AF5973D3E5BAEC43B7E6D52F8D114060FA023BFF';
wwv_flow_imp.g_varchar2_table(143) := 'DB4FD5F9D2C9AC9FFE57342E5428C0A7FFE92B97DF951400E597D3A24794EB6C006B026FFF7F7E47F5CBDB8A3E170640C074819EEDC7B4FDEB0F666568A8A8D5C23AFE7D347DADF00D002B60C602E3F188CE87FBB2F6D3D2D1A65B3FF35B6C0F3C636D3A';
wwv_flow_imp.g_varchar2_table(144) := '40C05E203E3AA9873FFE4DC5A3F1AC4CCB1B17AA3210821281D709F00D000B625A02A747BB154D65FF8FCEE5F75CAFD5EFBC7A5AFD73110208E416C8F5D5BFD5436DA85A8BD9F92F37A6812D28000C4C7A21420E2726756EBC3767576FFDE47BD4B49663';
wwv_flow_imp.g_varchar2_table(145) := '477342D100813C057A779ED0535F7E20E7551CFC9393C8D8061400C6A67EE6819F19EBD1643296B5A39A863ABDEDB3EF53B0B672E603D20302084C09585BFE3EFCF16F653DF1CF6A571FAA5147FD5CD410B8A80005000B63DA02D1645C56119051266B1F';
wwv_flow_imp.g_varchar2_table(146) := '8B2F5BA5AB3F7137E7044C5B9A0B11F877817422A5ED7FF543F59E3C9F9525E00BC8BAF33FE0F7C3870005006BA0F0028393A3EA9B1CCED9F1256FBF46EBDE7B5DCE76344000017B817432AD5D9F7D40E70E9DCAC9649DF8679DFCC70B013B01BE01606D';
wwv_flow_imp.g_varchar2_table(147) := 'CC58C0C9E640D62057BDEB162DBB6BD38CC7A303044C14C8A433DAF5B907D59965B7BF575DD8F2D7C415927FCC1400F99B71C51B0412A9A44E8D75299DC9FE538075D90D1FB94BF3AF5F8D210208E421601DF4B3F7CBBFD4C95D87735E653DEE679DF867';
wwv_flow_imp.g_varchar2_table(148) := '9DCDC10B816C021400AC8F82088CC6C2EA9E18C8D997F51FA56BDFFF762DDCB62E675B1A208080A6EEB079E99B8FEBC893FB727258FBFD2F6D98CF71BF39A56860095000B00E0A26D01B19D25074CC517F57DC7BA356DE7795A3B63442C0648183DF794A';
wwv_flow_imp.g_varchar2_table(149) := '871FDDED88606E75B35AAB1B1DB5A511021400AC81820A58E70458E7053879ADDB768536BEFF66BEAA7482451BE3045293091DF88727757CC70147B1B3DDAF23261ABD46800280E5505001EBB74A6B83A0891C2706BE3AE8C275CB74D51FBC5D150DDCAD';
wwv_flow_imp.g_varchar2_table(150) := '5CD044D099A705C64F0F68C7171FD0D8C088A33878F377C444A337085000B0240A2E90CEA4D539DE9B7393A05707AEAAABD1F51FBD4B2D9774147C2E748880A70432D2995FBCA8DD3F7842E974DAD1D479F377C444A38B085000B02C8A22904AA77576BC';
wwv_flow_imp.g_varchar2_table(151) := '47B154C271FF6B6FDAA475EFBE4EA13A760D748C46C3B211888F4DEA852FFD425D2F9F761C136FFE8EA9684801C01A984D81643AA973E37D390F0D7AED9CAA6AAB75D56FDDA6F937F0A8E06CE68AB14A2B30F4D2793DF39507150D471C4FA4B1B24E0B6A';
wwv_flow_imp.g_varchar2_table(152) := 'E7386E4F4304DE28C03700AC89A20A583F079C0FF76B223199D738F3572FD6E60FDFAEEAF686BCAEA331025E12089FEAD7E10776EACC9E63794D9B4FFE7971D1D846800280A5312B02F93C22F8EA847C7EBFD66DDBA455775FA5CAD6DA5999278320301B';
wwv_flow_imp.g_varchar2_table(153) := '02A327FA74E4273B75D6C1AE7E6F9C0F9FFC672343668C410160469E5D11A5B5478055084CE7B5E1F62D5A71FBE5AA9A5B3F9DCBB9060157088C1EBDA0433F7A56E70F3BFF9DFFD589077C7EB5D7B4C82A0078215008010A804228D28763817062525DE1';
wwv_flow_imp.g_varchar2_table(154) := '3E47DB065FACD3D6C5F3B4F88A559A77F932D5AF6C733C2E0D11289540B87348032F75EAEC0B47D57B22FB097E7673AC0E564EFDDE5F1108952A0CC62D43010A80324CAADB438AA712EA991854C4E15E0176F1588F0F2EDDBC460BAE58A1E60D0B15A80C';
wwv_flow_imp.g_varchar2_table(155) := 'BA3D74E66780407C34AAA1C3E775E1C06975EE3B91D78D7D6FE4B1B6F69D53DDA839D54D06C811E26C0B5000CCB638E3FD5AC03A3FA03732AC5426356315EB3F94B5CD75AA6D6D546D4B836A5AEA55D352A7EA963A5536597FAA55D15C4B91306369B33B';
wwv_flow_imp.g_varchar2_table(156) := '4845938A0D4F283612516C38ACC9C1B02687C6151E1AD5C4E0B8C6074667F486FF5ADD0A7F480BEBE6A82AC863B166AFBAE2454F01503C5B7A7620904CA7A6EE0B70BA7DB0832E698280E7059A2AEBA67EEFF7FBFC9E8F8500DC2B4001E0DEDC1835B389';
wwv_flow_imp.g_varchar2_table(157) := '44548393238EB710360A87608D11B01EEF6BAD6AE4343F63325EDA4029004AEBCFE86F10984CC634303922EB66415E089820E0F7F9D45459AF96CA068502DCC76242CEDD122305805B32C13C5E27104DC635181DD5783CA2CCD489E8BC10282F81802FA0';
wwv_flow_imp.g_varchar2_table(158) := '96AA7A35573628E0E7ABFEF2CAAE37A2A100F0469E8C9D652295D4586262AA10B0BE1DE08580D705AA02156AAEAA5763451D47617B3D991E9F3F0580C71368D2F4A78A81F8C4D49F682A6E52E8C4EA6181903FA89A50956A8355AA0D552BE80F78381AA6';
wwv_flow_imp.g_varchar2_table(159) := '5E4E021400E5944D8362B1F612B0BE11B00A01EBE782682A36EDCD850C6223D45910B076ECAB0956BDF2A61FAA56259BF7CC823A434C478002603A6A5CE34A01EBE8E1582A2EAB38B01E2F4C65D24ABDFA7726AD443AE9CA793329EF08586FEED627F8A0';
wwv_flow_imp.g_varchar2_table(160) := '3F38F5B7F5E93EE8B3FEB6FEBF7FFFFFBD13113335598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040';
wwv_flow_imp.g_varchar2_table(161) := 'C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606C';
wwv_flow_imp.g_varchar2_table(162) := 'EA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB123800002';
wwv_flow_imp.g_varchar2_table(163) := '08182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004C';
wwv_flow_imp.g_varchar2_table(164) := 'CE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A92770041040';
wwv_flow_imp.g_varchar2_table(165) := '0001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A0206EA97CC000005E849444154470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039';
wwv_flow_imp.g_varchar2_table(166) := 'FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001';
wwv_flow_imp.g_varchar2_table(167) := '044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6';
wwv_flow_imp.g_varchar2_table(168) := 'A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B020820';
wwv_flow_imp.g_varchar2_table(169) := '8080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0';
wwv_flow_imp.g_varchar2_table(170) := 'E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001';
wwv_flow_imp.g_varchar2_table(171) := '041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000';
wwv_flow_imp.g_varchar2_table(172) := '189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820';
wwv_flow_imp.g_varchar2_table(173) := '800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A';
wwv_flow_imp.g_varchar2_table(174) := '0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01';
wwv_flow_imp.g_varchar2_table(175) := '041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB12380000208182B40';
wwv_flow_imp.g_varchar2_table(176) := '01606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A927700410400001930528004CCE3EB123';
wwv_flow_imp.g_varchar2_table(177) := '80000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A9277004104000019305';
wwv_flow_imp.g_varchar2_table(178) := '28004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC000580B1A92770';
wwv_flow_imp.g_varchar2_table(179) := '0410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A02470001041030598002C0E4EC133B0208208080B1021400C6A69EC011400001044C16A0003039FBC48E0002082060AC';
wwv_flow_imp.g_varchar2_table(180) := '000580B1A927700410400001930528004CCE3EB12380000208182B4001606CEA091C01041040C064010A0093B34FEC0820800002C60A5000189B7A0247000104103059E07F032D5DE62D60444D5F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(4320588605395978)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/firststyle_css
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A20496D706F727420476F6F676C6520466F6E747320666F72206120667269656E646C792C207265616461626C6520666F6E74202A2F0D0A40696D706F72742075726C282768747470733A2F2F666F6E74732E676F6F676C65617069732E636F6D2F63';
wwv_flow_imp.g_varchar2_table(2) := '7373323F66616D696C793D4F70656E2B53616E733A77676874403430303B3630303B37303026646973706C61793D7377617027293B0D0A0D0A2F2A2047656E6572616C20626F6479207374796C657320666F722061206C696768742C2076696272616E74';
wwv_flow_imp.g_varchar2_table(3) := '206261636B67726F756E64202A2F0D0A626F64792C202E742D50616765426F6479207B0D0A20202020666F6E742D66616D696C793A20274F70656E2053616E73272C2073616E732D73657269663B0D0A202020206261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(4) := '3A20236634663666393B202F2A204C6967687420626C75652D6772617920666F7220612063616C6D2C207363686F6F6C2D6C696B65206665656C202A2F0D0A20202020636F6C6F723A20233333333333333B0D0A202020206C696E652D6865696768743A';
wwv_flow_imp.g_varchar2_table(5) := '20312E363B0D0A7D0D0A0D0A2F2A204865616465723A2056696272616E7420626C756520666F7220656E6572677920616E64207472757374202A2F0D0A2E742D486561646572207B0D0A202020206261636B67726F756E642D636F6C6F723A2023303037';
wwv_flow_imp.g_varchar2_table(6) := '6266663B202F2A2042726967687420626C7565202A2F0D0A20202020636F6C6F723A20236666666666663B0D0A20202020626F782D736861646F773A20302032707820347078207267626128302C20302C20302C20302E31293B0D0A7D0D0A0D0A2E742D';
wwv_flow_imp.g_varchar2_table(7) := '486561646572202E742D4865616465722D6272616E64696E67207B0D0A20202020666F6E742D7765696768743A203730303B0D0A20202020666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A0D0A2F2A204E617669676174696F6E3A20436C6561';
wwv_flow_imp.g_varchar2_table(8) := '6E20616E64206C6976656C79202A2F0D0A2E742D4E617669676174696F6E426172207B0D0A202020206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C6964202365';
wwv_flow_imp.g_varchar2_table(9) := '30653065303B0D0A7D0D0A0D0A2E742D4E617669676174696F6E4261722D6974656D2061207B0D0A20202020636F6C6F723A20233030376266663B0D0A202020207472616E736974696F6E3A20636F6C6F7220302E337320656173653B0D0A7D0D0A0D0A';
wwv_flow_imp.g_varchar2_table(10) := '2E742D4E617669676174696F6E4261722D6974656D20613A686F766572207B0D0A20202020636F6C6F723A20233030353662333B202F2A204461726B657220626C7565206F6E20686F766572202A2F0D0A7D0D0A0D0A2F2A20427574746F6E733A204772';
wwv_flow_imp.g_varchar2_table(11) := '65656E20666F722067726F77746820616E6420706F73697469766974792C207769746820686F76657220616E696D6174696F6E202A2F0D0A2E742D427574746F6E207B0D0A202020206261636B67726F756E642D636F6C6F723A20233238613734353B20';
wwv_flow_imp.g_varchar2_table(12) := '2F2A2056696272616E7420677265656E202A2F0D0A20202020626F726465722D636F6C6F723A20233238613734353B0D0A20202020636F6C6F723A20236666666666663B0D0A20202020626F726465722D7261646975733A203470783B0D0A2020202074';
wwv_flow_imp.g_varchar2_table(13) := '72616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E337320656173652C207472616E73666F726D20302E327320656173653B0D0A7D0D0A0D0A2E742D427574746F6E3A686F766572207B0D0A202020206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(14) := '636F6C6F723A20233231383833383B202F2A204461726B657220677265656E202A2F0D0A202020207472616E73666F726D3A207472616E736C61746559282D327078293B202F2A20536C69676874206C69667420666F72206C6976656C696E657373202A';
wwv_flow_imp.g_varchar2_table(15) := '2F0D0A7D0D0A0D0A2F2A20526567696F6E7320616E642043617264733A20526F756E6465642C20736861646F77656420666F7220612066756E2C206D6F6465726E206C6F6F6B202A2F0D0A2E742D526567696F6E207B0D0A202020206261636B67726F75';
wwv_flow_imp.g_varchar2_table(16) := '6E642D636F6C6F723A20236666666666663B0D0A20202020626F726465722D7261646975733A203870783B0D0A20202020626F782D736861646F773A20302034707820367078207267626128302C20302C20302C20302E3035293B0D0A202020206D6172';
wwv_flow_imp.g_varchar2_table(17) := '67696E2D626F74746F6D3A20312E3572656D3B0D0A7D0D0A0D0A2E742D43617264207B0D0A20202020626F726465722D7261646975733A203870783B0D0A20202020626F782D736861646F773A20302032707820347078207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(18) := '2C20302E31293B0D0A202020207472616E736974696F6E3A20626F782D736861646F7720302E337320656173653B0D0A7D0D0A0D0A2E742D436172643A686F766572207B0D0A20202020626F782D736861646F773A203020347078203870782072676261';
wwv_flow_imp.g_varchar2_table(19) := '28302C20302C20302C20302E3135293B202F2A20536861646F77206C696674206F6E20686F766572202A2F0D0A7D0D0A0D0A2F2A20466F726D7320616E6420496E707574733A20436C65616E20616E642073747564656E742D667269656E646C79202A2F';
wwv_flow_imp.g_varchar2_table(20) := '0D0A2E742D466F726D2D6C6162656C207B0D0A20202020636F6C6F723A20233439353035373B0D0A20202020666F6E742D7765696768743A203630303B0D0A7D0D0A0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742C202E74';
wwv_flow_imp.g_varchar2_table(21) := '2D466F726D2D696E707574436F6E7461696E65722073656C656374207B0D0A20202020626F726465722D636F6C6F723A20236365643464613B0D0A20202020626F726465722D7261646975733A203470783B0D0A2020202070616464696E673A20302E37';
wwv_flow_imp.g_varchar2_table(22) := '3572656D3B0D0A7D0D0A0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A666F6375732C202E742D466F726D2D696E707574436F6E7461696E65722073656C6563743A666F637573207B0D0A20202020626F726465722D636F';
wwv_flow_imp.g_varchar2_table(23) := '6C6F723A20233030376266663B0D0A20202020626F782D736861646F773A20302030203020302E3272656D207267626128302C203132332C203235352C20302E3235293B0D0A7D0D0A0D0A2F2A205461626C65733A20416C7465726E6174696E6720636F';
wwv_flow_imp.g_varchar2_table(24) := '6C6F727320666F7220726561646162696C697479202A2F0D0A2E742D5265706F72742D7265706F7274207461626C652074723A6E74682D6368696C64286576656E29207B0D0A202020206261636B67726F756E642D636F6C6F723A20236638663966613B';
wwv_flow_imp.g_varchar2_table(25) := '202F2A204C696768742067726179202A2F0D0A7D0D0A0D0A2E742D5265706F72742D7265706F7274207461626C65207468207B0D0A202020206261636B67726F756E642D636F6C6F723A20233030376266663B0D0A20202020636F6C6F723A2023666666';
wwv_flow_imp.g_varchar2_table(26) := '6666663B0D0A7D0D0A0D0A2F2A20416C6572747320616E64204E6F74696669636174696F6E733A20436F6C6F7266756C20666F7220617474656E74696F6E202A2F0D0A2E742D416C6572742D2D73756363657373207B0D0A202020206261636B67726F75';
wwv_flow_imp.g_varchar2_table(27) := '6E642D636F6C6F723A20236434656464613B0D0A20202020626F726465722D636F6C6F723A20236333653663623B0D0A20202020636F6C6F723A20233135353732343B0D0A7D0D0A0D0A2E742D416C6572742D2D696E666F207B0D0A202020206261636B';
wwv_flow_imp.g_varchar2_table(28) := '67726F756E642D636F6C6F723A20236431656366313B0D0A20202020626F726465722D636F6C6F723A20236265653565623B0D0A20202020636F6C6F723A20233063353436303B0D0A7D0D0A0D0A2F2A2053696465626172206F72204D656E753A205669';
wwv_flow_imp.g_varchar2_table(29) := '6272616E7420616363656E7473202A2F0D0A2E742D426F64792D6E6176207B0D0A202020206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202020626F726465722D72696768743A2031707820736F6C69642023653065306530';
wwv_flow_imp.g_varchar2_table(30) := '3B0D0A7D0D0A0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74207B0D0A20202020636F6C6F723A20233030376266663B0D0A20202020666F6E74';
wwv_flow_imp.g_varchar2_table(31) := '2D7765696768743A203630303B0D0A7D0D0A0D0A2F2A20466F6F7465723A2053696D706C6520616E6420636C65616E202A2F0D0A2E742D466F6F746572207B0D0A202020206261636B67726F756E642D636F6C6F723A20236638663966613B0D0A202020';
wwv_flow_imp.g_varchar2_table(32) := '20636F6C6F723A20233663373537643B0D0A2020202070616464696E673A203172656D20303B0D0A20202020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A2F2A204164646974696F6E616C2056696272616E7420456C656D656E7473';
wwv_flow_imp.g_varchar2_table(33) := '3A20466F7220636861727473206F722069636F6E73202A2F0D0A2E617065786368617274732D6C6567656E642D74657874207B0D0A20202020666F6E742D66616D696C793A20274F70656E2053616E73272C2073616E732D73657269663B0D0A7D0D0A0D';
wwv_flow_imp.g_varchar2_table(34) := '0A2F2A204D65646961205175657269657320666F7220526573706F6E736976656E657373202A2F0D0A406D6564696120286D61782D77696474683A20373638707829207B0D0A202020202E742D526567696F6E207B0D0A20202020202020206D61726769';
wwv_flow_imp.g_varchar2_table(35) := '6E2D626F74746F6D3A203172656D3B0D0A202020207D0D0A202020200D0A202020202E742D427574746F6E207B0D0A202020202020202077696474683A20313030253B0D0A202020207D0D0A7D0D0A0D0A2F2A20437573746F6D20436C61737365732066';
wwv_flow_imp.g_varchar2_table(36) := '6F72205363686F6F6C2D537065636966696320456C656D656E747320286966206E656564656429202A2F0D0A2E7363686F6F6C2D64617368626F617264207B0D0A202020206261636B67726F756E643A206C696E6561722D6772616469656E7428313335';
wwv_flow_imp.g_varchar2_table(37) := '6465672C20233030376266662C2023323861373435293B202F2A2056696272616E74206772616469656E74202A2F0D0A20202020636F6C6F723A20236666666666663B0D0A2020202070616464696E673A203272656D3B0D0A20202020626F726465722D';
wwv_flow_imp.g_varchar2_table(38) := '7261646975733A203870783B0D0A7D0D0A0D0A2E73747564656E742D63617264207B0D0A202020206261636B67726F756E642D636F6C6F723A20236666663363643B202F2A204C696768742079656C6C6F7720666F722066756E202A2F0D0A2020202062';
wwv_flow_imp.g_varchar2_table(39) := '6F726465723A2031707820736F6C696420236666656562613B0D0A2020202070616464696E673A203172656D3B0D0A20202020626F726465722D7261646975733A203870783B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5251976012310668)
,p_file_name=>'firststyle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/firststyle_min_css
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '40696D706F72742075726C282768747470733A2F2F666F6E74732E676F6F676C65617069732E636F6D2F637373323F66616D696C793D4F70656E2B53616E733A77676874403430303B3630303B37303026646973706C61793D7377617027293B626F6479';
wwv_flow_imp.g_varchar2_table(2) := '2C202E742D50616765426F6479207B666F6E742D66616D696C793A20274F70656E2053616E73272C2073616E732D73657269663B6261636B67726F756E642D636F6C6F723A20236634663666393B636F6C6F723A20233333333333333B6C696E652D6865';
wwv_flow_imp.g_varchar2_table(3) := '696768743A20312E363B7D2E742D486561646572207B6261636B67726F756E642D636F6C6F723A20233030376266663B636F6C6F723A20236666666666663B626F782D736861646F773A20302032707820347078207267626128302C20302C20302C2030';
wwv_flow_imp.g_varchar2_table(4) := '2E31293B7D2E742D486561646572202E742D4865616465722D6272616E64696E67207B666F6E742D7765696768743A203730303B666F6E742D73697A653A20312E3572656D3B7D2E742D4E617669676174696F6E426172207B6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(5) := '636F6C6F723A20236666666666663B626F726465722D626F74746F6D3A2031707820736F6C696420236530653065303B7D2E742D4E617669676174696F6E4261722D6974656D2061207B636F6C6F723A20233030376266663B7472616E736974696F6E3A';
wwv_flow_imp.g_varchar2_table(6) := '20636F6C6F7220302E337320656173653B7D2E742D4E617669676174696F6E4261722D6974656D20613A686F766572207B636F6C6F723A20233030353662333B7D2E742D427574746F6E207B6261636B67726F756E642D636F6C6F723A20233238613734';
wwv_flow_imp.g_varchar2_table(7) := '353B626F726465722D636F6C6F723A20233238613734353B636F6C6F723A20236666666666663B626F726465722D7261646975733A203470783B7472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E337320656173652C207472';
wwv_flow_imp.g_varchar2_table(8) := '616E73666F726D20302E327320656173653B7D2E742D427574746F6E3A686F766572207B6261636B67726F756E642D636F6C6F723A20233231383833383B7472616E73666F726D3A207472616E736C61746559282D327078293B7D2E742D526567696F6E';
wwv_flow_imp.g_varchar2_table(9) := '207B6261636B67726F756E642D636F6C6F723A20236666666666663B626F726465722D7261646975733A203870783B626F782D736861646F773A20302034707820367078207267626128302C20302C20302C20302E3035293B6D617267696E2D626F7474';
wwv_flow_imp.g_varchar2_table(10) := '6F6D3A20312E3572656D3B7D2E742D43617264207B626F726465722D7261646975733A203870783B626F782D736861646F773A20302032707820347078207267626128302C20302C20302C20302E31293B7472616E736974696F6E3A20626F782D736861';
wwv_flow_imp.g_varchar2_table(11) := '646F7720302E337320656173653B7D2E742D436172643A686F766572207B626F782D736861646F773A20302034707820387078207267626128302C20302C20302C20302E3135293B7D2E742D466F726D2D6C6162656C207B636F6C6F723A202334393530';
wwv_flow_imp.g_varchar2_table(12) := '35373B666F6E742D7765696768743A203630303B7D2E742D466F726D2D696E707574436F6E7461696E657220696E7075742C202E742D466F726D2D696E707574436F6E7461696E65722073656C656374207B626F726465722D636F6C6F723A2023636564';
wwv_flow_imp.g_varchar2_table(13) := '3464613B626F726465722D7261646975733A203470783B70616464696E673A20302E373572656D3B7D2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A666F6375732C202E742D466F726D2D696E707574436F6E7461696E657220';
wwv_flow_imp.g_varchar2_table(14) := '73656C6563743A666F637573207B626F726465722D636F6C6F723A20233030376266663B626F782D736861646F773A20302030203020302E3272656D207267626128302C203132332C203235352C20302E3235293B7D2E742D5265706F72742D7265706F';
wwv_flow_imp.g_varchar2_table(15) := '7274207461626C652074723A6E74682D6368696C64286576656E29207B6261636B67726F756E642D636F6C6F723A20236638663966613B7D2E742D5265706F72742D7265706F7274207461626C65207468207B6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(16) := '20233030376266663B636F6C6F723A20236666666666663B7D2E742D416C6572742D2D73756363657373207B6261636B67726F756E642D636F6C6F723A20236434656464613B626F726465722D636F6C6F723A20236333653663623B636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(17) := '3135353732343B7D2E742D416C6572742D2D696E666F207B6261636B67726F756E642D636F6C6F723A20236431656366313B626F726465722D636F6C6F723A20236265653565623B636F6C6F723A20233063353436303B7D2E742D426F64792D6E617620';
wwv_flow_imp.g_varchar2_table(18) := '7B6261636B67726F756E642D636F6C6F723A20236666666666663B626F726465722D72696768743A2031707820736F6C696420236530653065303B7D2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E20';
wwv_flow_imp.g_varchar2_table(19) := '2E612D54726565566965772D636F6E74656E74207B636F6C6F723A20233030376266663B666F6E742D7765696768743A203630303B7D2E742D466F6F746572207B6261636B67726F756E642D636F6C6F723A20236638663966613B636F6C6F723A202336';
wwv_flow_imp.g_varchar2_table(20) := '63373537643B70616464696E673A203172656D20303B746578742D616C69676E3A2063656E7465723B7D2E617065786368617274732D6C6567656E642D74657874207B666F6E742D66616D696C793A20274F70656E2053616E73272C2073616E732D7365';
wwv_flow_imp.g_varchar2_table(21) := '7269663B7D406D6564696120286D61782D77696474683A20373638707829207B2E742D526567696F6E207B6D617267696E2D626F74746F6D3A203172656D3B7D2E742D427574746F6E207B77696474683A20313030253B7D7D2E7363686F6F6C2D646173';
wwv_flow_imp.g_varchar2_table(22) := '68626F617264207B6261636B67726F756E643A206C696E6561722D6772616469656E74283133356465672C20233030376266662C2023323861373435293B636F6C6F723A20236666666666663B70616464696E673A203272656D3B626F726465722D7261';
wwv_flow_imp.g_varchar2_table(23) := '646975733A203870783B7D2E73747564656E742D63617264207B6261636B67726F756E642D636F6C6F723A20236666663363643B626F726465723A2031707820736F6C696420236666656562613B70616464696E673A203172656D3B626F726465722D72';
wwv_flow_imp.g_varchar2_table(24) := '61646975733A203870783B7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5253749741311207)
,p_file_name=>'firststyle.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4311763541395906)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>4288308
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4312056384395906)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4312385382395906)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4312648038395907)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4312915977395907)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4313229471395907)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4313590779395907)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4313875398395907)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4314116283395907)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4314489768395907)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4314794159395907)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4315086990395907)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4315332415395907)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4315608584395907)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>4288309
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(4323345719395992)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>4288618
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(4323463509395992)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>4288618
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(4323514492395992)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>4288618
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(4322999150395989)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>4288582
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(4323141590395992)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>4288602
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(4323297946395992)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>4288606
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(4324323559396000)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_version_scn=>4288651
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(4324606146396001)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>4288654
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4516043539396389)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>4289541
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4415499338396196)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>4289200
);
end;
/
prompt --application/shared_components/user_interface/lovs/edu_base_edu
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5312364020399545)
,p_lov_name=>'EDU_BASE.EDU'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EDU_BASE'
,p_return_column_name=>'ID'
,p_display_column_name=>'EDU'
,p_default_sort_column_name=>'EDU'
,p_default_sort_direction=>'ASC'
,p_version_scn=>6577491
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4523550916396403)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(4523550916396403)||'.'
,p_location=>'STATIC'
,p_version_scn=>4289543
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4523834878396403)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4540834363396432)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(4540834363396432)||'.'
,p_location=>'STATIC'
,p_version_scn=>4289600
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4541173429396432)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4541502761396434)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4541951492396434)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4553202736396450)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(4553202736396450)||'.'
,p_location=>'STATIC'
,p_version_scn=>4289611
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4553566994396450)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4553903653396450)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4554387992396450)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4554704037396450)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4435125109396256)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>4289280
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4416193505396206)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(4416193505396206)||'.'
,p_location=>'STATIC'
,p_version_scn=>4289207
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4416455943396206)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4482756394396331)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(4482756394396331)||'.'
,p_location=>'STATIC'
,p_version_scn=>4289482
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4483066994396331)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4483444230396331)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(4324968407396003)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(4597351353396531)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(4316570391395912)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4316725213395914)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4366836482396112)
,p_short_name=>'STD_REP'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(4579358058396485)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5272204713347206)
,p_short_name=>'edu_base_rep'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5328113142399565)
,p_short_name=>'lessons_rep'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(4317455849395918)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4315906618395909)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>4288309
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4320796814395978)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4288570
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4320851910395978)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4288570
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4320959833395978)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4288570
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4321198010395978)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4288569
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4321461123395978)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4288570
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4321576324395978)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4288570
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4597536409396532)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4289741
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(4597879642396532)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>4289745
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(4316279642395910)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>4288310
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'school'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4335179475396051)
,p_plug_name=>'school'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4402462922396165)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(4401721980396164)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'STD_REP'
,p_alias=>'STD-REP'
,p_step_title=>'STD_REP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4355881742396092)
,p_plug_name=>'Std'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select "ID","EDU_BASE_ID","FNAME","LNAME","NATIONAL_ID","BIRTH","AGE","FATHER_NAME",sys.dbms_lob.getlength("IMAGE")"IMAGE","IMAGE_FILENAME","IMAGE_MIMETYPE","IMAGE_CHARSET","IMAGE_LASTUPD","STD_FIELD_ID","LAST_BASE_GRADE","ADDRESS","ACT_FLAG","CREATE'
||'D","CREATED_BY","UPDATED","UPDATED_BY"from "STD"'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'STD_REP'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4355906436396092)
,p_name=>'STD_REP'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(4323514492395992)
,p_owner=>'ADMIN'
,p_internal_uid=>4355906436396092
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4356615118396098)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4357058947396098)
,p_db_column_name=>'EDU_BASE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Edu Base ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4357438896396100)
,p_db_column_name=>'FNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4357865838396100)
,p_db_column_name=>'LNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Lname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4358215208396100)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'National ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4358691539396100)
,p_db_column_name=>'BIRTH'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4359094634396100)
,p_db_column_name=>'AGE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4359432761396101)
,p_db_column_name=>'FATHER_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Father Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4359830105396101)
,p_db_column_name=>'IMAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Image'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:STD:IMAGE:ID::::::attachment::'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4360294353396101)
,p_db_column_name=>'IMAGE_FILENAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Image Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4360622905396101)
,p_db_column_name=>'IMAGE_MIMETYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Image Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4361039066396101)
,p_db_column_name=>'IMAGE_CHARSET'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Image Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4361494145396103)
,p_db_column_name=>'IMAGE_LASTUPD'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Image Lastupd'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4361819291396104)
,p_db_column_name=>'STD_FIELD_ID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Std Field ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4362266381396104)
,p_db_column_name=>'LAST_BASE_GRADE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Base Grade'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4362651070396104)
,p_db_column_name=>'ADDRESS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4363072929396106)
,p_db_column_name=>'ACT_FLAG'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Act Flag'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4363489048396106)
,p_db_column_name=>'CREATED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4363855900396106)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4364245643396106)
,p_db_column_name=>'UPDATED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4364687117396106)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4368308920396126)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'43684'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FNAME:LNAME:BIRTH:AGE:FATHER_NAME:IMAGE:LAST_BASE_GRADE:ADDRESS:ACT_FLAG'
,p_sort_column_1=>'FNAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4366365380396110)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4316570391395912)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4365186566396107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4355881742396092)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4365449908396107)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4355881742396092)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4365992566396109)
,p_event_id=>wwv_flow_imp.id(4365449908396107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4355881742396092)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Std'
,p_alias=>'STD'
,p_step_title=>'Std'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323514492395992)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4336477925396065)
,p_plug_name=>'Std'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'STD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4351550355396085)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>260
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4351837344396087)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4351550355396085)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4353228990396089)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4351550355396085)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4353683909396089)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4351550355396085)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4354080569396090)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4351550355396085)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4336801555396065)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4337237639396068)
,p_name=>'P3_EDU_BASE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Edu Base ID'
,p_source=>'EDU_BASE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4337665300396071)
,p_name=>'P3_FNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Fname'
,p_source=>'FNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4338008678396071)
,p_name=>'P3_LNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Lname'
,p_source=>'LNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4338459286396071)
,p_name=>'P3_NATIONAL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'National ID'
,p_source=>'NATIONAL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4338884470396071)
,p_name=>'P3_BIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Birth'
,p_source=>'BIRTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4339288880396071)
,p_name=>'P3_AGE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Age'
,p_source=>'AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4339624268396073)
,p_name=>'P3_FATHER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Father Name'
,p_source=>'FATHER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4340025439396073)
,p_name=>'P3_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'DROPZONE_BLOCK',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4340454866396073)
,p_name=>'P3_IMAGE_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'IMAGE_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4340849354396073)
,p_name=>'P3_IMAGE_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'IMAGE_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4341201811396073)
,p_name=>'P3_IMAGE_CHARSET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'IMAGE_CHARSET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4341629514396075)
,p_name=>'P3_IMAGE_LASTUPD'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'IMAGE_LASTUPD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4342016735396075)
,p_name=>'P3_STD_FIELD_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Std Field ID'
,p_source=>'STD_FIELD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4342416234396075)
,p_name=>'P3_LAST_BASE_GRADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Last Base Grade'
,p_source=>'LAST_BASE_GRADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4342883190396075)
,p_name=>'P3_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4343213475396076)
,p_name=>'P3_ACT_FLAG'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_prompt=>'Act Flag'
,p_source=>'ACT_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4343650136396076)
,p_name=>'P3_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4344096415396076)
,p_name=>'P3_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4344458332396076)
,p_name=>'P3_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4344808587396076)
,p_name=>'P3_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_item_source_plug_id=>wwv_flow_imp.id(4336477925396065)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4351959881396087)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4351837344396087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4352713525396089)
,p_event_id=>wwv_flow_imp.id(4351959881396087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4354868924396092)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4336477925396065)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Std'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4354868924396092
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4355285934396092)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4355285934396092
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4354458083396090)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4336477925396065)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Std'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4354458083396090
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'edu_base_rep'
,p_alias=>'EDU-BASE-REP'
,p_step_title=>'edu_base_rep'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5266600927347196)
,p_plug_name=>'edu_base_rep'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EDU_BASE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'edu_base_rep'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5266767277347196)
,p_name=>'edu_base_rep'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>5266767277347196
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5267492437347200)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5267861911347201)
,p_db_column_name=>'EDU'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Edu'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5268281432347203)
,p_db_column_name=>'STD_CNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Std Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5268651080347203)
,p_db_column_name=>'ACT_FLAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Act Flag'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5269005466347203)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5269457558347203)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5269808650347203)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5270272788347203)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5306166249381651)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'53062'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EDU:STD_CNT:ACT_FLAG:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5272318916347206)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4316570391395912)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5270700806347204)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5266600927347196)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5271052998347204)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5266600927347196)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5271553589347204)
,p_event_id=>wwv_flow_imp.id(5271052998347204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5266600927347196)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'edu_base_frm'
,p_alias=>'EDU-BASE-FRM'
,p_page_mode=>'MODAL'
,p_step_title=>'edu_base_frm'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5255942029347173)
,p_plug_name=>'edu_base_frm'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EDU_BASE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5261807168347187)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5264002958347192)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5261807168347187)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CLOSE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5264485478347192)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5261807168347187)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CLOSE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5263605612347192)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5261807168347187)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5262244849347187)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5261807168347187)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5256211903347176)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5256626656347181)
,p_name=>'P5_EDU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Edu'
,p_source=>'EDU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5257016219347182)
,p_name=>'P5_STD_CNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Std Cnt'
,p_source=>'STD_CNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5257435812347184)
,p_name=>'P5_ACT_FLAG'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Act Flag'
,p_source=>'ACT_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5257810657347184)
,p_name=>'P5_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5258234554347184)
,p_name=>'P5_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5258641238347185)
,p_name=>'P5_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5259084540347185)
,p_name=>'P5_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_item_source_plug_id=>wwv_flow_imp.id(5255942029347173)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5262323603347187)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5262244849347187)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5263194004347190)
,p_event_id=>wwv_flow_imp.id(5262323603347187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5265248398347193)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5255942029347173)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form edu_base_frm'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5265248398347193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5265627523347193)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5265627523347193
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5264856005347193)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5255942029347173)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form edu_base_frm'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5264856005347193
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'lessons_rep'
,p_alias=>'LESSONS-REP'
,p_step_title=>'lessons_rep'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5322538704399557)
,p_plug_name=>'lessons_rep'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LESSONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'lessons_rep'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5322687196399557)
,p_name=>'lessons_rep'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>5322687196399557
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5323349203399560)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5323746214399562)
,p_db_column_name=>'EDU_BASE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Edu Base'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(5312364020399545)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5324110390399562)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5324597325399562)
,p_db_column_name=>'ACT_FLAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Act Flag'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5324933235399562)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5325378444399562)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5325745100399562)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5326107261399562)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5331630452406548)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'53317'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EDU_BASE_ID:NAME:ACT_FLAG:CREATED:CREATED_BY:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5328229687399565)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4316570391395912)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5326624124399564)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5322538704399557)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5326959169399564)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5322538704399557)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5327463336399564)
,p_event_id=>wwv_flow_imp.id(5326959169399564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5322538704399557)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'lessons_frm'
,p_alias=>'LESSONS-FRM'
,p_page_mode=>'MODAL'
,p_step_title=>'lessons_frm'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5311456423399540)
,p_plug_name=>'lessons_frm'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'LESSONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5317786562399553)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5319929306399556)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5317786562399553)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CLOSE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5320369137399556)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5317786562399553)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CLOSE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5319539645399554)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5317786562399553)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5318192841399553)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5317786562399553)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5311864030399540)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5312247417399543)
,p_name=>'P7_EDU_BASE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Edu Base Id'
,p_source=>'EDU_BASE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EDU_BASE.EDU'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5312984644399548)
,p_name=>'P7_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5313363270399548)
,p_name=>'P7_ACT_FLAG'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Act Flag'
,p_source=>'ACT_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5313781913399550)
,p_name=>'P7_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5314196018399550)
,p_name=>'P7_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5314575383399550)
,p_name=>'P7_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5314938368399550)
,p_name=>'P7_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_item_source_plug_id=>wwv_flow_imp.id(5311456423399540)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5318271637399553)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5318192841399553)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5319073453399554)
,p_event_id=>wwv_flow_imp.id(5318271637399553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5321138216399556)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5311456423399540)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form lessons_frm'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5321138216399556
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5321564004399556)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5321564004399556
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5320711393399556)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5311456423399540)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form lessons_frm'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5320711393399556
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'school - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4327776348396021)
,p_plug_name=>'school'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4329897762396035)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4327776348396021)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4328299746396031)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4327776348396021)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4328661847396031)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4327776348396021)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4329025352396032)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4327776348396021)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4329497935396034)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4327776348396021)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4332076798396040)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4332076798396040
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4332500054396042)
,p_page_process_id=>wwv_flow_imp.id(4332076798396040)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4333019741396042)
,p_page_process_id=>wwv_flow_imp.id(4332076798396040)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4330187647396035)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4330187647396035
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4330612820396039)
,p_page_process_id=>wwv_flow_imp.id(4330187647396035)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4331133597396040)
,p_page_process_id=>wwv_flow_imp.id(4330187647396035)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4331649504396040)
,p_page_process_id=>wwv_flow_imp.id(4330187647396035)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4333932551396043)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4333932551396043
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4333503073396042)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4333503073396042
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4578845230396484)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4316570391395912)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585378424396500)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4585773965396501)
,p_plug_name=>'Configuration'
,p_parent_plug_id=>wwv_flow_imp.id(4585378424396500)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_list_id=>wwv_flow_imp.id(4579505010396485)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(4321198010395978)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4586118620396503)
,p_plug_name=>'User Interface'
,p_parent_plug_id=>wwv_flow_imp.id(4585378424396500)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_list_id=>wwv_flow_imp.id(4580269268396487)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(4321576324395978)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4586513327396503)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(4585378424396500)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(4580851539396493)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4586988624396503)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4587345544396504)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(4586988624396503)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4588162878396506)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(4587345544396504)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4588553078396506)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(4587345544396504)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4589233082396510)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4589647595396510)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4590019800396510)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4593190011396518)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(4587345544396504)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(4583522870396498)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4593510287396518)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(4586988624396503)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4593903782396518)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(4593510287396518)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4594633552396523)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4595073092396523)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4596982856396529)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(4593510287396518)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(4584622662396500)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4587748786396504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4587345544396504)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4592230815396517)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4587748786396504)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4592785473396517)
,p_event_id=>wwv_flow_imp.id(4592230815396517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4588553078396506)
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4321198010395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4402814931396167)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4403005440396171)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end )) "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4403639669396171)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4403639669396171
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4404370831396178)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4404749492396178)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4405109603396178)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4405504379396178)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4405931131396178)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4406396274396179)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4406794834396179)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4409500755396182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44096'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4411186198396187)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4402814931396167)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4410414489396185)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4403005440396171)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4411809426396189)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4411427921396189)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>4411427921396189
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4321576324395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4412102765396190)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4412245883396190)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4414692547396195)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4412102765396190)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4413266018396192)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4412102765396190)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4415048982396195)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4415342652396195)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4412245883396190)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4416046211396206)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4412245883396190)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(4416193505396206)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4413310044396192)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4413266018396192)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4414064784396193)
,p_event_id=>wwv_flow_imp.id(4413310044396192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4417296218396210)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>4417296218396210
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4417687239396212)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>4417687239396212
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4417992867396212)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(4418023153396212)
,p_region_id=>wwv_flow_imp.id(4417992867396212)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(4420132626396217)
,p_chart_id=>wwv_flow_imp.id(4418023153396212)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4420705146396218)
,p_chart_id=>wwv_flow_imp.id(4418023153396212)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4421369698396218)
,p_chart_id=>wwv_flow_imp.id(4418023153396212)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4418103151396212)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(4418279906396212)
,p_region_id=>wwv_flow_imp.id(4418103151396212)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(4425191003396221)
,p_chart_id=>wwv_flow_imp.id(4418279906396212)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4425761414396223)
,p_chart_id=>wwv_flow_imp.id(4418279906396212)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4426366293396223)
,p_chart_id=>wwv_flow_imp.id(4418279906396212)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4418302998396212)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(4418497431396212)
,p_region_id=>wwv_flow_imp.id(4418302998396212)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(4422691389396220)
,p_chart_id=>wwv_flow_imp.id(4418497431396212)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4423201214396220)
,p_chart_id=>wwv_flow_imp.id(4418497431396212)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(4423830007396221)
,p_chart_id=>wwv_flow_imp.id(4418497431396212)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4418518348396212)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4427460429396229)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4427813292396229)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4418623411396212)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4430665020396245)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4431040131396245)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4418739338396212)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4433380949396254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4417992867396212)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4433774965396254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4418103151396212)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4434179383396254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4418302998396212)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4434502528396254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4418518348396212)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4418839652396212)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4418739338396212)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4418939208396212)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4436101355396257)
,p_event_id=>wwv_flow_imp.id(4418939208396212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4417992867396212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4436693781396257)
,p_event_id=>wwv_flow_imp.id(4418939208396212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4418302998396212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4437135227396257)
,p_event_id=>wwv_flow_imp.id(4418939208396212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4418103151396212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4437660940396257)
,p_event_id=>wwv_flow_imp.id(4418939208396212)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4418518348396212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4438152568396259)
,p_event_id=>wwv_flow_imp.id(4418939208396212)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4418623411396212)
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4470948748396309)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4472036724396310)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4472036724396310
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4472786319396318)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4473117707396320)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4473560865396320)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4473906497396320)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4474318861396320)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4474758361396321)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4475191697396321)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4475500538396321)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4478698472396325)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44787'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4471002614396309)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4471224965396309)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(4471304351396309)
,p_region_id=>wwv_flow_imp.id(4471224965396309)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(4482292487396329)
,p_chart_id=>wwv_flow_imp.id(4471304351396309)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4479515176396325)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4470948748396309)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4471433893396309)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4471002614396309)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(4482756394396331)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4471673924396310)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4471002614396309)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4471138011396309)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4480826213396326)
,p_event_id=>wwv_flow_imp.id(4471138011396309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4470948748396309)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4484232402396332)
,p_event_id=>wwv_flow_imp.id(4471138011396309)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4470948748396309)
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4463933101396303)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4464520670396303)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4464520670396303
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4465287647396304)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4465619247396306)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4466088496396306)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4466469130396306)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4466828864396306)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4467203576396306)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4469797160396309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44698'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4470628058396309)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4463933101396303)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4449933577396287)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4450482935396287)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4450482935396287
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4451120413396293)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4451585291396293)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4451944735396293)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4452330805396293)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4452767697396293)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4453173095396295)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4453594029396295)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4453937551396295)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4454352938396295)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4454755303396295)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4455107788396295)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4455566374396295)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4455949233396295)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4456300078396295)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4461278863396300)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44613'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4450075200396287)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4462151361396300)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4449933577396287)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4449850381396287)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4450075200396287)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4450174387396287)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4463490997396301)
,p_event_id=>wwv_flow_imp.id(4450174387396287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4449933577396287)
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4438681026396264)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4439292141396267)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4439292141396267
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4439967464396271)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4440314019396273)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4440700985396273)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4441167235396273)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4441522971396273)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4441914790396273)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4442334461396273)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4442764686396273)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4443198175396273)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4443504434396275)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4447252226396276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44473'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4438762828396264)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4448142973396278)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4438681026396264)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4438547136396264)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4438762828396264)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4438839946396264)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4449469743396281)
,p_event_id=>wwv_flow_imp.id(4438839946396264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4438681026396264)
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4484783660396337)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4485335738396337)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4485335738396337
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4486032433396346)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4486457539396348)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4486821415396348)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4487224845396348)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4487632279396348)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4488088834396348)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4488447771396348)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4488885739396348)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4489226196396350)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4492618431396351)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'44927'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4493588311396353)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4484783660396337)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320851910395978)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4494114091396353)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4496585941396357)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4496932320396362)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4497356332396362)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4497743348396362)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4498181940396362)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4494578386396354)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4494114091396353)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4494962808396354)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4494114091396353)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4495384080396356)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4494114091396353)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4495751480396356)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4494114091396353)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4496126332396356)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4496126332396356
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4500358605396365)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4500429964396365)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4501646175396368)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4500429964396365)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4501976279396368)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4500429964396365)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4503344387396370)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4503679125396370)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4500358605396365)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4502020405396368)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4501976279396368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4502735465396368)
,p_event_id=>wwv_flow_imp.id(4502020405396368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4504025342396371)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>4504025342396371
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4504431622396373)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4505283945396375)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>4505283945396375
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4505929060396379)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4506385382396379)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4506710055396379)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4508328873396381)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'45084'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4509228874396381)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4504431622396373)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4509635003396382)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4504431622396373)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4510045658396382)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4504431622396373)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4504509829396373)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4504431622396373)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4510661300396382)
,p_event_id=>wwv_flow_imp.id(4504509829396373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4504431622396373)
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4511107628396382)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4511235387396382)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4514099325396387)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4511235387396382)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4514426466396387)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4511235387396382)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4512295089396385)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4511235387396382)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4513647517396385)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4511235387396382)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4514750457396387)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_item_source_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4515146584396387)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_item_source_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4515591346396387)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_item_source_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4515968028396387)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_item_source_plug_id=>wwv_flow_imp.id(4511107628396382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4517295162396393)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4512390355396385)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4512295089396385)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4513006294396385)
,p_event_id=>wwv_flow_imp.id(4512390355396385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4517597390396395)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(4511107628396382)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4517597390396395
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4517982412396395)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4511107628396382)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4517982412396395
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4518349331396395)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4518349331396395
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4518701350396395)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4518826290396395)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4518949217396395)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4518701350396395)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4520998899396398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4518701350396395)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4522274248396398)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(4518949217396395)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4522698654396400)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4518826290396395)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4523018190396401)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4518826290396395)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4523488350396403)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4518826290396395)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(4523550916396403)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4521037252396398)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4520998899396398)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4521772966396398)
,p_event_id=>wwv_flow_imp.id(4521037252396398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4524512337396403)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4518949217396395)
,p_internal_uid=>4524512337396403
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320796814395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4519068295396395)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4519191605396395)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4519328938396395)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(4519191605396395)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4526472634396407)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(4526801488396409)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4519454502396395)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(4519191605396395)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4519557129396395)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4529912604396417)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4530601868396420)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4519619759396395)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4519068295396395)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4531301205396420)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4519068295396395)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4531750333396421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4519068295396395)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4533059209396421)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4519557129396395)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4533440765396423)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4519557129396395)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4533854379396423)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4519557129396395)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4531844779396421)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4531750333396421)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4532590724396421)
,p_event_id=>wwv_flow_imp.id(4531844779396421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4534264098396423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4519619759396395)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>4534264098396423
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4534656489396425)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4534656489396425
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4535070771396425)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4535157245396425)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4535281048396425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4535157245396425)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4538208338396429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4535157245396425)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(4545999078396439)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4539529759396429)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4535070771396425)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4539961889396431)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4535070771396425)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4540394527396431)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4535070771396425)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4540745561396432)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(4535070771396425)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(4540834363396432)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4542602075396434)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4535070771396425)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4545598773396439)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4538319955396429)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4538208338396429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4539081447396429)
,p_event_id=>wwv_flow_imp.id(4538319955396429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4543005066396435)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4535281048396425)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>4543005066396435
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4543565587396435)
,p_page_process_id=>wwv_flow_imp.id(4543005066396435)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4544007117396437)
,p_page_process_id=>wwv_flow_imp.id(4543005066396435)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4544557602396437)
,p_page_process_id=>wwv_flow_imp.id(4543005066396435)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4545051414396437)
,p_page_process_id=>wwv_flow_imp.id(4543005066396435)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4535673512396425)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4535502099396425)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4535673512396425)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4535746598396425)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4535502099396425)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4547580462396440)
,p_event_id=>wwv_flow_imp.id(4535746598396425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4536980021396425)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4560490091396460)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>4560490091396460
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4561128295396464)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4561599140396464)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4561950110396464)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4562378077396464)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4562768716396464)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4563176817396465)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(4540834363396432)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4563556932396465)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4563909487396465)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(4553202736396450)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564348506396465)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4564729218396465)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4565160904396465)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4565501866396467)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4565948221396467)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4570586395396470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'45706'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4571493491396470)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4536980021396425)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4536826046396425)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4536980021396425)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4572152825396471)
,p_event_id=>wwv_flow_imp.id(4536826046396425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4536980021396425)
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4323345719395992)
,p_required_patch=>wwv_flow_imp.id(4320959833395978)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4536282695396425)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4536384930396425)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4536446906396425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4536384930396425)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4549100168396442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4536384930396425)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4536660859396425)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4536384930396425)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4550741178396443)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4551131026396443)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4551513636396445)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4551948601396445)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4552381102396446)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4552755867396446)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4553186740396450)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(4553202736396450)||'.'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4555422647396451)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4536282695396425)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4549262501396442)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4549100168396442)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4549956150396443)
,p_event_id=>wwv_flow_imp.id(4549262501396442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4555931617396451)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4555931617396451
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4556220545396453)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4536446906396425)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>4556220545396453
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4556791024396453)
,p_page_process_id=>wwv_flow_imp.id(4556220545396453)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4557250358396453)
,p_page_process_id=>wwv_flow_imp.id(4556220545396453)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4557793382396454)
,p_page_process_id=>wwv_flow_imp.id(4556220545396453)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4558146187396454)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4536660859396425)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>4558146187396454
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4558613781396454)
,p_page_process_id=>wwv_flow_imp.id(4558146187396454)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4559148438396456)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(4536660859396425)
,p_internal_uid=>4559148438396456
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4559542067396456)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4559542067396456
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4324968407396003)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4321461123395978)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4573079016396475)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(4321461123395978)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4573750913396475)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4574119775396476)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4573750913396475)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4597351353396531)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(4597879642396532)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4602436592396548)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4602865584396548)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(4603360837396550)
,p_region_id=>wwv_flow_imp.id(4602865584396548)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4603825623396551)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(4601412074396546)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4597351353396531)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(4597536409396532)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4598833729396539)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'#APEX_CSP_DISPLAY_NONE#'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4599221294396539)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4598556896396537)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4599743448396542)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4599221294396539)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4600034822396542)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4600535919396543)
,p_event_id=>wwv_flow_imp.id(4600034822396542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4601008128396543)
,p_event_id=>wwv_flow_imp.id(4600034822396542)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(5248951173147767)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
