express = require 'express'
{be} = require 'backend'

app = express()


# admin_user app functions:

app.post '/add_admin_user', (req, res) ->
be.add_admin_user req, (err, ret) ->
  res.send ret

app.post '/get_admin_user', (req, res) ->
be.get_admin_user req, (err, ret) ->
  res.send ret

app.post '/set_admin_user', (req, res) ->
be.set_admin_user req, (err, ret) ->
  res.send ret

app.post '/del_admin_user', (req, res) ->
be.del_admin_user req, (err, ret) ->
  res.send ret



# api_key app functions:

app.post '/add_api_key', (req, res) ->
be.add_api_key req, (err, ret) ->
  res.send ret

app.post '/get_api_key', (req, res) ->
be.get_api_key req, (err, ret) ->
  res.send ret

app.post '/set_api_key', (req, res) ->
be.set_api_key req, (err, ret) ->
  res.send ret

app.post '/del_api_key', (req, res) ->
be.del_api_key req, (err, ret) ->
  res.send ret



# asset app functions:

app.post '/add_asset', (req, res) ->
be.add_asset req, (err, ret) ->
  res.send ret

app.post '/get_asset', (req, res) ->
be.get_asset req, (err, ret) ->
  res.send ret

app.post '/set_asset', (req, res) ->
be.set_asset req, (err, ret) ->
  res.send ret

app.post '/del_asset', (req, res) ->
be.del_asset req, (err, ret) ->
  res.send ret



# attribute app functions:

app.post '/add_attribute', (req, res) ->
be.add_attribute req, (err, ret) ->
  res.send ret

app.post '/get_attribute', (req, res) ->
be.get_attribute req, (err, ret) ->
  res.send ret

app.post '/set_attribute', (req, res) ->
be.set_attribute req, (err, ret) ->
  res.send ret

app.post '/del_attribute', (req, res) ->
be.del_attribute req, (err, ret) ->
  res.send ret



# attribute_value app functions:

app.post '/add_attribute_value', (req, res) ->
be.add_attribute_value req, (err, ret) ->
  res.send ret

app.post '/get_attribute_value', (req, res) ->
be.get_attribute_value req, (err, ret) ->
  res.send ret

app.post '/set_attribute_value', (req, res) ->
be.set_attribute_value req, (err, ret) ->
  res.send ret

app.post '/del_attribute_value', (req, res) ->
be.del_attribute_value req, (err, ret) ->
  res.send ret



# attribute_value_alias app functions:

app.post '/add_attribute_value_alias', (req, res) ->
be.add_attribute_value_alias req, (err, ret) ->
  res.send ret

app.post '/get_attribute_value_alias', (req, res) ->
be.get_attribute_value_alias req, (err, ret) ->
  res.send ret

app.post '/set_attribute_value_alias', (req, res) ->
be.set_attribute_value_alias req, (err, ret) ->
  res.send ret

app.post '/del_attribute_value_alias', (req, res) ->
be.del_attribute_value_alias req, (err, ret) ->
  res.send ret



# batch_send app functions:

app.post '/add_batch_send', (req, res) ->
be.add_batch_send req, (err, ret) ->
  res.send ret

app.post '/get_batch_send', (req, res) ->
be.get_batch_send req, (err, ret) ->
  res.send ret

app.post '/set_batch_send', (req, res) ->
be.set_batch_send req, (err, ret) ->
  res.send ret

app.post '/del_batch_send', (req, res) ->
be.del_batch_send req, (err, ret) ->
  res.send ret



# batch_send_link app functions:

app.post '/add_batch_send_link', (req, res) ->
be.add_batch_send_link req, (err, ret) ->
  res.send ret

app.post '/get_batch_send_link', (req, res) ->
be.get_batch_send_link req, (err, ret) ->
  res.send ret

app.post '/set_batch_send_link', (req, res) ->
be.set_batch_send_link req, (err, ret) ->
  res.send ret

app.post '/del_batch_send_link', (req, res) ->
be.del_batch_send_link req, (err, ret) ->
  res.send ret



