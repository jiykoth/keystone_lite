# admin_user frontend functions:

$('admin_user_add_btn').click(function() { admin_user_add(); });
$('admin_user_set_btn').click(function(e) { admin_user_set(e); });
$('admin_user_del_btn').click(function(e) { admin_user_del(e); });

function admin_user_add() {
  $.post('add_admin_user', { client_id: val1, username: val2, first_name: val3, last_name: val4, password: val5, salt: val6, admin: val7, disabled: val8 }, function(data) {
    console.log(data);
  })
}

function admin_user_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_admin_user', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function admin_user_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_admin_user', { id: id, client_id: val1, username: val2, first_name: val3, last_name: val4, password: val5, salt: val6, admin: val7, disabled: val8 }, function(data) {
    console.log(data);
  })
}

function admin_user_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_admin_user', { id: id }, function(data) {
    console.log(data);
  })
}



# api_key frontend functions:

$('api_key_add_btn').click(function() { api_key_add(); });
$('api_key_set_btn').click(function(e) { api_key_set(e); });
$('api_key_del_btn').click(function(e) { api_key_del(e); });

function api_key_add() {
  $.post('add_api_key', { client_id: val1, key: val2 }, function(data) {
    console.log(data);
  })
}

function api_key_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_api_key', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function api_key_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_api_key', { id: id, client_id: val1, key: val2 }, function(data) {
    console.log(data);
  })
}

function api_key_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_api_key', { id: id }, function(data) {
    console.log(data);
  })
}



# asset frontend functions:

$('asset_add_btn').click(function() { asset_add(); });
$('asset_set_btn').click(function(e) { asset_set(e); });
$('asset_del_btn').click(function(e) { asset_del(e); });

function asset_add() {
  $.post('add_asset', { client_id: val1, name: val2, size: val3 }, function(data) {
    console.log(data);
  })
}

function asset_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_asset', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function asset_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_asset', { id: id, client_id: val1, name: val2, size: val3 }, function(data) {
    console.log(data);
  })
}

function asset_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_asset', { id: id }, function(data) {
    console.log(data);
  })
}



# attribute frontend functions:

$('attribute_add_btn').click(function() { attribute_add(); });
$('attribute_set_btn').click(function(e) { attribute_set(e); });
$('attribute_del_btn').click(function(e) { attribute_del(e); });

function attribute_add() {
  $.post('add_attribute', { client_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function attribute_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_attribute', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function attribute_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_attribute', { id: id, client_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function attribute_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_attribute', { id: id }, function(data) {
    console.log(data);
  })
}



# attribute_value frontend functions:

$('attribute_value_add_btn').click(function() { attribute_value_add(); });
$('attribute_value_set_btn').click(function(e) { attribute_value_set(e); });
$('attribute_value_del_btn').click(function(e) { attribute_value_del(e); });

function attribute_value_add() {
  $.post('add_attribute_value', { attribute_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function attribute_value_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_attribute_value', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function attribute_value_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_attribute_value', { id: id, attribute_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function attribute_value_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_attribute_value', { id: id }, function(data) {
    console.log(data);
  })
}



# attribute_value_alias frontend functions:

$('attribute_value_alias_add_btn').click(function() { attribute_value_alias_add(); });
$('attribute_value_alias_set_btn').click(function(e) { attribute_value_alias_set(e); });
$('attribute_value_alias_del_btn').click(function(e) { attribute_value_alias_del(e); });

function attribute_value_alias_add() {
  $.post('add_attribute_value_alias', { attribute_value_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function attribute_value_alias_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_attribute_value_alias', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function attribute_value_alias_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_attribute_value_alias', { id: id, attribute_value_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function attribute_value_alias_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_attribute_value_alias', { id: id }, function(data) {
    console.log(data);
  })
}



# batch_send frontend functions:

$('batch_send_add_btn').click(function() { batch_send_add(); });
$('batch_send_set_btn').click(function(e) { batch_send_set(e); });
$('batch_send_del_btn').click(function(e) { batch_send_del(e); });

function batch_send_add() {
  $.post('add_batch_send', { text_preheader: val1, text_body: val2, batch_csv: val3, client_id: val4, name: val5, when: val6, scheduled: val7, message_id: val8, subject: val9, template_id: val10, html_preheader: val11, html_body: val12 }, function(data) {
    console.log(data);
  })
}

function batch_send_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_batch_send', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function batch_send_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_batch_send', { id: id, text_preheader: val1, text_body: val2, batch_csv: val3, client_id: val4, name: val5, when: val6, scheduled: val7, message_id: val8, subject: val9, template_id: val10, html_preheader: val11, html_body: val12 }, function(data) {
    console.log(data);
  })
}

function batch_send_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_batch_send', { id: id }, function(data) {
    console.log(data);
  })
}



