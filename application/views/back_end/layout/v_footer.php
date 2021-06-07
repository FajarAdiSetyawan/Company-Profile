<footer class="main-footer">
  <div class="footer-right text-dark">
    Copyright &copy;<strong><?= date('Y'); ?></strong>
  </div>
</footer>
</div>
</div>
<!-- General JS Scripts -->
<script src="<?= base_url(); ?>vendor/back-end/assets/js/jquery-3.3.1.min.js"></script>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="<?= base_url(); ?>vendor/back-end/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<?= base_url(); ?>vendor/back-end/assets/js/page/bootstrap-modal.js"></script>
<script src="<?= base_url(); ?>vendor/back-end/assets/js/jquery.nicescroll.min.js"></script>
<script src="<?= base_url(); ?>vendor/back-end/assets/js/moment.min.js"></script>
<script src="<?= base_url(); ?>vendor/back-end/assets/js/stisla.js"></script>

<!-- Page Specific JS File -->

<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/datatables.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/DataTables-1.10.24/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/DataTables-1.10.24/js/dataTables.bootstrap4.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/Responsive-2.2.7/js/dataTables.responsive.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/Buttons-1.7.0/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/Buttons-1.7.0/js/buttons.bootstrap4.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/Buttons-1.7.0/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/Buttons-1.7.0/js/buttons.print.min.js"></script>
<script type="text/javascript" src="<?= base_url() ?>vendor/back-end/assets/plugins/dataTables/Buttons-1.7.0/js/buttons.colVis.min.js"></script>
<!-- Template JS File -->
<script src="<?= base_url(); ?>vendor/back-end/assets/js/custom.js"></script>
<script src="<?= base_url(); ?>vendor/back-end/assets/js/scripts.js"></script>

<script src="<?= base_url() ?>vendor/back-end/assets/plugins/dayjs/dayjs.min.js"></script>
<script src="<?= base_url() ?>vendor/back-end/assets/plugins/apexcharts/apexcharts.js"></script>
<script src="<?= base_url() ?>vendor/back-end/assets/js/page/ui-apexchart.js"></script>
<!-- Page Specific JS File -->
<script src="<?= base_url(); ?>vendor/back-end/assets/js/page/index-0.js"></script>
<script>
  $('.custom-file-input').on('change', function() {
    let fileName = $(this).val().split('\\').pop();
    $(this).next('.custom-file-label').addClass("selected").html(fileName)
  });
</script>

<script type="text/javascript" src="<?= base_url(); ?>vendor/back-end/assets/plugins/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
  tinymce.init({
    selector: '#berita, #misi, #sejarah, #profile, #portfolio',
    theme: "modern",
    plugins: [
      "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
      "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
      "save table contextmenu directionality emoticons template paste textcolor"
    ],
    content_css: "css/content.css",
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons",
    style_formats: [{
        title: 'Bold text',
        inline: 'b'
      },
      {
        title: 'Red text',
        inline: 'span',
        styles: {
          color: '#ff0000'
        }
      },
      {
        title: 'Red header',
        block: 'h1',
        styles: {
          color: '#ff0000'
        }
      },
      {
        title: 'Example 1',
        inline: 'span',
        classes: 'example1'
      },
      {
        title: 'Example 2',
        inline: 'span',
        classes: 'example2'
      },
      {
        title: 'Table styles'
      },
      {
        title: 'Table row 1',
        selector: 'tr',
        classes: 'tablerow1'
      }
    ]
  });
</script>

<script>
  function validate(evt) {
    var theEvent = evt || window.event;

    // Handle paste
    if (theEvent.type === 'paste') {
      key = event.clipboardData.getData('text/plain');
    } else {
      // Handle key press
      var key = theEvent.keyCode || theEvent.which;
      key = String.fromCharCode(key);
    }
    var regex = /[0-9]|\./;
    if (!regex.test(key)) {
      theEvent.returnValue = false;
      if (theEvent.preventDefault) theEvent.preventDefault();
    }
  }
</script>

<!-- DATA TABLE -->
<script>
  $(function() {
    $('#example1').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      dom: 'Bfrtip',
      buttons: [
        'copy', 'csv', 'excel', 'pdf', 'print'
      ]
    });
  });
</script>
<!-- toast flashdata -->
<script src="<?= base_url(); ?>vendor/back-end/assets/plugins/toastr/toastr.min.js" type="text/javascript"></script>
<script>
  toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": true,
    "progressBar": false,
    "positionClass": "toast-top-center",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "600",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }
</script>
<?php if ($this->session->flashdata('success')) : ?>
  <div class="success-message"><?= $this->session->flashdata('success') ?></div>
  <script type="text/javascript">
    toastr.success($(".success-message"))
  </script>
<?php endif; ?>

<?php if ($this->session->flashdata('info')) : ?>
  <div class="info-message"><?= $this->session->flashdata('info') ?></div>
  <script type="text/javascript">
    toastr.info($(".info-message"))
  </script>
<?php endif; ?>

<?php if ($this->session->flashdata('warning')) : ?>
  <div class="warning-message"><?= $this->session->flashdata('warning') ?></div>
  <script type="text/javascript">
    toastr.warning($(".warning-message"))
  </script>
<?php endif; ?>

<?php if ($this->session->flashdata('error')) : ?>
  <div class="error-message"><?= $this->session->flashdata('error') ?></div>
  <script type="text/javascript">
    toastr.error($(".error-message"))
  </script>
<?php endif; ?>
<script>
  function previewFile(input) {
    var file = $("input[type=file]").get(0).files[0];

    if (file) {
      var reader = new FileReader();

      reader.onload = function() {
        $("#image-previews").attr("src", reader.result);
      }

      reader.readAsDataURL(file);
    }
  }
</script>
</body>

</html>