async = require 'async'
S = require 'string'
nodemailer = require 'nodemailer'

app = ''
backend = ''
frontend = ''

crud = JSON.parse '{
  "cruds": {
    "a": {
      "crud": "add"
    },
    "b": {
      "crud": "get"
    },
    "c": {
      "crud": "set"
    },
    "d": {
      "crud": "del"
    }
  }
}'

app_data = JSON.parse '{
  "app": {
    "AA": {
      "table": "admin_user",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "username"
        },
        "03": {
          "col" : "first_name"
        },
        "04": {
          "col" : "last_name"
        },
        "05": {
          "col" : "password"
        },
        "06": {
          "col" : "salt"
        },
        "07": {
          "col" : "admin"
        },
        "08": {
          "col" : "disabled"
        }
      }
    },
    "AB": {
      "table": "api_key",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "key"
        }
      }
    },
    "AC": {
      "table": "asset",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "size"
        }
      }
    },
    "AD": {
      "table": "attribute",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "AE": {
      "table": "attribute_value",
      "cols": {
        "01": {
          "col" : "attribute_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "AF": {
      "table": "attribute_value_alias",
      "cols": {
        "01": {
          "col" : "attribute_value_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "AG": {
      "table": "batch_send",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "when"
        },
        "04": {
          "col" : "scheduled"
        },
        "05": {
          "col" : "message_id"
        },
        "06": {
          "col" : "subject"
        },
        "07": {
          "col" : "template_id"
        },
        "08": {
          "col" : "html_preheader"
        },
        "09": {
          "col" : "html_body"
        },
        "10": {
          "col" : "text_preheader"
        },
        "11": {
          "col" : "text_body"
        },
        "12": {
          "col" : "batch_csv"
        }
      }
    },
    "AH": {
      "table": "batch_send_link",
      "cols": {
        "01": {
          "col" : "batch_send_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "type"
        },
        "04": {
          "col" : "page_id"
        },
        "05": {
          "col" : "url"
        },
        "06": {
          "col" : "text"
        }
      }
    },
    "AI": {
      "table": "batch_send_policy",
      "cols": {
        "01": {
          "col" : "batch_send_id"
        },
        "02": {
          "col" : "policy_id"
        }
      }
    },
    "AJ": {
      "table": "batch_send_stat",
      "cols": {
        "01": {
          "col" : "batch_send_id"
        },
        "02": {
          "col" : "sent"
        },
        "03": {
          "col" : "delivered"
        },
        "04": {
          "col" : "opt_out"
        },
        "05": {
          "col" : "open"
        },
        "06": {
          "col" : "unique_open"
        },
        "07": {
          "col" : "click"
        },
        "08": {
          "col" : "unique_click"
        }
      }
    },
    "AK": {
      "table": "client",
      "cols": {
        "01": {
          "col" : "name"
        },
        "02": {
          "col" : "short_name"
        },
        "03": {
          "col" : "timezone_id"
        },
        "04": {
          "col" : "dont_send"
        },
        "05": {
          "col" : "archive"
        },
        "06": {
          "col" : "privacy_url"
        },
        "07": {
          "col" : "manager_email"
        },
        "08": {
          "col" : "s3_name"
        },
        "09": {
          "col" : "s3_key"
        },
        "10": {
          "col" : "s3_secret"
        },
        "11": {
          "col" : "integration_partner_id"
        },
        "12": {
          "col" : "integration_username"
        },
        "13": {
          "col" : "integration_password"
        },
        "14": {
          "col" : "integration_client_id"
        },
        "15": {
          "col" : "webhook_url"
        },
        "16": {
          "col" : "dkim"
        }
      }
    },
    "AL": {
      "table": "client_cname",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "domain"
        },
        "03": {
          "col" : "value"
        }
      }
    },
    "AM": {
      "table": "client_dkim",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "domain"
        },
        "03": {
          "col" : "selector"
        },
        "04": {
          "col" : "private_key"
        },
        "05": {
          "col" : "public_key"
        }
      }
    },
    "AN": {
      "table": "client_settings",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "timezone_id"
        },
        "03": {
          "col" : "privacy_url"
        },
        "04": {
          "col" : "dailyvu"
        },
        "05": {
          "col" : "supression_time"
        }
      }
    },
    "AO": {
      "table": "file",
      "cols": {
        "01": {
          "col" : "asset_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "blob"
        }
      }
    },
    "AP": {
      "table": "group",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "email"
        },
        "04": {
          "col" : "address1"
        },
        "05": {
          "col" : "address2"
        },
        "06": {
          "col" : "city"
        },
        "07": {
          "col" : "state_id"
        },
        "08": {
          "col" : "zip"
        }
      }
    },
    "AQ": {
      "table": "group_phone",
      "cols": {
        "01": {
          "col" : "group_id"
        },
        "02": {
          "col" : "type"
        },
        "03": {
          "col" : "number"
        }
      }
    },
    "AR": {
      "table": "integration_partner",
      "cols": {
        "01": {
          "col" : "name"
        },
        "02": {
          "col" : "type"
        }
      }
    },
    "AS": {
      "table": "layout",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "AT": {
      "table": "layout_tags",
      "cols": {
        "01": {
          "col" : "layout_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "AU": {
      "table": "lead_source",
      "cols": {
        "01": {
          "col" : "name"
        }
      }
    },
    "AV": {
      "table": "message",
      "cols": {
        "01": {
          "col" : "template_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "slug"
        },
        "04": {
          "col" : "subject"
        },
        "05": {
          "col" : "html_preheader"
        },
        "06": {
          "col" : "html_body"
        },
        "07": {
          "col" : "text_preheader"
        },
        "08": {
          "col" : "text_body"
        },
        "09": {
          "col" : "html_policy_id"
        },
        "10": {
          "col" : "text_policy_id"
        }
      }
    },
    "AW": {
      "table": "message_link",
      "cols": {
        "01": {
          "col" : "message_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "text"
        },
        "04": {
          "col" : "url"
        },
        "05": {
          "col" : "type"
        }
      }
    },
    "AX": {
      "table": "message_stat",
      "cols": {
        "01": {
          "col" : "message_id"
        },
        "02": {
          "col" : "sent"
        },
        "03": {
          "col" : "delivered"
        },
        "04": {
          "col" : "opt_out"
        },
        "05": {
          "col" : "open"
        },
        "06": {
          "col" : "unique_open"
        },
        "07": {
          "col" : "click"
        },
        "08": {
          "col" : "unique_click"
        }
      }
    },
    "AY": {
      "table": "opt_out",
      "cols": {
        "01": {
          "col" : "nemail"
        }
      }
    },
    "AZ": {
      "table": "page",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "layout_id"
        },
        "04": {
          "col" : "type"
        }
      }
    },
    "BA": {
      "table": "page_variables",
      "cols": {
        "01": {
          "col" : "page_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "value"
        }
      }
    },
    "BB": {
      "table": "policy",
      "cols": {
        "01": {
          "col" : "name"
        },
        "02": {
          "col" : "type"
        },
        "03": {
          "col" : "text"
        }
      }
    },
    "BC": {
      "table": "product",
      "cols": {
        "01": {
          "col" : "name"
        }
      }
    },
    "BD": {
      "table": "segment",
      "cols": {
        "01": {
          "col" : "status_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "BE": {
      "table": "segment_lead_source",
      "cols": {
        "01": {
          "col" : "segment_id"
        },
        "02": {
          "col" : "product_id"
        }
      }
    },
    "BF": {
      "table": "segment_product",
      "cols": {
        "01": {
          "col" : "segment_id"
        },
        "02": {
          "col" : "product_id"
        }
      }
    },
    "BG": {
      "table": "sender",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "email"
        },
        "03": {
          "col" : "first_name"
        },
        "04": {
          "col" : "last_name"
        },
        "05": {
          "col" : "group_id"
        },
        "06": {
          "col" : "default"
        },
        "07": {
          "col" : "phone_main"
        },
        "08": {
          "col" : "phone_cell"
        },
        "09": {
          "col" : "phone_fax"
        },
        "10": {
          "col" : "signature"
        },
        "11": {
          "col" : "active"
        }
      }
    },
    "BH": {
      "table": "sender_alias",
      "cols": {
        "01": {
          "col" : "sender_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "BI": {
      "table": "sender_custom",
      "cols": {
        "01": {
          "col" : "sender_id"
        },
        "02": {
          "col" : "name"
        },
        "03": {
          "col" : "value"
        }
      }
    },
    "BJ": {
      "table": "state",
      "cols": {
        "01": {
          "col" : "name"
        },
        "02": {
          "col" : "abbreviation"
        }
      }
    },
    "BK": {
      "table": "status",
      "cols": {
        "01": {
          "col" : "client_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "BL": {
      "table": "status_alias",
      "cols": {
        "01": {
          "col" : "status_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "BM": {
      "table": "template",
      "cols": {
        "01": {
          "col" : "name"
        },
        "02": {
          "col" : "html"
        },
        "03": {
          "col" : "text"
        },
        "04": {
          "col" : "thumbnail"
        }
      }
    },
    "BN": {
      "table": "template_tags",
      "cols": {
        "01": {
          "col" : "template_id"
        },
        "02": {
          "col" : "name"
        }
      }
    },
    "BO": {
      "table": "timezone",
      "cols": {
        "01": {
          "col" : "name"
        }
      }
    },
    "BP": {
      "table": "upload_queue",
      "cols": {
        "01": {
          "col" : "file_id"
        },
        "02": {
          "col" : "status"
        }
      }
    }
  }
}'

build_add = (cols, cb) ->
  temp = ''
  async.forEachSeries cols, (c, cb) ->
    temp += c.col + ', '
    cb()
  , (err) ->
    temp = temp.substring(0, temp.length - 2)
    cb err, temp

build_res = (cols, cb) ->
  temp = ''
  async.forEachSeries cols, (c, cb) ->
    temp += 'req.' + c.col + ', '
    cb()
  , (err) ->
    temp = temp.substring 0, temp.length - 2
    cb err, temp

build_set = (cols, cb) ->
  temp = ''
  i = 0
  async.forEachSeries cols, (c, cb) ->
    i++
    temp += c.col + ' = $' + i + ', '
    cb()
  , (err) ->
    temp = temp.substring 0, temp.length - 2
    cb err, temp
    
build_val = (cols, cb) ->
  temp = ''
  i = 0
  async.forEachSeries cols, (c, cb) ->
    i++
    temp += c.col + ': val' + i + ', '
    cb()
  , (err) ->
    temp = temp.substring 0, temp.length - 2
    cb err, temp
    
build_num = (cols, cb) ->
  temp = ''
  i = 0
  async.forEachSeries cols, (c, cb) ->
    i++
    temp += '$' + i + ', '
    cb()
  , (err) ->
    temp = temp.substring 0, temp.length - 2
    cb err, temp
    
email = (opts, cb) ->
  transport = nodemailer.createTransport()
  transport.sendMail
    to: opts.to
    from: opts.from
    subject: opts.subject
    html: opts.body
  cb()

global_cols = ['create_by', 'update_by'] # id treated as implicit. created/updated cols handled automatically

app_fmt = "<br>
<br>
&nbsp;&nbsp;# {{table}} app functions:<br>
<br>
&nbsp;&nbsp;app.post '/add_{{table}}', (req, res) -><br>
&nbsp;&nbsp;be.add_{{table}} req, (err, ret) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;res.send ret<br>
<br>
&nbsp;&nbsp;app.post '/get_{{table}}', (req, res) -><br>
&nbsp;&nbsp;be.get_{{table}} req, (err, ret) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;res.send ret<br>
<br>
&nbsp;&nbsp;app.post '/set_{{table}}', (req, res) -><br>
&nbsp;&nbsp;be.set_{{table}} req, (err, ret) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;res.send ret<br>
<br>
&nbsp;&nbsp;app.post '/del_{{table}}', (req, res) -><br>
&nbsp;&nbsp;be.del_{{table}} req, (err, ret) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;res.send ret<br>
<br>
"
backend_fmt = "<br>
<br>
&nbsp;&nbsp;# {{table}} backend functions:<br>
<br>
&nbsp;&nbsp;add_{{table}} = (req, cb) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;sql = 'insert into {{table}} ({{add_cols}}) values ({{num_cols}})'<br>
&nbsp;&nbsp;&nbsp;&nbsp;db.query sql, [{{res_cols}}], (err, res) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cb err, res.newid<br>
<br>  
&nbsp;&nbsp;get_{{table}} = (req, cb) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;sql = 'select * from {{table}} where id = $1'<br>
&nbsp;&nbsp;&nbsp;&nbsp;db.query sql, [req.id], (err, res) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cb err, JSON.stringify(res.rows)<br>
<br>
&nbsp;&nbsp;set_{{table}} = (req, cb) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;sql = 'update {{table}} set {{set_cols}} where id = ${{maxn}}'<br>
&nbsp;&nbsp;&nbsp;&nbsp;db.query sql, [{{res_cols}}], (err, res) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cb err, 'success'<br>
<br>
&nbsp;&nbsp;del_{{table}} = (req, cb) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;sql = 'delete from {{table}} where id = $1'<br>
&nbsp;&nbsp;&nbsp;&nbsp;db.query sql, (err, res) -><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cb err, 'success'<br>
<br>
"

frontend_fmt = "<br>
<br>
&nbsp;&nbsp;# {{table}} frontend functions:<br>
<br>
&nbsp;&nbsp;$('{{table}}_add_btn').click(function() { {{table}}_add(); });<br>
&nbsp;&nbsp;$('{{table}}_set_btn').click(function(e) { {{table}}_set(e); });<br>
&nbsp;&nbsp;$('{{table}}_del_btn').click(function(e) { {{table}}_del(e); });<br>
<br> 
&nbsp;&nbsp;function {{table}}_add() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;$.post('add_{{table}}', { {{val_cols}} }, function(data) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);<br>
&nbsp;&nbsp;&nbsp;&nbsp;})<br>
&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;function {{table}}_get(e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;id = e.currentTarget.id.split('-')[2];<br>
&nbsp;&nbsp;&nbsp;&nbsp;$.post('get_{{table}}', { id: id }, function(data) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);<br>
&nbsp;&nbsp;&nbsp;&nbsp;},'json')<br>
&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;function {{table}}_set(e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;id = e.currentTarget.id.split('-')[2];<br>
&nbsp;&nbsp;&nbsp;&nbsp;$.post('set_{{table}}', { id: id, {{val_cols}} }, function(data) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);<br>
&nbsp;&nbsp;&nbsp;&nbsp;})<br>
&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;function {{table}}_del(e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;id = e.currentTarget.id.split('-')[2];<br>
&nbsp;&nbsp;&nbsp;&nbsp;$.post('del_{{table}}', { id: id }, function(data) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(data);<br>
&nbsp;&nbsp;&nbsp;&nbsp;})<br>
&nbsp;&nbsp;}<br>
<br>
"