# batch_send_link frontend functions:

$('batch_send_link_add_btn').click(function() { batch_send_link_add(); });
$('batch_send_link_set_btn').click(function(e) { batch_send_link_set(e); });
$('batch_send_link_del_btn').click(function(e) { batch_send_link_del(e); });

function batch_send_link_add() {
  $.post('add_batch_send_link', { batch_send_id: val1, name: val2, type: val3, page_id: val4, url: val5, text: val6 }, function(data) {
    console.log(data);
  })
}

function batch_send_link_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_batch_send_link', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function batch_send_link_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_batch_send_link', { id: id, batch_send_id: val1, name: val2, type: val3, page_id: val4, url: val5, text: val6 }, function(data) {
    console.log(data);
  })
}

function batch_send_link_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_batch_send_link', { id: id }, function(data) {
    console.log(data);
  })
}



# batch_send_policy frontend functions:

$('batch_send_policy_add_btn').click(function() { batch_send_policy_add(); });
$('batch_send_policy_set_btn').click(function(e) { batch_send_policy_set(e); });
$('batch_send_policy_del_btn').click(function(e) { batch_send_policy_del(e); });

function batch_send_policy_add() {
  $.post('add_batch_send_policy', { batch_send_id: val1, policy_id: val2 }, function(data) {
    console.log(data);
  })
}

function batch_send_policy_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_batch_send_policy', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function batch_send_policy_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_batch_send_policy', { id: id, batch_send_id: val1, policy_id: val2 }, function(data) {
    console.log(data);
  })
}

function batch_send_policy_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_batch_send_policy', { id: id }, function(data) {
    console.log(data);
  })
}



# batch_send_stat frontend functions:

$('batch_send_stat_add_btn').click(function() { batch_send_stat_add(); });
$('batch_send_stat_set_btn').click(function(e) { batch_send_stat_set(e); });
$('batch_send_stat_del_btn').click(function(e) { batch_send_stat_del(e); });

function batch_send_stat_add() {
  $.post('add_batch_send_stat', { batch_send_id: val1, sent: val2, delivered: val3, opt_out: val4, open: val5, unique_open: val6, click: val7, unique_click: val8 }, function(data) {
    console.log(data);
  })
}

function batch_send_stat_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_batch_send_stat', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function batch_send_stat_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_batch_send_stat', { id: id, batch_send_id: val1, sent: val2, delivered: val3, opt_out: val4, open: val5, unique_open: val6, click: val7, unique_click: val8 }, function(data) {
    console.log(data);
  })
}

function batch_send_stat_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_batch_send_stat', { id: id }, function(data) {
    console.log(data);
  })
}



# client frontend functions:

$('client_add_btn').click(function() { client_add(); });
$('client_set_btn').click(function(e) { client_set(e); });
$('client_del_btn').click(function(e) { client_del(e); });

function client_add() {
  $.post('add_client', { s3_secret: val1, integration_partner_id: val2, integration_username: val3, integration_password: val4, integration_client_id: val5, webhook_url: val6, dkim: val7, name: val8, short_name: val9, timezone_id: val10, dont_send: val11, archive: val12, privacy_url: val13, manager_email: val14, s3_name: val15, s3_key: val16 }, function(data) {
    console.log(data);
  })
}

