var table;
var save_method;
var url;

$(document).ready(function () {
  $("#keterangan").hide();

  table = $("#mytable").DataTable({
    pageLength: 10,
    autoWidth: true,
    lengthChange: false,
    ordering: false,
    processing: true,
    searching: true,
    serverSide: true,
    deferRender: true,
    ajax: {
      url: urlList,
      type: "GET",
    },
  });

  $("#status").on("change", function () {
    const stt = $(this).val();

    if (stt == 0) {
      $("#keterangan").show();
    } else {
      $("#keterangan").hide();
    }
  });
});

function reload_table() {
  table.ajax.reload(null, false);
}

function ajaxSave() {
  $("#btn-save").text("proses...");
  $("#btn-save").attr("disabled", true);

  $.ajax({
    url: urlSave,
    type: "POST",
    data: new FormData($("#form")[0]),
    contentType: false,
    processData: false,
    dataType: "JSON",
    success: function (data) {
      if (data.status) {
        $("#modal-form").modal("hide");
        success("Data berhasil disimpan.");
        reload_table();
      }

      $("#btn-save").text("Simpan");
      $("#btn-save").attr("disabled", false);
    },
    error: function (jqXHR, textStatus, errorThrown) {
      error(errorThrown);

      $("#btn-save").text("Simpan");
      $("#btn-save").attr("disabled", false);
    },
  });
}

function ajaxEdit(id) {
  save_method = "edit";

  $("#modal-form form")[0].reset();
  $(".form-group").removeClass("has-error");
  $(".help-block").empty();
  
  $.ajax({
    url: urlEdit + id,
    type: "GET",
    dataType: "JSON",
    success: function (data) {
      $('[name="id"]').val(data.id);
      $('[name="status"]').val(data.status);

      $("#modal-form").modal("show");
      $(".modal-title").text("Edit Status Pesanan");
    },
    error: function (jqXHR, textStatus, errorThrown) {
      error(errorThrown);
    },
  });
}
