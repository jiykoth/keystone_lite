pg = require('pg')

module.exports.Backend = class Backend

  conString = 'postgres://user:password@node.db.softvu.com/node'
  db = new pg.Client(conString)
  db.connect()

  # admin_user backend functions:

  add_admin_user = (req, cb) ->
    sql = 'insert into admin_user (client_id, username, first_name, last_name, password, salt, admin, disabled) values ($1, $2, $3, $4, $5, $6, $7, $8)'
    db.query sql, [req.client_id, req.username, req.first_name, req.last_name, req.password, req.salt, req.admin, req.disabled], (err, res) ->
      cb err, res.newid

  get_admin_user = (req, cb) ->
    sql = 'select * from admin_user where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_admin_user = (req, cb) ->
    sql = 'update admin_user set client_id = $1, username = $2, first_name = $3, last_name = $4, password = $5, salt = $6, admin = $7, disabled = $8 where id = $15'
    db.query sql, [req.client_id, req.username, req.first_name, req.last_name, req.password, req.salt, req.admin, req.disabled], (err, res) ->
      cb err, 'success'

  del_admin_user = (req, cb) ->
    sql = 'delete from admin_user where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # api_key backend functions:

  add_api_key = (req, cb) ->
    sql = 'insert into api_key (client_id, key) values ($1, $2)'
    db.query sql, [req.client_id, req.key], (err, res) ->
      cb err, res.newid

  get_api_key = (req, cb) ->
    sql = 'select * from api_key where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_api_key = (req, cb) ->
    sql = 'update api_key set client_id = $1, key = $2 where id = $15'
    db.query sql, [req.client_id, req.key], (err, res) ->
      cb err, 'success'

  del_api_key = (req, cb) ->
    sql = 'delete from api_key where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # asset backend functions:

  add_asset = (req, cb) ->
    sql = 'insert into asset (client_id, name, size) values ($1, $2, $3)'
    db.query sql, [req.client_id, req.name, req.size], (err, res) ->
      cb err, res.newid

  get_asset = (req, cb) ->
    sql = 'select * from asset where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_asset = (req, cb) ->
    sql = 'update asset set client_id = $1, name = $2, size = $3 where id = $15'
    db.query sql, [req.client_id, req.name, req.size], (err, res) ->
      cb err, 'success'

  del_asset = (req, cb) ->
    sql = 'delete from asset where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # attribute backend functions:

  add_attribute = (req, cb) ->
    sql = 'insert into attribute (client_id, name) values ($1, $2)'
    db.query sql, [req.client_id, req.name], (err, res) ->
      cb err, res.newid

  get_attribute = (req, cb) ->
    sql = 'select * from attribute where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_attribute = (req, cb) ->
    sql = 'update attribute set client_id = $1, name = $2 where id = $15'
    db.query sql, [req.client_id, req.name], (err, res) ->
      cb err, 'success'

  del_attribute = (req, cb) ->
    sql = 'delete from attribute where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # attribute_value backend functions:

  add_attribute_value = (req, cb) ->
    sql = 'insert into attribute_value (attribute_id, name) values ($1, $2)'
    db.query sql, [req.attribute_id, req.name], (err, res) ->
      cb err, res.newid

  get_attribute_value = (req, cb) ->
    sql = 'select * from attribute_value where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_attribute_value = (req, cb) ->
    sql = 'update attribute_value set attribute_id = $1, name = $2 where id = $15'
    db.query sql, [req.attribute_id, req.name], (err, res) ->
      cb err, 'success'

  del_attribute_value = (req, cb) ->
    sql = 'delete from attribute_value where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # attribute_value_alias backend functions:

  add_attribute_value_alias = (req, cb) ->
    sql = 'insert into attribute_value_alias (attribute_value_id, name) values ($1, $2)'
    db.query sql, [req.attribute_value_id, req.name], (err, res) ->
      cb err, res.newid

  get_attribute_value_alias = (req, cb) ->
    sql = 'select * from attribute_value_alias where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_attribute_value_alias = (req, cb) ->
    sql = 'update attribute_value_alias set attribute_value_id = $1, name = $2 where id = $15'
    db.query sql, [req.attribute_value_id, req.name], (err, res) ->
      cb err, 'success'

  del_attribute_value_alias = (req, cb) ->
    sql = 'delete from attribute_value_alias where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # batch_send backend functions:

  add_batch_send = (req, cb) ->
    sql = 'insert into batch_send (text_preheader, text_body, batch_csv, client_id, name, when, scheduled, message_id, subject, template_id, html_preheader, html_body) values ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)'
    db.query sql, [req.text_preheader, req.text_body, req.batch_csv, req.client_id, req.name, req.when, req.scheduled, req.message_id, req.subject, req.template_id, req.html_preheader, req.html_body], (err, res) ->
      cb err, res.newid

  get_batch_send = (req, cb) ->
    sql = 'select * from batch_send where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_batch_send = (req, cb) ->
    sql = 'update batch_send set text_preheader = $1, text_body = $2, batch_csv = $3, client_id = $4, name = $5, when = $6, scheduled = $7, message_id = $8, subject = $9, template_id = $10, html_preheader = $11, html_body = $12 where id = $15'
    db.query sql, [req.text_preheader, req.text_body, req.batch_csv, req.client_id, req.name, req.when, req.scheduled, req.message_id, req.subject, req.template_id, req.html_preheader, req.html_body], (err, res) ->
      cb err, 'success'

  del_batch_send = (req, cb) ->
    sql = 'delete from batch_send where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # batch_send_link backend functions:

  add_batch_send_link = (req, cb) ->
    sql = 'insert into batch_send_link (batch_send_id, name, type, page_id, url, text) values ($1, $2, $3, $4, $5, $6)'
    db.query sql, [req.batch_send_id, req.name, req.type, req.page_id, req.url, req.text], (err, res) ->
      cb err, res.newid

  get_batch_send_link = (req, cb) ->
    sql = 'select * from batch_send_link where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_batch_send_link = (req, cb) ->
    sql = 'update batch_send_link set batch_send_id = $1, name = $2, type = $3, page_id = $4, url = $5, text = $6 where id = $15'
    db.query sql, [req.batch_send_id, req.name, req.type, req.page_id, req.url, req.text], (err, res) ->
      cb err, 'success'

  del_batch_send_link = (req, cb) ->
    sql = 'delete from batch_send_link where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # batch_send_policy backend functions:

  add_batch_send_policy = (req, cb) ->
    sql = 'insert into batch_send_policy (batch_send_id, policy_id) values ($1, $2)'
    db.query sql, [req.batch_send_id, req.policy_id], (err, res) ->
      cb err, res.newid

  get_batch_send_policy = (req, cb) ->
    sql = 'select * from batch_send_policy where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_batch_send_policy = (req, cb) ->
    sql = 'update batch_send_policy set batch_send_id = $1, policy_id = $2 where id = $15'
    db.query sql, [req.batch_send_id, req.policy_id], (err, res) ->
      cb err, 'success'

  del_batch_send_policy = (req, cb) ->
    sql = 'delete from batch_send_policy where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # batch_send_stat backend functions:

  add_batch_send_stat = (req, cb) ->
    sql = 'insert into batch_send_stat (batch_send_id, sent, delivered, opt_out, open, unique_open, click, unique_click) values ($1, $2, $3, $4, $5, $6, $7, $8)'
    db.query sql, [req.batch_send_id, req.sent, req.delivered, req.opt_out, req.open, req.unique_open, req.click, req.unique_click], (err, res) ->
      cb err, res.newid

  get_batch_send_stat = (req, cb) ->
    sql = 'select * from batch_send_stat where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_batch_send_stat = (req, cb) ->
    sql = 'update batch_send_stat set batch_send_id = $1, sent = $2, delivered = $3, opt_out = $4, open = $5, unique_open = $6, click = $7, unique_click = $8 where id = $15'
    db.query sql, [req.batch_send_id, req.sent, req.delivered, req.opt_out, req.open, req.unique_open, req.click, req.unique_click], (err, res) ->
      cb err, 'success'

  del_batch_send_stat = (req, cb) ->
    sql = 'delete from batch_send_stat where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # client backend functions:

  add_client = (req, cb) ->
    sql = 'insert into client (s3_secret, integration_partner_id, integration_username, integration_password, integration_client_id, webhook_url, dkim, name, short_name, timezone_id, dont_send, archive, privacy_url, manager_email, s3_name, s3_key) values ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)'
    db.query sql, [req.s3_secret, req.integration_partner_id, req.integration_username, req.integration_password, req.integration_client_id, req.webhook_url, req.dkim, req.name, req.short_name, req.timezone_id, req.dont_send, req.archive, req.privacy_url, req.manager_email, req.s3_name, req.s3_key], (err, res) ->
      cb err, res.newid

  get_client = (req, cb) ->
    sql = 'select * from client where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_client = (req, cb) ->
    sql = 'update client set s3_secret = $1, integration_partner_id = $2, integration_username = $3, integration_password = $4, integration_client_id = $5, webhook_url = $6, dkim = $7, name = $8, short_name = $9, timezone_id = $10, dont_send = $11, archive = $12, privacy_url = $13, manager_email = $14, s3_name = $15, s3_key = $16 where id = $15'
    db.query sql, [req.s3_secret, req.integration_partner_id, req.integration_username, req.integration_password, req.integration_client_id, req.webhook_url, req.dkim, req.name, req.short_name, req.timezone_id, req.dont_send, req.archive, req.privacy_url, req.manager_email, req.s3_name, req.s3_key], (err, res) ->
      cb err, 'success'

  del_client = (req, cb) ->
    sql = 'delete from client where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # client_cname backend functions:

  add_client_cname = (req, cb) ->
    sql = 'insert into client_cname (client_id, domain, value) values ($1, $2, $3)'
    db.query sql, [req.client_id, req.domain, req.value], (err, res) ->
      cb err, res.newid

  get_client_cname = (req, cb) ->
    sql = 'select * from client_cname where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_client_cname = (req, cb) ->
    sql = 'update client_cname set client_id = $1, domain = $2, value = $3 where id = $15'
    db.query sql, [req.client_id, req.domain, req.value], (err, res) ->
      cb err, 'success'

  del_client_cname = (req, cb) ->
    sql = 'delete from client_cname where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # client_dkim backend functions:

  add_client_dkim = (req, cb) ->
    sql = 'insert into client_dkim (client_id, domain, selector, private_key, public_key) values ($1, $2, $3, $4, $5)'
    db.query sql, [req.client_id, req.domain, req.selector, req.private_key, req.public_key], (err, res) ->
      cb err, res.newid

  get_client_dkim = (req, cb) ->
    sql = 'select * from client_dkim where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_client_dkim = (req, cb) ->
    sql = 'update client_dkim set client_id = $1, domain = $2, selector = $3, private_key = $4, public_key = $5 where id = $15'
    db.query sql, [req.client_id, req.domain, req.selector, req.private_key, req.public_key], (err, res) ->
      cb err, 'success'

  del_client_dkim = (req, cb) ->
    sql = 'delete from client_dkim where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # client_settings backend functions:

  add_client_settings = (req, cb) ->
    sql = 'insert into client_settings (client_id, timezone_id, privacy_url, dailyvu, supression_time) values ($1, $2, $3, $4, $5)'
    db.query sql, [req.client_id, req.timezone_id, req.privacy_url, req.dailyvu, req.supression_time], (err, res) ->
      cb err, res.newid

  get_client_settings = (req, cb) ->
    sql = 'select * from client_settings where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_client_settings = (req, cb) ->
    sql = 'update client_settings set client_id = $1, timezone_id = $2, privacy_url = $3, dailyvu = $4, supression_time = $5 where id = $15'
    db.query sql, [req.client_id, req.timezone_id, req.privacy_url, req.dailyvu, req.supression_time], (err, res) ->
      cb err, 'success'

  del_client_settings = (req, cb) ->
    sql = 'delete from client_settings where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # file backend functions:

  add_file = (req, cb) ->
    sql = 'insert into file (asset_id, name, blob) values ($1, $2, $3)'
    db.query sql, [req.asset_id, req.name, req.blob], (err, res) ->
      cb err, res.newid

  get_file = (req, cb) ->
    sql = 'select * from file where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_file = (req, cb) ->
    sql = 'update file set asset_id = $1, name = $2, blob = $3 where id = $15'
    db.query sql, [req.asset_id, req.name, req.blob], (err, res) ->
      cb err, 'success'

  del_file = (req, cb) ->
    sql = 'delete from file where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # group backend functions:

  add_group = (req, cb) ->
    sql = 'insert into group (client_id, name, email, address1, address2, city, state_id, zip) values ($1, $2, $3, $4, $5, $6, $7, $8)'
    db.query sql, [req.client_id, req.name, req.email, req.address1, req.address2, req.city, req.state_id, req.zip], (err, res) ->
      cb err, res.newid

  get_group = (req, cb) ->
    sql = 'select * from group where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_group = (req, cb) ->
    sql = 'update group set client_id = $1, name = $2, email = $3, address1 = $4, address2 = $5, city = $6, state_id = $7, zip = $8 where id = $15'
    db.query sql, [req.client_id, req.name, req.email, req.address1, req.address2, req.city, req.state_id, req.zip], (err, res) ->
      cb err, 'success'

  del_group = (req, cb) ->
    sql = 'delete from group where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # group_phone backend functions:

  add_group_phone = (req, cb) ->
    sql = 'insert into group_phone (group_id, type, number) values ($1, $2, $3)'
    db.query sql, [req.group_id, req.type, req.number], (err, res) ->
      cb err, res.newid

  get_group_phone = (req, cb) ->
    sql = 'select * from group_phone where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_group_phone = (req, cb) ->
    sql = 'update group_phone set group_id = $1, type = $2, number = $3 where id = $15'
    db.query sql, [req.group_id, req.type, req.number], (err, res) ->
      cb err, 'success'

  del_group_phone = (req, cb) ->
    sql = 'delete from group_phone where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # integration_partner backend functions:

  add_integration_partner = (req, cb) ->
    sql = 'insert into integration_partner (name, type) values ($1, $2)'
    db.query sql, [req.name, req.type], (err, res) ->
      cb err, res.newid

  get_integration_partner = (req, cb) ->
    sql = 'select * from integration_partner where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_integration_partner = (req, cb) ->
    sql = 'update integration_partner set name = $1, type = $2 where id = $15'
    db.query sql, [req.name, req.type], (err, res) ->
      cb err, 'success'

  del_integration_partner = (req, cb) ->
    sql = 'delete from integration_partner where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # layout backend functions:

  add_layout = (req, cb) ->
    sql = 'insert into layout (client_id, name) values ($1, $2)'
    db.query sql, [req.client_id, req.name], (err, res) ->
      cb err, res.newid

  get_layout = (req, cb) ->
    sql = 'select * from layout where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_layout = (req, cb) ->
    sql = 'update layout set client_id = $1, name = $2 where id = $15'
    db.query sql, [req.client_id, req.name], (err, res) ->
      cb err, 'success'

  del_layout = (req, cb) ->
    sql = 'delete from layout where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # layout_tags backend functions:

  add_layout_tags = (req, cb) ->
    sql = 'insert into layout_tags (layout_id, name) values ($1, $2)'
    db.query sql, [req.layout_id, req.name], (err, res) ->
      cb err, res.newid

  get_layout_tags = (req, cb) ->
    sql = 'select * from layout_tags where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_layout_tags = (req, cb) ->
    sql = 'update layout_tags set layout_id = $1, name = $2 where id = $15'
    db.query sql, [req.layout_id, req.name], (err, res) ->
      cb err, 'success'

  del_layout_tags = (req, cb) ->
    sql = 'delete from layout_tags where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # lead_source backend functions:

  add_lead_source = (req, cb) ->
    sql = 'insert into lead_source (name) values ($1)'
    db.query sql, [req.name], (err, res) ->
      cb err, res.newid

  get_lead_source = (req, cb) ->
    sql = 'select * from lead_source where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_lead_source = (req, cb) ->
    sql = 'update lead_source set name = $1 where id = $15'
    db.query sql, [req.name], (err, res) ->
      cb err, 'success'

  del_lead_source = (req, cb) ->
    sql = 'delete from lead_source where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # message backend functions:

  add_message = (req, cb) ->
    sql = 'insert into message (text_policy_id, template_id, name, slug, subject, html_preheader, html_body, text_preheader, text_body, html_policy_id) values ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)'
    db.query sql, [req.text_policy_id, req.template_id, req.name, req.slug, req.subject, req.html_preheader, req.html_body, req.text_preheader, req.text_body, req.html_policy_id], (err, res) ->
      cb err, res.newid

  get_message = (req, cb) ->
    sql = 'select * from message where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_message = (req, cb) ->
    sql = 'update message set text_policy_id = $1, template_id = $2, name = $3, slug = $4, subject = $5, html_preheader = $6, html_body = $7, text_preheader = $8, text_body = $9, html_policy_id = $10 where id = $15'
    db.query sql, [req.text_policy_id, req.template_id, req.name, req.slug, req.subject, req.html_preheader, req.html_body, req.text_preheader, req.text_body, req.html_policy_id], (err, res) ->
      cb err, 'success'

  del_message = (req, cb) ->
    sql = 'delete from message where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # message_link backend functions:

  add_message_link = (req, cb) ->
    sql = 'insert into message_link (message_id, name, text, url, type) values ($1, $2, $3, $4, $5)'
    db.query sql, [req.message_id, req.name, req.text, req.url, req.type], (err, res) ->
      cb err, res.newid

  get_message_link = (req, cb) ->
    sql = 'select * from message_link where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_message_link = (req, cb) ->
    sql = 'update message_link set message_id = $1, name = $2, text = $3, url = $4, type = $5 where id = $15'
    db.query sql, [req.message_id, req.name, req.text, req.url, req.type], (err, res) ->
      cb err, 'success'

  del_message_link = (req, cb) ->
    sql = 'delete from message_link where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # message_stat backend functions:

  add_message_stat = (req, cb) ->
    sql = 'insert into message_stat (message_id, sent, delivered, opt_out, open, unique_open, click, unique_click) values ($1, $2, $3, $4, $5, $6, $7, $8)'
    db.query sql, [req.message_id, req.sent, req.delivered, req.opt_out, req.open, req.unique_open, req.click, req.unique_click], (err, res) ->
      cb err, res.newid

  get_message_stat = (req, cb) ->
    sql = 'select * from message_stat where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_message_stat = (req, cb) ->
    sql = 'update message_stat set message_id = $1, sent = $2, delivered = $3, opt_out = $4, open = $5, unique_open = $6, click = $7, unique_click = $8 where id = $15'
    db.query sql, [req.message_id, req.sent, req.delivered, req.opt_out, req.open, req.unique_open, req.click, req.unique_click], (err, res) ->
      cb err, 'success'

  del_message_stat = (req, cb) ->
    sql = 'delete from message_stat where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # opt_out backend functions:

  add_opt_out = (req, cb) ->
    sql = 'insert into opt_out (nemail) values ($1)'
    db.query sql, [req.nemail], (err, res) ->
      cb err, res.newid

  get_opt_out = (req, cb) ->
    sql = 'select * from opt_out where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_opt_out = (req, cb) ->
    sql = 'update opt_out set nemail = $1 where id = $15'
    db.query sql, [req.nemail], (err, res) ->
      cb err, 'success'

  del_opt_out = (req, cb) ->
    sql = 'delete from opt_out where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # page backend functions:

  add_page = (req, cb) ->
    sql = 'insert into page (client_id, name, layout_id, type) values ($1, $2, $3, $4)'
    db.query sql, [req.client_id, req.name, req.layout_id, req.type], (err, res) ->
      cb err, res.newid

  get_page = (req, cb) ->
    sql = 'select * from page where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_page = (req, cb) ->
    sql = 'update page set client_id = $1, name = $2, layout_id = $3, type = $4 where id = $15'
    db.query sql, [req.client_id, req.name, req.layout_id, req.type], (err, res) ->
      cb err, 'success'

  del_page = (req, cb) ->
    sql = 'delete from page where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # page_variables backend functions:

  add_page_variables = (req, cb) ->
    sql = 'insert into page_variables (page_id, name, value) values ($1, $2, $3)'
    db.query sql, [req.page_id, req.name, req.value], (err, res) ->
      cb err, res.newid

  get_page_variables = (req, cb) ->
    sql = 'select * from page_variables where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_page_variables = (req, cb) ->
    sql = 'update page_variables set page_id = $1, name = $2, value = $3 where id = $15'
    db.query sql, [req.page_id, req.name, req.value], (err, res) ->
      cb err, 'success'

  del_page_variables = (req, cb) ->
    sql = 'delete from page_variables where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # policy backend functions:

  add_policy = (req, cb) ->
    sql = 'insert into policy (name, type, text) values ($1, $2, $3)'
    db.query sql, [req.name, req.type, req.text], (err, res) ->
      cb err, res.newid

  get_policy = (req, cb) ->
    sql = 'select * from policy where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_policy = (req, cb) ->
    sql = 'update policy set name = $1, type = $2, text = $3 where id = $15'
    db.query sql, [req.name, req.type, req.text], (err, res) ->
      cb err, 'success'

  del_policy = (req, cb) ->
    sql = 'delete from policy where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # product backend functions:

  add_product = (req, cb) ->
    sql = 'insert into product (name) values ($1)'
    db.query sql, [req.name], (err, res) ->
      cb err, res.newid

  get_product = (req, cb) ->
    sql = 'select * from product where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_product = (req, cb) ->
    sql = 'update product set name = $1 where id = $15'
    db.query sql, [req.name], (err, res) ->
      cb err, 'success'

  del_product = (req, cb) ->
    sql = 'delete from product where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # segment backend functions:

  add_segment = (req, cb) ->
    sql = 'insert into segment (status_id, name) values ($1, $2)'
    db.query sql, [req.status_id, req.name], (err, res) ->
      cb err, res.newid

  get_segment = (req, cb) ->
    sql = 'select * from segment where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_segment = (req, cb) ->
    sql = 'update segment set status_id = $1, name = $2 where id = $15'
    db.query sql, [req.status_id, req.name], (err, res) ->
      cb err, 'success'

  del_segment = (req, cb) ->
    sql = 'delete from segment where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # segment_lead_source backend functions:

  add_segment_lead_source = (req, cb) ->
    sql = 'insert into segment_lead_source (segment_id, product_id) values ($1, $2)'
    db.query sql, [req.segment_id, req.product_id], (err, res) ->
      cb err, res.newid

  get_segment_lead_source = (req, cb) ->
    sql = 'select * from segment_lead_source where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_segment_lead_source = (req, cb) ->
    sql = 'update segment_lead_source set segment_id = $1, product_id = $2 where id = $15'
    db.query sql, [req.segment_id, req.product_id], (err, res) ->
      cb err, 'success'

  del_segment_lead_source = (req, cb) ->
    sql = 'delete from segment_lead_source where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # segment_product backend functions:

  add_segment_product = (req, cb) ->
    sql = 'insert into segment_product (segment_id, product_id) values ($1, $2)'
    db.query sql, [req.segment_id, req.product_id], (err, res) ->
      cb err, res.newid

  get_segment_product = (req, cb) ->
    sql = 'select * from segment_product where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_segment_product = (req, cb) ->
    sql = 'update segment_product set segment_id = $1, product_id = $2 where id = $15'
    db.query sql, [req.segment_id, req.product_id], (err, res) ->
      cb err, 'success'

  del_segment_product = (req, cb) ->
    sql = 'delete from segment_product where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # sender backend functions:

  add_sender = (req, cb) ->
    sql = 'insert into sender (signature, active, client_id, email, first_name, last_name, group_id, default, phone_main, phone_cell, phone_fax) values ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)'
    db.query sql, [req.signature, req.active, req.client_id, req.email, req.first_name, req.last_name, req.group_id, req.default, req.phone_main, req.phone_cell, req.phone_fax], (err, res) ->
      cb err, res.newid

  get_sender = (req, cb) ->
    sql = 'select * from sender where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_sender = (req, cb) ->
    sql = 'update sender set signature = $1, active = $2, client_id = $3, email = $4, first_name = $5, last_name = $6, group_id = $7, default = $8, phone_main = $9, phone_cell = $10, phone_fax = $11 where id = $15'
    db.query sql, [req.signature, req.active, req.client_id, req.email, req.first_name, req.last_name, req.group_id, req.default, req.phone_main, req.phone_cell, req.phone_fax], (err, res) ->
      cb err, 'success'

  del_sender = (req, cb) ->
    sql = 'delete from sender where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # sender_alias backend functions:

  add_sender_alias = (req, cb) ->
    sql = 'insert into sender_alias (sender_id, name) values ($1, $2)'
    db.query sql, [req.sender_id, req.name], (err, res) ->
      cb err, res.newid

  get_sender_alias = (req, cb) ->
    sql = 'select * from sender_alias where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_sender_alias = (req, cb) ->
    sql = 'update sender_alias set sender_id = $1, name = $2 where id = $15'
    db.query sql, [req.sender_id, req.name], (err, res) ->
      cb err, 'success'

  del_sender_alias = (req, cb) ->
    sql = 'delete from sender_alias where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # sender_custom backend functions:

  add_sender_custom = (req, cb) ->
    sql = 'insert into sender_custom (sender_id, name, value) values ($1, $2, $3)'
    db.query sql, [req.sender_id, req.name, req.value], (err, res) ->
      cb err, res.newid

  get_sender_custom = (req, cb) ->
    sql = 'select * from sender_custom where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_sender_custom = (req, cb) ->
    sql = 'update sender_custom set sender_id = $1, name = $2, value = $3 where id = $15'
    db.query sql, [req.sender_id, req.name, req.value], (err, res) ->
      cb err, 'success'

  del_sender_custom = (req, cb) ->
    sql = 'delete from sender_custom where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # state backend functions:

  add_state = (req, cb) ->
    sql = 'insert into state (name, abbreviation) values ($1, $2)'
    db.query sql, [req.name, req.abbreviation], (err, res) ->
      cb err, res.newid

  get_state = (req, cb) ->
    sql = 'select * from state where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_state = (req, cb) ->
    sql = 'update state set name = $1, abbreviation = $2 where id = $15'
    db.query sql, [req.name, req.abbreviation], (err, res) ->
      cb err, 'success'

  del_state = (req, cb) ->
    sql = 'delete from state where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # status backend functions:

  add_status = (req, cb) ->
    sql = 'insert into status (client_id, name) values ($1, $2)'
    db.query sql, [req.client_id, req.name], (err, res) ->
      cb err, res.newid

  get_status = (req, cb) ->
    sql = 'select * from status where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_status = (req, cb) ->
    sql = 'update status set client_id = $1, name = $2 where id = $15'
    db.query sql, [req.client_id, req.name], (err, res) ->
      cb err, 'success'

  del_status = (req, cb) ->
    sql = 'delete from status where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # status_alias backend functions:

  add_status_alias = (req, cb) ->
    sql = 'insert into status_alias (status_id, name) values ($1, $2)'
    db.query sql, [req.status_id, req.name], (err, res) ->
      cb err, res.newid

  get_status_alias = (req, cb) ->
    sql = 'select * from status_alias where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_status_alias = (req, cb) ->
    sql = 'update status_alias set status_id = $1, name = $2 where id = $15'
    db.query sql, [req.status_id, req.name], (err, res) ->
      cb err, 'success'

  del_status_alias = (req, cb) ->
    sql = 'delete from status_alias where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # template backend functions:

  add_template = (req, cb) ->
    sql = 'insert into template (name, html, text, thumbnail) values ($1, $2, $3, $4)'
    db.query sql, [req.name, req.html, req.text, req.thumbnail], (err, res) ->
      cb err, res.newid

  get_template = (req, cb) ->
    sql = 'select * from template where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_template = (req, cb) ->
    sql = 'update template set name = $1, html = $2, text = $3, thumbnail = $4 where id = $15'
    db.query sql, [req.name, req.html, req.text, req.thumbnail], (err, res) ->
      cb err, 'success'

  del_template = (req, cb) ->
    sql = 'delete from template where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # template_tags backend functions:

  add_template_tags = (req, cb) ->
    sql = 'insert into template_tags (template_id, name) values ($1, $2)'
    db.query sql, [req.template_id, req.name], (err, res) ->
      cb err, res.newid

  get_template_tags = (req, cb) ->
    sql = 'select * from template_tags where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_template_tags = (req, cb) ->
    sql = 'update template_tags set template_id = $1, name = $2 where id = $15'
    db.query sql, [req.template_id, req.name], (err, res) ->
      cb err, 'success'

  del_template_tags = (req, cb) ->
    sql = 'delete from template_tags where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # timezone backend functions:

  add_timezone = (req, cb) ->
    sql = 'insert into timezone (name) values ($1)'
    db.query sql, [req.name], (err, res) ->
      cb err, res.newid

  get_timezone = (req, cb) ->
    sql = 'select * from timezone where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_timezone = (req, cb) ->
    sql = 'update timezone set name = $1 where id = $15'
    db.query sql, [req.name], (err, res) ->
      cb err, 'success'

  del_timezone = (req, cb) ->
    sql = 'delete from timezone where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'



  # upload_queue backend functions:

  add_upload_queue = (req, cb) ->
    sql = 'insert into upload_queue (file_id, status) values ($1, $2)'
    db.query sql, [req.file_id, req.status], (err, res) ->
      cb err, res.newid

  get_upload_queue = (req, cb) ->
    sql = 'select * from upload_queue where id = $1'
    db.query sql, [req.id], (err, res) ->
      cb err, JSON.stringify(res.rows)

  set_upload_queue = (req, cb) ->
    sql = 'update upload_queue set file_id = $1, status = $2 where id = $15'
    db.query sql, [req.file_id, req.status], (err, res) ->
      cb err, 'success'

  del_upload_queue = (req, cb) ->
    sql = 'delete from upload_queue where id = $1'
    db.query sql, (err, res) ->
      cb err, 'success'