function client_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_client', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function client_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_client', { id: id, s3_secret: val1, integration_partner_id: val2, integration_username: val3, integration_password: val4, integration_client_id: val5, webhook_url: val6, dkim: val7, name: val8, short_name: val9, timezone_id: val10, dont_send: val11, archive: val12, privacy_url: val13, manager_email: val14, s3_name: val15, s3_key: val16 }, function(data) {
    console.log(data);
  })
}

function client_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_client', { id: id }, function(data) {
    console.log(data);
  })
}



# client_cname frontend functions:

$('client_cname_add_btn').click(function() { client_cname_add(); });
$('client_cname_set_btn').click(function(e) { client_cname_set(e); });
$('client_cname_del_btn').click(function(e) { client_cname_del(e); });

function client_cname_add() {
  $.post('add_client_cname', { client_id: val1, domain: val2, value: val3 }, function(data) {
    console.log(data);
  })
}

function client_cname_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_client_cname', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function client_cname_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_client_cname', { id: id, client_id: val1, domain: val2, value: val3 }, function(data) {
    console.log(data);
  })
}

function client_cname_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_client_cname', { id: id }, function(data) {
    console.log(data);
  })
}



# client_dkim frontend functions:

$('client_dkim_add_btn').click(function() { client_dkim_add(); });
$('client_dkim_set_btn').click(function(e) { client_dkim_set(e); });
$('client_dkim_del_btn').click(function(e) { client_dkim_del(e); });

function client_dkim_add() {
  $.post('add_client_dkim', { client_id: val1, domain: val2, selector: val3, private_key: val4, public_key: val5 }, function(data) {
    console.log(data);
  })
}

function client_dkim_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_client_dkim', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function client_dkim_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_client_dkim', { id: id, client_id: val1, domain: val2, selector: val3, private_key: val4, public_key: val5 }, function(data) {
    console.log(data);
  })
}

function client_dkim_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_client_dkim', { id: id }, function(data) {
    console.log(data);
  })
}



# client_settings frontend functions:

$('client_settings_add_btn').click(function() { client_settings_add(); });
$('client_settings_set_btn').click(function(e) { client_settings_set(e); });
$('client_settings_del_btn').click(function(e) { client_settings_del(e); });

function client_settings_add() {
  $.post('add_client_settings', { client_id: val1, timezone_id: val2, privacy_url: val3, dailyvu: val4, supression_time: val5 }, function(data) {
    console.log(data);
  })
}

function client_settings_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_client_settings', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function client_settings_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_client_settings', { id: id, client_id: val1, timezone_id: val2, privacy_url: val3, dailyvu: val4, supression_time: val5 }, function(data) {
    console.log(data);
  })
}

function client_settings_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_client_settings', { id: id }, function(data) {
    console.log(data);
  })
}



# file frontend functions:

$('file_add_btn').click(function() { file_add(); });
$('file_set_btn').click(function(e) { file_set(e); });
$('file_del_btn').click(function(e) { file_del(e); });

function file_add() {
  $.post('add_file', { asset_id: val1, name: val2, blob: val3 }, function(data) {
    console.log(data);
  })
}

function file_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_file', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function file_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_file', { id: id, asset_id: val1, name: val2, blob: val3 }, function(data) {
    console.log(data);
  })
}

function file_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_file', { id: id }, function(data) {
    console.log(data);
  })
}



# group frontend functions:

$('group_add_btn').click(function() { group_add(); });
$('group_set_btn').click(function(e) { group_set(e); });
$('group_del_btn').click(function(e) { group_del(e); });

function group_add() {
  $.post('add_group', { client_id: val1, name: val2, email: val3, address1: val4, address2: val5, city: val6, state_id: val7, zip: val8 }, function(data) {
    console.log(data);
  })
}

function group_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_group', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function group_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_group', { id: id, client_id: val1, name: val2, email: val3, address1: val4, address2: val5, city: val6, state_id: val7, zip: val8 }, function(data) {
    console.log(data);
  })
}

function group_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_group', { id: id }, function(data) {
    console.log(data);
  })
}



# group_phone frontend functions:

