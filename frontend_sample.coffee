/*
  Global Variables. Declaring with 'var' is necessary 
  to prevent older versions of IE from ruining your day
*/

var client_id = 1;

// For storing HTML

var statuses_html = '';
var status_child_html = '';
var segment_child_html = '';
var drip_child_html = '';

// For storing JSON objects

var statuses_json = '';
var segments_json = '';
var drips_json = '';

$(document).ready(function() { 
  load_html(function() {
    statuses_page_load(); 
  });
});

function load_html(cb) {
  statuses_html = $.get('html/statuses.html');
  status_child_html = $.get('html/status_child.html');
  segment_child_html = $.get('html/segment_child.html');
  drip_child_html = $.get('html/drip_child.html');
  cb();
}

function statuses_page_load() {
  load_statuses(client_id, function() {
    write_dom_statuses();
  });
}

/* ################## */
/* Child JSON Loaders */
/* ################## */

function load_statuses(client_id, cb) {
  $.post('get_statuses', { client_id: client_id }, function(data) {
    statuses_json = data; // Store to this global variable
    cb();
  },'json');
}

function load_segments(id, cb) {
  $.post('get_segments', { id: id }, function(data) {
    segments_json = data; // Store to this global variable
    cb();
  },'json');
}

function load_drips(id, cb) {
  $.post('get_drips', { id: id }, function(data) {
    drips_json = data; // Store to this global variable
    cb();
  },'json');
}

/* ################## */
/* Child DOM Writers  */
/* ################## */

function write_dom_statuses() {
  for (var i = 0; i < statuses_json.length; i++) {
    $('#status_children_div').empty();
    $('#status_children_div').append(
      statuse_child_html.merge(
        statuses_json[i].id,
        statuses_json[i].name,
        statuses_json[i].alias_count,
        statuses_json[i].segment_count
      )
    );
  } /* next, attach event handler to all children */
  $('.status-children').click(function(e) { status_click(e); });
}

function write_dom_segments() {
  for (var i = 0; i < segments_json.length; i++) {
    $('#segment_children_div').empty();
    $('#segment_children_div').append(
      statuse_child_html.merge(
        statuses_json[i].id,
        statuses_json[i].name,
        statuses_json[i].drip_count
      )
    );
  } /* next, attach event handler to all children */
  $('.segment-children').click(function(e) { segment_click(e); });
}

function write_dom_drips() {
  for (var i = 0; i < drips_json.length; i++) {
    $('#drip_children_div').empty();
    $('#drip_children_div').append(
      statuse_child_html.merge(
        statuses_json[i].id,
        statuses_json[i].name,
        statuses_json[i].delay,
        (statuses_json[i].vunotify == 1) : 'vunotify' ? '',
        (statuses_json[i].draft == 1) : 'draft' ? ''
      ) /* adds the class 'vunotify' or 'draft' to html element */
    );
  } /* next, attach event handler to all children */
  $('.drip-children').click(function(e) { drip_click(e); });
}

/* ################## */
/* Child Click Funcs  */
/* ################## */

function status_click(e) {
  var id = e.currentTarget.id.split('-')[2];
  $('.status-children').removeClass('selected');
  $(e.currentTarget.id).addClass('selected');
  load_segments(id, function() {
    write_dom_segments();
  });
}

function segment_click(e) {
  var id = e.currentTarget.id.split('-')[2];
  $('.segment-children').removeClass('selected');
  $(e.currentTarget.id).addClass('selected');
  load_drips(id, function() {
    write_dom_drips();
  });
}

function drip_click(e) {
  /* does nothing */
}