console.log 'starting...'

async.forEachSeries app_data.app, (ad, cb) ->
  build_add ad.cols, (err, res) ->
    add_cols = res
    build_res ad.cols, (err, res) ->
      res_cols = res
      build_set ad.cols, (err, res) ->
        set_cols = res
        build_val ad.cols, (err, res) ->
          val_cols = res
          build_num ad.cols, (err, res) ->
            num_cols = res
            maxn = if ad.cols.length is null then '14' else '15'
            tmp = {
              table: ad.table
              add_cols: add_cols
              res_cols: res_cols
              val_cols: val_cols
              num_cols: num_cols
              set_cols: set_cols
              maxn: maxn
            }
            app += S(app_fmt).template(tmp).s
            backend += S(backend_fmt).template(tmp).s
            frontend += S(frontend_fmt).template(tmp).s
            cb()
            
, (err) ->
  args = {
    to: 'nathan.weisser@softvu.com'
    from: 'generate@softvu.com'
    subject: 'keystone_lite code'
    body: '||APP||: ' + app + ' ||BACKEND||: ' + backend + ' ||FRONTEND||: ' + frontend
  }
  email args, (err, res) ->
    console.log 'email sent'

app_dataz = [
  { tbl: 'admin_user', cols: 'client_id, username, first_name, last_name, password, salt, admin, disabled' }
  { tbl: 'api_key', cols: 'client_id, key' }
  { tbl: 'asset', cols: 'client_id, name, size' }
  { tbl: 'attribute', cols: 'client_id, name' }
  { tbl: 'attribute_value', cols: 'attribute_id, name' }
  { tbl: 'attribute_value_alias', cols: 'attribuite_value_id, name' }
  { tbl: 'batch_send', cols: 'client_id, name, when, scheduled, message_id, subject, template_id, html_preheader, html_body, text_preheader, text_body, batch_csv' }
  { tbl: 'batch_send_link', cols: 'batch_send_id, name, type, page_id, url, text' }
  { tbl: 'batch_send_policy', cols: 'batch_send_id, policy_id' }
  { tbl: 'batch_send_stat', cols: 'batch_send_id, sent, delivered, opt_out, open, unique_open, click, unique_click' }
  { tbl: 'client', cols: 'name, short_name, timezone_id, dont_send, archive, privacy_url, manager_email, s3_name, s3_key, s3_secret, integration_partner_id, integration_username, integration_password, integration_client_id, webhook_url, dkim' }
  { tbl: 'client_cname', cols: 'client_id, domain, value' }
  { tbl: 'client_dkim', cols: 'clinet_id, domain, selector, private_key, public_key' }
  { tbl: 'client_settings', cols: 'client_id, timezone_id, privacy_url, dailyvu, suppression_time' }
  { tbl: 'file', cols: 'asset_id, name, blob' }
  { tbl: 'group', cols: 'client_id, name, email, address1, address2, city, state_id, zip' }
  { tbl: 'group_phone', cols: 'group_id, type, number' }
  { tbl: 'integration_partner', cols: 'name, type' }
  { tbl: 'layout', cols: 'client_id, name' }
  { tbl: 'layout_tags', cols: 'layout_id, name' }
  { tbl: 'lead_source', cols: 'name' }
  { tbl: 'message', cols: 'template_id, name, slug, subject, html_preheader, html_body, text_preheader, text_body, html_policy_id, text_policy_id' }
  { tbl: 'message_link', cols: 'message_id, name, text, url, type' }
  { tbl: 'message_stat', cols: 'message_id, sent, delivered, opt_out, open, unique_open, click, unique_click' }
  { tbl: 'opt_out', cols: 'email' }
  { tbl: 'page', cols: 'client_id, name, layout_id, type' }
  { tbl: 'page_variables', cols: 'page_id, name, value' }
  { tbl: 'policy', cols: 'name, type, text' }
  { tbl: 'product', cols: 'name' }
  { tbl: 'segment', cols: 'status_id, name' }
  { tbl: 'segment_lead_source', cols: 'segment_id, lead_source_id' }
  { tbl: 'segment_product', cols: 'segment_id, product_id' }
  { tbl: 'sender', cols: 'client_id, email, first_name, last_name, group_id, default, phone_main, phone_cell, phone_fax, signature, active' }
  { tbl: 'sender_alias', cols: 'sender_id, name' }
  { tbl: 'sender_custom', cols: 'sender_id, name, value' }
  { tbl: 'state', cols: 'name, abbreviation' }
  { tbl: 'status', cols: 'client_id, name' }
  { tbl: 'status_alias', cols: 'status_id, name' }
  { tbl: 'template', cols: 'name, html, text, thumbnail' }
  { tbl: 'template_tags', cols: 'template_id, name' }
  { tbl: 'timezone', cols: 'name' }
  { tbl: 'upload_queue', cols: 'file_id, status' }
]
































































