$('group_phone_add_btn').click(function() { group_phone_add(); });
$('group_phone_set_btn').click(function(e) { group_phone_set(e); });
$('group_phone_del_btn').click(function(e) { group_phone_del(e); });

function group_phone_add() {
  $.post('add_group_phone', { group_id: val1, type: val2, number: val3 }, function(data) {
    console.log(data);
  })
}

function group_phone_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_group_phone', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function group_phone_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_group_phone', { id: id, group_id: val1, type: val2, number: val3 }, function(data) {
    console.log(data);
  })
}

function group_phone_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_group_phone', { id: id }, function(data) {
    console.log(data);
  })
}



# integration_partner frontend functions:

$('integration_partner_add_btn').click(function() { integration_partner_add(); });
$('integration_partner_set_btn').click(function(e) { integration_partner_set(e); });
$('integration_partner_del_btn').click(function(e) { integration_partner_del(e); });

function integration_partner_add() {
  $.post('add_integration_partner', { name: val1, type: val2 }, function(data) {
    console.log(data);
  })
}

function integration_partner_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_integration_partner', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function integration_partner_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_integration_partner', { id: id, name: val1, type: val2 }, function(data) {
    console.log(data);
  })
}

function integration_partner_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_integration_partner', { id: id }, function(data) {
    console.log(data);
  })
}



# layout frontend functions:

$('layout_add_btn').click(function() { layout_add(); });
$('layout_set_btn').click(function(e) { layout_set(e); });
$('layout_del_btn').click(function(e) { layout_del(e); });

function layout_add() {
  $.post('add_layout', { client_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function layout_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_layout', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function layout_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_layout', { id: id, client_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function layout_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_layout', { id: id }, function(data) {
    console.log(data);
  })
}



# layout_tags frontend functions:

$('layout_tags_add_btn').click(function() { layout_tags_add(); });
$('layout_tags_set_btn').click(function(e) { layout_tags_set(e); });
$('layout_tags_del_btn').click(function(e) { layout_tags_del(e); });

function layout_tags_add() {
  $.post('add_layout_tags', { layout_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function layout_tags_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_layout_tags', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function layout_tags_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_layout_tags', { id: id, layout_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function layout_tags_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_layout_tags', { id: id }, function(data) {
    console.log(data);
  })
}



# lead_source frontend functions:

$('lead_source_add_btn').click(function() { lead_source_add(); });
$('lead_source_set_btn').click(function(e) { lead_source_set(e); });
$('lead_source_del_btn').click(function(e) { lead_source_del(e); });

function lead_source_add() {
  $.post('add_lead_source', { name: val1 }, function(data) {
    console.log(data);
  })
}

function lead_source_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_lead_source', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function lead_source_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_lead_source', { id: id, name: val1 }, function(data) {
    console.log(data);
  })
}

function lead_source_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_lead_source', { id: id }, function(data) {
    console.log(data);
  })
}



# message frontend functions:

$('message_add_btn').click(function() { message_add(); });
$('message_set_btn').click(function(e) { message_set(e); });
$('message_del_btn').click(function(e) { message_del(e); });

function message_add() {
  $.post('add_message', { text_policy_id: val1, template_id: val2, name: val3, slug: val4, subject: val5, html_preheader: val6, html_body: val7, text_preheader: val8, text_body: val9, html_policy_id: val10 }, function(data) {
    console.log(data);
  })
}

function message_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_message', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function message_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_message', { id: id, text_policy_id: val1, template_id: val2, name: val3, slug: val4, subject: val5, html_preheader: val6, html_body: val7, text_preheader: val8, text_body: val9, html_policy_id: val10 }, function(data) {
    console.log(data);
  })
}

function message_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_message', { id: id }, function(data) {
    console.log(data);
  })
}



# message_link frontend functions:

$('message_link_add_btn').click(function() { message_link_add(); });
$('message_link_set_btn').click(function(e) { message_link_set(e); });
$('message_link_del_btn').click(function(e) { message_link_del(e); });

function message_link_add() {
  $.post('add_message_link', { message_id: val1, name: val2, text: val3, url: val4, type: val5 }, function(data) {
    console.log(data);
  })
}