# batch_send_policy app functions:

app.post '/add_batch_send_policy', (req, res) ->
be.add_batch_send_policy req, (err, ret) ->
  res.send ret

app.post '/get_batch_send_policy', (req, res) ->
be.get_batch_send_policy req, (err, ret) ->
  res.send ret

app.post '/set_batch_send_policy', (req, res) ->
be.set_batch_send_policy req, (err, ret) ->
  res.send ret

app.post '/del_batch_send_policy', (req, res) ->
be.del_batch_send_policy req, (err, ret) ->
  res.send ret



# batch_send_stat app functions:

app.post '/add_batch_send_stat', (req, res) ->
be.add_batch_send_stat req, (err, ret) ->
  res.send ret

app.post '/get_batch_send_stat', (req, res) ->
be.get_batch_send_stat req, (err, ret) ->
  res.send ret

app.post '/set_batch_send_stat', (req, res) ->
be.set_batch_send_stat req, (err, ret) ->
  res.send ret

app.post '/del_batch_send_stat', (req, res) ->
be.del_batch_send_stat req, (err, ret) ->
  res.send ret



# client app functions:

app.post '/add_client', (req, res) ->
be.add_client req, (err, ret) ->
  res.send ret

app.post '/get_client', (req, res) ->
be.get_client req, (err, ret) ->
  res.send ret

app.post '/set_client', (req, res) ->
be.set_client req, (err, ret) ->
  res.send ret

app.post '/del_client', (req, res) ->
be.del_client req, (err, ret) ->
  res.send ret



# client_cname app functions:

app.post '/add_client_cname', (req, res) ->
be.add_client_cname req, (err, ret) ->
  res.send ret

app.post '/get_client_cname', (req, res) ->
be.get_client_cname req, (err, ret) ->
  res.send ret

app.post '/set_client_cname', (req, res) ->
be.set_client_cname req, (err, ret) ->
  res.send ret

app.post '/del_client_cname', (req, res) ->
be.del_client_cname req, (err, ret) ->
  res.send ret



# client_dkim app functions:

app.post '/add_client_dkim', (req, res) ->
be.add_client_dkim req, (err, ret) ->
  res.send ret

app.post '/get_client_dkim', (req, res) ->
be.get_client_dkim req, (err, ret) ->
  res.send ret

app.post '/set_client_dkim', (req, res) ->
be.set_client_dkim req, (err, ret) ->
  res.send ret

app.post '/del_client_dkim', (req, res) ->
be.del_client_dkim req, (err, ret) ->
  res.send ret



# client_settings app functions:

app.post '/add_client_settings', (req, res) ->
be.add_client_settings req, (err, ret) ->
  res.send ret

app.post '/get_client_settings', (req, res) ->
be.get_client_settings req, (err, ret) ->
  res.send ret

app.post '/set_client_settings', (req, res) ->
be.set_client_settings req, (err, ret) ->
  res.send ret

app.post '/del_client_settings', (req, res) ->
be.del_client_settings req, (err, ret) ->
  res.send ret



# file app functions:

app.post '/add_file', (req, res) ->
be.add_file req, (err, ret) ->
  res.send ret

app.post '/get_file', (req, res) ->
be.get_file req, (err, ret) ->
  res.send ret

app.post '/set_file', (req, res) ->
be.set_file req, (err, ret) ->
  res.send ret

app.post '/del_file', (req, res) ->
be.del_file req, (err, ret) ->
  res.send ret



# group app functions:

app.post '/add_group', (req, res) ->
be.add_group req, (err, ret) ->
  res.send ret

app.post '/get_group', (req, res) ->
be.get_group req, (err, ret) ->
  res.send ret

app.post '/set_group', (req, res) ->
be.set_group req, (err, ret) ->
  res.send ret

app.post '/del_group', (req, res) ->
be.del_group req, (err, ret) ->
  res.send ret



# group_phone app functions:

app.post '/add_group_phone', (req, res) ->
be.add_group_phone req, (err, ret) ->
  res.send ret

