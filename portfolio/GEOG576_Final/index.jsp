<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Web Project</title>

  <!-- Custom styles -->
  <link rel="stylesheet" href="css/style.css">

  <!-- jQuery -->
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

  <!-- Bootstrap - year picker only example -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>


  <!--Google Map js libraries-->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBMQ2qke4SNr_CnORn7QkeUzCPFv11VIac&libraries=geometry,places"></script> 
</head>

<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <a class="navbar-brand">SAI Member Portal</a>
  </nav>
  
  <div class="container-fluid">
    <div class="row">
      <div class="sidebar col-xs-3">
       
        <!-- Tab Navis-->
        <ul class="nav nav-tabs">
          <li class="active"><a href="#create_report" data-toggle="tab">Create Report</a></li>
          <li><a href="#query_report" data-toggle="tab">Query</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content ">
          <!-- Create Report Tab Panel -->
          <div class="tab-pane active" id="create_report">
            <form id = "create_report_form">
              <div><label>First Name:&nbsp</label><input placeholder="First name" name="fN"></div>
              <div><label>Last Name:&nbsp</label><input placeholder="Last name" name="lN"></div>
              <div><label>Telephone:&nbsp</label><input placeholder="Telephone number" name="tel"></div>
              <div><label>Email:&nbsp</label><input placeholder="Email address" name="email"></div>
              <div><label>Address:</label>
                <input id="autocomplete" placeholder="Address" >
              </div>
              <div><label>Birthdate:&nbsp</label>
                <input class="date-own form-control" style="width: 200px;" type="text">
                  <script type="text/javascript">
                    $('.date-own').datepicker({
                      minViewMode: 0,
                      format: 'MM dd, yyyy'
                     });
                  </script>
                  </script></div>

              <div><label>Initation Year:&nbsp</label>
                <input class="date-own form-control" style="width: 200px;" type="text">
                  <script type="text/javascript">
                    $('.date-own').datepicker({
                      minViewMode: 2,
                      format: 'yyyy'
                     });
                  </script>
                  </script></div>
              <div><label>Initation Chapter:&nbsp</label><input placeholder="Initation Chapter" name="int_chap"></div>
              <div><label>Spouse's Name:&nbsp</label><input placeholder="Member's spouse" name="spouse_N"></div>


              <div><label>Position:</label>
                <select onchange="onSelectReportType(this)" name="report_type">
                  <option value="">Choose a position if applicable</option>
                  <option value="president">Donation</option>
                  <option value="request">Request</option>
                  <option value="damage">Damage Report</option>
                </select>
              </div>
              <div class="additional_msg_div" style="visibility: hidden"><label class="additional_msg"></label>
                <select class="additional_msg_select" name="additional_message"></select>
              </div>
              <div><label>Disaster Type:</label>
                <select name="disaster_type">
                  <option value="">Choose the disaster type</option>
                  <option value="flood">flood</option>
                  <option value="wildfire">wildfire</option>
                  <option value="earthquake">earthquake</option>
                  <option value="tornado">tornado</option>
                  <option value="hurricane">hurricane</option>
                  <option value="other">other</option>
                </select>
              </div>

              <div><label>Comment:&nbsp</label><input placeholder="Additional message" name="message"></div>
              <button type="submit" class="btn btn-default" id="report_submit_btn">
                <span class="glyphicon glyphicon-star"></span> Submit
              </button>
            </form>
          </div>

          <!-- Query Report Tab Panel -->
          <div class="tab-pane" id="query_report">
            <form id = "query_report_form">
              <div><label>Report Type:</label>
                <select onchange="onSelectReportType(this)" name="report_type">
                  <option value="">Choose the report type</option>
                  <option value="donation">Donation</option>
                  <option value="request">Request</option>
                  <option value="damage">Damage Report</option>
                </select>
              </div>
              <div class="additional_msg_div" style="visibility: hidden"><label class="additional_msg"></label>
                <select class="additional_msg_select" name="resource_or_damage"></select>
              </div>
              <div><label>Disaster Type:</label>
                <select name="disaster_type">
                  <option value="">Choose the disaster type</option>
                  <option value="flood">flood</option>
                  <option value="wildfire">wildfire</option>
                  <option value="earthquake">earthquake</option>
                  <option value="tornado">tornado</option>
                  <option value="hurricane">hurricane</option>
                  <option value="other">other</option>
                </select>
              </div>              
              <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-star"></span> Submit the query
              </button>
            </form>
          </div>          
        </div>
      </div>

      <div id="map-canvas" class="col-xs-9"></div>

    </div>
  </div>

  <script src="js/loadform.js"></script>
  <script src="js/loadmap.js"></script>

</body>
</html>