function message_link_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_message_link', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function message_link_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_message_link', { id: id, message_id: val1, name: val2, text: val3, url: val4, type: val5 }, function(data) {
    console.log(data);
  })
}

function message_link_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_message_link', { id: id }, function(data) {
    console.log(data);
  })
}



# message_stat frontend functions:

$('message_stat_add_btn').click(function() { message_stat_add(); });
$('message_stat_set_btn').click(function(e) { message_stat_set(e); });
$('message_stat_del_btn').click(function(e) { message_stat_del(e); });

function message_stat_add() {
  $.post('add_message_stat', { message_id: val1, sent: val2, delivered: val3, opt_out: val4, open: val5, unique_open: val6, click: val7, unique_click: val8 }, function(data) {
    console.log(data);
  })
}

function message_stat_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_message_stat', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function message_stat_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_message_stat', { id: id, message_id: val1, sent: val2, delivered: val3, opt_out: val4, open: val5, unique_open: val6, click: val7, unique_click: val8 }, function(data) {
    console.log(data);
  })
}

function message_stat_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_message_stat', { id: id }, function(data) {
    console.log(data);
  })
}



# opt_out frontend functions:

$('opt_out_add_btn').click(function() { opt_out_add(); });
$('opt_out_set_btn').click(function(e) { opt_out_set(e); });
$('opt_out_del_btn').click(function(e) { opt_out_del(e); });

function opt_out_add() {
  $.post('add_opt_out', { nemail: val1 }, function(data) {
    console.log(data);
  })
}

function opt_out_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_opt_out', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function opt_out_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_opt_out', { id: id, nemail: val1 }, function(data) {
    console.log(data);
  })
}

function opt_out_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_opt_out', { id: id }, function(data) {
    console.log(data);
  })
}



# page frontend functions:

$('page_add_btn').click(function() { page_add(); });
$('page_set_btn').click(function(e) { page_set(e); });
$('page_del_btn').click(function(e) { page_del(e); });

function page_add() {
  $.post('add_page', { client_id: val1, name: val2, layout_id: val3, type: val4 }, function(data) {
    console.log(data);
  })
}

function page_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_page', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function page_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_page', { id: id, client_id: val1, name: val2, layout_id: val3, type: val4 }, function(data) {
    console.log(data);
  })
}

function page_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_page', { id: id }, function(data) {
    console.log(data);
  })
}



# page_variables frontend functions:

$('page_variables_add_btn').click(function() { page_variables_add(); });
$('page_variables_set_btn').click(function(e) { page_variables_set(e); });
$('page_variables_del_btn').click(function(e) { page_variables_del(e); });

function page_variables_add() {
  $.post('add_page_variables', { page_id: val1, name: val2, value: val3 }, function(data) {
    console.log(data);
  })
}

function page_variables_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_page_variables', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function page_variables_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_page_variables', { id: id, page_id: val1, name: val2, value: val3 }, function(data) {
    console.log(data);
  })
}

function page_variables_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_page_variables', { id: id }, function(data) {
    console.log(data);
  })
}



# policy frontend functions:

$('policy_add_btn').click(function() { policy_add(); });
$('policy_set_btn').click(function(e) { policy_set(e); });
$('policy_del_btn').click(function(e) { policy_del(e); });

function policy_add() {
  $.post('add_policy', { name: val1, type: val2, text: val3 }, function(data) {
    console.log(data);
  })
}

function policy_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_policy', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function policy_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_policy', { id: id, name: val1, type: val2, text: val3 }, function(data) {
    console.log(data);
  })
}

function policy_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_policy', { id: id }, function(data) {
    console.log(data);
  })
}



# product frontend functions:

$('product_add_btn').click(function() { product_add(); });
$('product_set_btn').click(function(e) { product_set(e); });
$('product_del_btn').click(function(e) { product_del(e); });

function product_add() {
  $.post('add_product', { name: val1 }, function(data) {
    console.log(data);
  })
}

function product_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_product', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function product_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_product', { id: id, name: val1 }, function(data) {
    console.log(data);
  })
}