app.post '/get_group_phone', (req, res) ->
be.get_group_phone req, (err, ret) ->
  res.send ret

app.post '/set_group_phone', (req, res) ->
be.set_group_phone req, (err, ret) ->
  res.send ret

app.post '/del_group_phone', (req, res) ->
be.del_group_phone req, (err, ret) ->
  res.send ret



# integration_partner app functions:

app.post '/add_integration_partner', (req, res) ->
be.add_integration_partner req, (err, ret) ->
  res.send ret

app.post '/get_integration_partner', (req, res) ->
be.get_integration_partner req, (err, ret) ->
  res.send ret

app.post '/set_integration_partner', (req, res) ->
be.set_integration_partner req, (err, ret) ->
  res.send ret

app.post '/del_integration_partner', (req, res) ->
be.del_integration_partner req, (err, ret) ->
  res.send ret



# layout app functions:

app.post '/add_layout', (req, res) ->
be.add_layout req, (err, ret) ->
  res.send ret

app.post '/get_layout', (req, res) ->
be.get_layout req, (err, ret) ->
  res.send ret

app.post '/set_layout', (req, res) ->
be.set_layout req, (err, ret) ->
  res.send ret

app.post '/del_layout', (req, res) ->
be.del_layout req, (err, ret) ->
  res.send ret



# layout_tags app functions:

app.post '/add_layout_tags', (req, res) ->
be.add_layout_tags req, (err, ret) ->
  res.send ret

app.post '/get_layout_tags', (req, res) ->
be.get_layout_tags req, (err, ret) ->
  res.send ret

app.post '/set_layout_tags', (req, res) ->
be.set_layout_tags req, (err, ret) ->
  res.send ret

app.post '/del_layout_tags', (req, res) ->
be.del_layout_tags req, (err, ret) ->
  res.send ret



# lead_source app functions:

app.post '/add_lead_source', (req, res) ->
be.add_lead_source req, (err, ret) ->
  res.send ret

app.post '/get_lead_source', (req, res) ->
be.get_lead_source req, (err, ret) ->
  res.send ret

app.post '/set_lead_source', (req, res) ->
be.set_lead_source req, (err, ret) ->
  res.send ret

app.post '/del_lead_source', (req, res) ->
be.del_lead_source req, (err, ret) ->
  res.send ret



# message app functions:

app.post '/add_message', (req, res) ->
be.add_message req, (err, ret) ->
  res.send ret

app.post '/get_message', (req, res) ->
be.get_message req, (err, ret) ->
  res.send ret

app.post '/set_message', (req, res) ->
be.set_message req, (err, ret) ->
  res.send ret

app.post '/del_message', (req, res) ->
be.del_message req, (err, ret) ->
  res.send ret



# message_link app functions:

app.post '/add_message_link', (req, res) ->
be.add_message_link req, (err, ret) ->
  res.send ret

app.post '/get_message_link', (req, res) ->
be.get_message_link req, (err, ret) ->
  res.send ret

app.post '/set_message_link', (req, res) ->
be.set_message_link req, (err, ret) ->
  res.send ret

app.post '/del_message_link', (req, res) ->
be.del_message_link req, (err, ret) ->
  res.send ret



# message_stat app functions:

app.post '/add_message_stat', (req, res) ->
be.add_message_stat req, (err, ret) ->
  res.send ret

app.post '/get_message_stat', (req, res) ->
be.get_message_stat req, (err, ret) ->
  res.send ret

app.post '/set_message_stat', (req, res) ->
be.set_message_stat req, (err, ret) ->
  res.send ret

app.post '/del_message_stat', (req, res) ->
be.del_message_stat req, (err, ret) ->
  res.send ret



# opt_out app functions:

app.post '/add_opt_out', (req, res) ->
be.add_opt_out req, (err, ret) ->
  res.send ret

app.post '/get_opt_out', (req, res) ->
be.get_opt_out req, (err, ret) ->
  res.send ret

app.post '/set_opt_out', (req, res) ->
be.set_opt_out req, (err, ret) ->
  res.send ret

