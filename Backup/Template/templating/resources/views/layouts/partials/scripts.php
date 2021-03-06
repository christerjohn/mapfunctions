    <!-- jQuery 2.1.4 -->
    <script src="../../../../public/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../../../public/bootstrap/js/bootstrap.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- SlimScroll -->
    <script src="../../../../public/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../../../../public/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../../../public/dist/js/app.min.js"></script>
    <!-- DataTables -->
    <script src="../../../../public/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../../../../public/plugins/datatables/dataTables.bootstrap.min.js"></script>

    <script>
      $(function () {
        $('#household-list').DataTable({
          "paging": true,
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": true
        });
      });
    </script>
<!-- Other Scripts -->

      <!-- Morris.js charts -->
      <!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
          <script src="plugins/morris/morris.min.js"></script>
      -->
      <!-- Sparkline -->
      <!--    <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
      -->
      <!-- jvectormap -->
      <!--    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
      -->
      <!--    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
      -->
      <!-- jQuery Knob Chart -->
      <!--    <script src="plugins/knob/jquery.knob.js"></script>
      -->
      <!-- daterangepicker -->
      <!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
      -->
      <!--    <script src="plugins/daterangepicker/daterangepicker.js"></script>
      -->
      <!-- datepicker -->
      <!--    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
      -->
      <!-- Bootstrap WYSIHTML5 -->
      <!--    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
      -->

<!-- End Other Scripts -->