function product_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_product', { id: id }, function(data) {
    console.log(data);
  })
}



# segment frontend functions:

$('segment_add_btn').click(function() { segment_add(); });
$('segment_set_btn').click(function(e) { segment_set(e); });
$('segment_del_btn').click(function(e) { segment_del(e); });

function segment_add() {
  $.post('add_segment', { status_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function segment_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_segment', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function segment_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_segment', { id: id, status_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function segment_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_segment', { id: id }, function(data) {
    console.log(data);
  })
}



# segment_lead_source frontend functions:

$('segment_lead_source_add_btn').click(function() { segment_lead_source_add(); });
$('segment_lead_source_set_btn').click(function(e) { segment_lead_source_set(e); });
$('segment_lead_source_del_btn').click(function(e) { segment_lead_source_del(e); });

function segment_lead_source_add() {
  $.post('add_segment_lead_source', { segment_id: val1, product_id: val2 }, function(data) {
    console.log(data);
  })
}

function segment_lead_source_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_segment_lead_source', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function segment_lead_source_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_segment_lead_source', { id: id, segment_id: val1, product_id: val2 }, function(data) {
    console.log(data);
  })
}

function segment_lead_source_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_segment_lead_source', { id: id }, function(data) {
    console.log(data);
  })
}



# segment_product frontend functions:

$('segment_product_add_btn').click(function() { segment_product_add(); });
$('segment_product_set_btn').click(function(e) { segment_product_set(e); });
$('segment_product_del_btn').click(function(e) { segment_product_del(e); });

function segment_product_add() {
  $.post('add_segment_product', { segment_id: val1, product_id: val2 }, function(data) {
    console.log(data);
  })
}

function segment_product_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_segment_product', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function segment_product_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_segment_product', { id: id, segment_id: val1, product_id: val2 }, function(data) {
    console.log(data);
  })
}

function segment_product_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_segment_product', { id: id }, function(data) {
    console.log(data);
  })
}



# sender frontend functions:

$('sender_add_btn').click(function() { sender_add(); });
$('sender_set_btn').click(function(e) { sender_set(e); });
$('sender_del_btn').click(function(e) { sender_del(e); });

function sender_add() {
  $.post('add_sender', { signature: val1, active: val2, client_id: val3, email: val4, first_name: val5, last_name: val6, group_id: val7, default: val8, phone_main: val9, phone_cell: val10, phone_fax: val11 }, function(data) {
    console.log(data);
  })
}

function sender_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_sender', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function sender_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_sender', { id: id, signature: val1, active: val2, client_id: val3, email: val4, first_name: val5, last_name: val6, group_id: val7, default: val8, phone_main: val9, phone_cell: val10, phone_fax: val11 }, function(data) {
    console.log(data);
  })
}

function sender_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_sender', { id: id }, function(data) {
    console.log(data);
  })
}



# sender_alias frontend functions:

$('sender_alias_add_btn').click(function() { sender_alias_add(); });
$('sender_alias_set_btn').click(function(e) { sender_alias_set(e); });
$('sender_alias_del_btn').click(function(e) { sender_alias_del(e); });

function sender_alias_add() {
  $.post('add_sender_alias', { sender_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function sender_alias_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_sender_alias', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function sender_alias_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_sender_alias', { id: id, sender_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function sender_alias_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_sender_alias', { id: id }, function(data) {
    console.log(data);
  })
}



# sender_custom frontend functions:

$('sender_custom_add_btn').click(function() { sender_custom_add(); });
$('sender_custom_set_btn').click(function(e) { sender_custom_set(e); });
$('sender_custom_del_btn').click(function(e) { sender_custom_del(e); });

function sender_custom_add() {
  $.post('add_sender_custom', { sender_id: val1, name: val2, value: val3 }, function(data) {
    console.log(data);
  })
}

function sender_custom_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_sender_custom', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function sender_custom_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_sender_custom', { id: id, sender_id: val1, name: val2, value: val3 }, function(data) {
    console.log(data);
  })
}

function sender_custom_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_sender_custom', { id: id }, function(data) {
    console.log(data);
  })
}