app.post '/del_opt_out', (req, res) ->
be.del_opt_out req, (err, ret) ->
  res.send ret



# page app functions:

app.post '/add_page', (req, res) ->
be.add_page req, (err, ret) ->
  res.send ret

app.post '/get_page', (req, res) ->
be.get_page req, (err, ret) ->
  res.send ret

app.post '/set_page', (req, res) ->
be.set_page req, (err, ret) ->
  res.send ret

app.post '/del_page', (req, res) ->
be.del_page req, (err, ret) ->
  res.send ret



# page_variables app functions:

app.post '/add_page_variables', (req, res) ->
be.add_page_variables req, (err, ret) ->
  res.send ret

app.post '/get_page_variables', (req, res) ->
be.get_page_variables req, (err, ret) ->
  res.send ret

app.post '/set_page_variables', (req, res) ->
be.set_page_variables req, (err, ret) ->
  res.send ret

app.post '/del_page_variables', (req, res) ->
be.del_page_variables req, (err, ret) ->
  res.send ret



# policy app functions:

app.post '/add_policy', (req, res) ->
be.add_policy req, (err, ret) ->
  res.send ret

app.post '/get_policy', (req, res) ->
be.get_policy req, (err, ret) ->
  res.send ret

app.post '/set_policy', (req, res) ->
be.set_policy req, (err, ret) ->
  res.send ret

app.post '/del_policy', (req, res) ->
be.del_policy req, (err, ret) ->
  res.send ret



# product app functions:

app.post '/add_product', (req, res) ->
be.add_product req, (err, ret) ->
  res.send ret

app.post '/get_product', (req, res) ->
be.get_product req, (err, ret) ->
  res.send ret

app.post '/set_product', (req, res) ->
be.set_product req, (err, ret) ->
  res.send ret

app.post '/del_product', (req, res) ->
be.del_product req, (err, ret) ->
  res.send ret



# segment app functions:

app.post '/add_segment', (req, res) ->
be.add_segment req, (err, ret) ->
  res.send ret

app.post '/get_segment', (req, res) ->
be.get_segment req, (err, ret) ->
  res.send ret

app.post '/set_segment', (req, res) ->
be.set_segment req, (err, ret) ->
  res.send ret

app.post '/del_segment', (req, res) ->
be.del_segment req, (err, ret) ->
  res.send ret



# segment_lead_source app functions:

app.post '/add_segment_lead_source', (req, res) ->
be.add_segment_lead_source req, (err, ret) ->
  res.send ret

app.post '/get_segment_lead_source', (req, res) ->
be.get_segment_lead_source req, (err, ret) ->
  res.send ret

app.post '/set_segment_lead_source', (req, res) ->
be.set_segment_lead_source req, (err, ret) ->
  res.send ret

app.post '/del_segment_lead_source', (req, res) ->
be.del_segment_lead_source req, (err, ret) ->
  res.send ret



# segment_product app functions:

app.post '/add_segment_product', (req, res) ->
be.add_segment_product req, (err, ret) ->
  res.send ret

app.post '/get_segment_product', (req, res) ->
be.get_segment_product req, (err, ret) ->
  res.send ret

app.post '/set_segment_product', (req, res) ->
be.set_segment_product req, (err, ret) ->
  res.send ret

app.post '/del_segment_product', (req, res) ->
be.del_segment_product req, (err, ret) ->
  res.send ret



# sender app functions:

app.post '/add_sender', (req, res) ->
be.add_sender req, (err, ret) ->
  res.send ret

app.post '/get_sender', (req, res) ->
be.get_sender req, (err, ret) ->
  res.send ret

app.post '/set_sender', (req, res) ->
be.set_sender req, (err, ret) ->
  res.send ret

app.post '/del_sender', (req, res) ->
be.del_sender req, (err, ret) ->
  res.send ret



# sender_alias app functions:

app.post '/add_sender_alias', (req, res) ->
be.add_sender_alias req, (err, ret) ->
  res.send ret

app.post '/get_sender_alias', (req, res) ->
be.get_sender_alias req, (err, ret) ->
  res.send ret

app.post '/set_sender_alias', (req, res) ->
be.set_sender_alias req, (err, ret) ->
  res.send ret

app.post '/del_sender_alias', (req, res) ->
be.del_sender_alias req, (err, ret) ->
  res.send ret



# sender_custom app functions:

app.post '/add_sender_custom', (req, res) ->
be.add_sender_custom req, (err, ret) ->
  res.send ret

app.post '/get_sender_custom', (req, res) ->
be.get_sender_custom req, (err, ret) ->
  res.send ret

app.post '/set_sender_custom', (req, res) ->
be.set_sender_custom req, (err, ret) ->
  res.send ret

app.post '/del_sender_custom', (req, res) ->
be.del_sender_custom req, (err, ret) ->
  res.send ret



# state app functions:

app.post '/add_state', (req, res) ->
be.add_state req, (err, ret) ->
  res.send ret

app.post '/get_state', (req, res) ->
be.get_state req, (err, ret) ->
  res.send ret

app.post '/set_state', (req, res) ->
be.set_state req, (err, ret) ->
  res.send ret

app.post '/del_state', (req, res) ->
be.del_state req, (err, ret) ->
  res.send ret



# status app functions:

app.post '/add_status', (req, res) ->
be.add_status req, (err, ret) ->
  res.send ret

app.post '/get_status', (req, res) ->
be.get_status req, (err, ret) ->
  res.send ret

app.post '/set_status', (req, res) ->
be.set_status req, (err, ret) ->
  res.send ret

app.post '/del_status', (req, res) ->
be.del_status req, (err, ret) ->
  res.send ret



# status_alias app functions:

app.post '/add_status_alias', (req, res) ->
be.add_status_alias req, (err, ret) ->
  res.send ret

app.post '/get_status_alias', (req, res) ->
be.get_status_alias req, (err, ret) ->
  res.send ret

app.post '/set_status_alias', (req, res) ->
be.set_status_alias req, (err, ret) ->
  res.send ret

app.post '/del_status_alias', (req, res) ->
be.del_status_alias req, (err, ret) ->
  res.send ret



# template app functions:

app.post '/add_template', (req, res) ->
be.add_template req, (err, ret) ->
  res.send ret

app.post '/get_template', (req, res) ->
be.get_template req, (err, ret) ->
  res.send ret

app.post '/set_template', (req, res) ->
be.set_template req, (err, ret) ->
  res.send ret

app.post '/del_template', (req, res) ->
be.del_template req, (err, ret) ->
  res.send ret



# template_tags app functions:

app.post '/add_template_tags', (req, res) ->
be.add_template_tags req, (err, ret) ->
  res.send ret

app.post '/get_template_tags', (req, res) ->
be.get_template_tags req, (err, ret) ->
  res.send ret

app.post '/set_template_tags', (req, res) ->
be.set_template_tags req, (err, ret) ->
  res.send ret

app.post '/del_template_tags', (req, res) ->
be.del_template_tags req, (err, ret) ->
  res.send ret



# timezone app functions:

app.post '/add_timezone', (req, res) ->
be.add_timezone req, (err, ret) ->
  res.send ret

app.post '/get_timezone', (req, res) ->
be.get_timezone req, (err, ret) ->
  res.send ret

app.post '/set_timezone', (req, res) ->
be.set_timezone req, (err, ret) ->
  res.send ret

app.post '/del_timezone', (req, res) ->
be.del_timezone req, (err, ret) ->
  res.send ret



# upload_queue app functions:

app.post '/add_upload_queue', (req, res) ->
be.add_upload_queue req, (err, ret) ->
  res.send ret

app.post '/get_upload_queue', (req, res) ->
be.get_upload_queue req, (err, ret) ->
  res.send ret

app.post '/set_upload_queue', (req, res) ->
be.set_upload_queue req, (err, ret) ->
  res.send ret

app.post '/del_upload_queue', (req, res) ->
be.del_upload_queue req, (err, ret) ->
  res.send ret