# state frontend functions:

$('state_add_btn').click(function() { state_add(); });
$('state_set_btn').click(function(e) { state_set(e); });
$('state_del_btn').click(function(e) { state_del(e); });

function state_add() {
  $.post('add_state', { name: val1, abbreviation: val2 }, function(data) {
    console.log(data);
  })
}

function state_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_state', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function state_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_state', { id: id, name: val1, abbreviation: val2 }, function(data) {
    console.log(data);
  })
}

function state_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_state', { id: id }, function(data) {
    console.log(data);
  })
}



# status frontend functions:

$('status_add_btn').click(function() { status_add(); });
$('status_set_btn').click(function(e) { status_set(e); });
$('status_del_btn').click(function(e) { status_del(e); });

function status_add() {
  $.post('add_status', { client_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function status_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_status', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function status_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_status', { id: id, client_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function status_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_status', { id: id }, function(data) {
    console.log(data);
  })
}



# status_alias frontend functions:

$('status_alias_add_btn').click(function() { status_alias_add(); });
$('status_alias_set_btn').click(function(e) { status_alias_set(e); });
$('status_alias_del_btn').click(function(e) { status_alias_del(e); });

function status_alias_add() {
  $.post('add_status_alias', { status_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function status_alias_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_status_alias', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function status_alias_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_status_alias', { id: id, status_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function status_alias_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_status_alias', { id: id }, function(data) {
    console.log(data);
  })
}



# template frontend functions:

$('template_add_btn').click(function() { template_add(); });
$('template_set_btn').click(function(e) { template_set(e); });
$('template_del_btn').click(function(e) { template_del(e); });

function template_add() {
  $.post('add_template', { name: val1, html: val2, text: val3, thumbnail: val4 }, function(data) {
    console.log(data);
  })
}

function template_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_template', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function template_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_template', { id: id, name: val1, html: val2, text: val3, thumbnail: val4 }, function(data) {
    console.log(data);
  })
}

function template_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_template', { id: id }, function(data) {
    console.log(data);
  })
}



# template_tags frontend functions:

$('template_tags_add_btn').click(function() { template_tags_add(); });
$('template_tags_set_btn').click(function(e) { template_tags_set(e); });
$('template_tags_del_btn').click(function(e) { template_tags_del(e); });

function template_tags_add() {
  $.post('add_template_tags', { template_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function template_tags_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_template_tags', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function template_tags_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_template_tags', { id: id, template_id: val1, name: val2 }, function(data) {
    console.log(data);
  })
}

function template_tags_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_template_tags', { id: id }, function(data) {
    console.log(data);
  })
}



# timezone frontend functions:

$('timezone_add_btn').click(function() { timezone_add(); });
$('timezone_set_btn').click(function(e) { timezone_set(e); });
$('timezone_del_btn').click(function(e) { timezone_del(e); });

function timezone_add() {
  $.post('add_timezone', { name: val1 }, function(data) {
    console.log(data);
  })
}

function timezone_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_timezone', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function timezone_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_timezone', { id: id, name: val1 }, function(data) {
    console.log(data);
  })
}

function timezone_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_timezone', { id: id }, function(data) {
    console.log(data);
  })
}



# upload_queue frontend functions:

$('upload_queue_add_btn').click(function() { upload_queue_add(); });
$('upload_queue_set_btn').click(function(e) { upload_queue_set(e); });
$('upload_queue_del_btn').click(function(e) { upload_queue_del(e); });

function upload_queue_add() {
  $.post('add_upload_queue', { file_id: val1, status: val2 }, function(data) {
    console.log(data);
  })
}

function upload_queue_get(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('get_upload_queue', { id: id }, function(data) {
    console.log(data);
  },'json')
}

function upload_queue_set(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('set_upload_queue', { id: id, file_id: val1, status: val2 }, function(data) {
    console.log(data);
  })
}

function upload_queue_del(e) {
  id = e.currentTarget.id.split('-')[2];
  $.post('del_upload_queue', { id: id }, function(data) {
    console.log(data);
  })
}
