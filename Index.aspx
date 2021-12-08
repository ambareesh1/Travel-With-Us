<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Index.aspx.cs" Inherits="AirBus.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Travel With Us</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    
    <style>
        .header
        {
            height:auto;
            width:100%;
        }

        #idFlight:hover
        {
            border-bottom: 3px solid #00BCD4;
            color:#BDBDBD;
            cursor:pointer;
        }
       
        .FlightClass{
            border-bottom: 3px solid #00BCD4;
            color:#BDBDBD;
            cursor:pointer;
        }

         #idHotel:hover
        {
            border-bottom: 3px solid #8BC34A;
            color:#BDBDBD;
            cursor:pointer;
        }

         .HotelClass
         {
             border-bottom: 3px solid #8BC34A;
            color:#BDBDBD;
            cursor:pointer;
         }

         .form-control-static {
    min-height: 34px;
    padding-top: 7px;
    padding-bottom: 7px;
    margin-bottom: 0;
    borDER-RADIUS: 5PX;
}
         
         .list-group
         {
             width:100%;
         }

         .iconclass{
             padding-right:5px;
         }
         
        .circle1 {
            width: 9px;
            height: 9px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            border-radius: 20px;
            background-color: #AED581;
            display: inline-block;
            margin-right: 10px;
        }

        .circle2 {
            width: 9px;
            height: 9px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            border-radius: 20px;
            background-color: #FFF176;
            display: inline-block;
            margin-right: 10px;
        }
        .circle3 {
            width: 9px;
            height: 9px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            border-radius: 20px;
            background-color: #f3b49f;
            display: inline-block;
            margin-right: 10px;
        }
        .circle4 {
            width: 9px;
            height: 9px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            border-radius: 20px;
            background-color: #80DEEA;
            display: inline-block;
            margin-right: 10px;
        }
        .circle5 {
            width: 9px;
            height: 9px;
            -webkit-border-radius: 25px;
            -moz-border-radius: 25px;
            border-radius: 20px;
            background-color: #8BC34A;
            display: inline-block;
            margin-right: 10px;
        }

        .mini-timeline:before {
            content: '';
            position: absolute;
            top: 8px;
            bottom: 0;
            width: 2px;
            background: #eeeeee;
            left: 8px;
        }

        .mini-timeline {
            padding-left: 0;
            list-style: none;
            position: relative;
            margin-left: 7%;
        }
        .mini-timeline > li {
    position: relative;
}
        li {
    display: list-item;
    text-align: -webkit-match-parent;
}
        .mini-timeline-lime .timeline-icon {
    border: 2px solid #cddc39 !important;
}

        .mini-timeline > li .timeline-body {
    margin: 0 0px 20px 32px;
    padding: 0;
    position: relative;
    background-color: #fff;
}


        .mini-timeline > li .timeline-icon {
    position: absolute;
    border-radius: 50%;
    left: 3px;
    top: 3px;
    margin: 0;
    padding: 0;
    width: 12px;
    height: 12px;
    background: #fff;
}

        .mini-timeline-deeporange .timeline-icon {
    border: 2px solid #ff5722 !important;
}

        .mini-timeline-info .timeline-icon {
    border: 2px solid #00bcd4 !important;
}

        .mini-timeline-indigo .timeline-icon {
    border: 2px solid #3f51b5 !important;
}

        li{
            list-style: none;
        }

        .details{

            margin-top:2%;
        }

        .iconsize{
            font-size:12px;
        }

        .list-inline>li {
    display: inline-block;
    padding-right: 5px;
    padding-left: 10px;
    padding-bottom: 7px;
}

        li.active {
    border-bottom: solid 3px #8BC34A;
}
        a {
    color: #777;
    text-decoration: none;
}

    a:hover{
        text-decoration: none;
    }
    a:active{
         text-decoration: none;
         text-decoration: none;
    }
    a:link{
        text-decoration:none;
        text-decoration: none;
    }
    .details
    {
         cursor:pointer;
    }

   div[class*="details"]:hover {
    background: #F5F5F5;
}

.spinner {
  width: 40px;
  height: 40px;

  position: relative;
  margin: 100px auto;
}

.double-bounce1, .double-bounce2 {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  background-color: #333;
  opacity: 0.6;
  position: absolute;
  top: 0;
  left: 0;
  
  -webkit-animation: sk-bounce 2.0s infinite ease-in-out;
  animation: sk-bounce 2.0s infinite ease-in-out;
}

.double-bounce2 {
  -webkit-animation-delay: -1.0s;
  animation-delay: -1.0s;
}

@-webkit-keyframes sk-bounce {
  0%, 100% { -webkit-transform: scale(0.0) }
  50% { -webkit-transform: scale(1.0) }
}

@keyframes sk-bounce {
  0%, 100% { 
    transform: scale(0.0);
    -webkit-transform: scale(0.0);
  } 50% { 
    transform: scale(1.0);
    -webkit-transform: scale(1.0);
  }
}

.inputFont
{
    font-weight:bold;color:#9E9E9E
}

.number
{
    text-align:center;
}


.icon_color{
        color: rgba(0,0,0,.5);
}

#BindHotelData  tr:hover{
    cursor:pointer;
    background-color:antiquewhite;
}

.return
{
    display:none;
}

    </style>
    
</head>
  
<body>

  

    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True">
        </asp:ScriptManager>

    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
               <a href="#top" onclick=$("#menu-close").click();> <i class="fa fa-user fa-1x" style="color:tomato" aria-hidden="true"></i>   Ambareesh </a>
            </li>
            <li>
                <a href="#top" onclick=$("#menu-close").click();>Home</a>
            </li>
            <li>
                <a href="#about" onclick=$("#menu-close").click();>About</a>
            </li>
            <li>
                <a href="#services" onclick=$("#menu-close").click();>Services</a>
            </li>
            <li>
                <a href="#portfolio" onclick=$("#menu-close").click();>Best Offers</a>
            </li>
            <li>
                <a href="#contact" onclick=$("#menu-close").click();>Contact</a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>Travel With Us</h1>
            <h3>Make Your Trip Happy &amp; Fun</h3>
            <br/>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>

             
        </div>
    </header>
  
      <div style="width:70%;height:350px;margin:0 auto;margin-bottom:2%;background-color:#fff;position: relative;margin-top: -50px;box-shadow:2px 2px 2px 2px #888888">
        
          <div style="background-color:steelblue;margin-bottom:1%" class="col-lg-12" >
             <div id="idFlight" class="col-lg-6" style="padding:10px;padding-left:0px;text-align:center;border-right:1px solid #fff">
                <i class="fa fa-plane fa-2x " aria-hidden="true"></i> 
                  <a style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:16px;font-weight:600;text-decoration: none;color:#F0F0F0;padding-left:10px;">
                      Flight </a> 

             </div> 
             
              <div id="idHotel" class="col-lg-6" style="padding:10px;text-align:center"> 
              <i class="fa fa-bed fa-2x" aria-hidden="true"></i> 
                       <a style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:16px;font-weight:600;text-decoration: none;color:#fff;padding-left:10px;">
                       Hotel </a> 
                  </div>
                
          </div>

          <!---Flight Booking -->
          <div id="idFlightBooking">
           <form>
               <div class="col-lg-12">
               <label class="radio-inline" >
                   <input type="radio"  name="optradio" id="RoundTrip">Round Trip
               </label>
               <label class="radio-inline">
                   <input type="radio" checked="checked" name="optradio" id="OneWayTrip">One Way
               </label>
               </div>

                      <div class="form-group col-lg-5">
                          <label for="txtFrom">From</label>
                          <input type="text" class="form-control autosuggest"  id="txtFrom" placeholder="Type Departure City">
                      </div>
                         <div class="col-lg-2 form-group" style="margin-top:3%;color:rgba(0,0,0,.25);text-align:center" >
                             <i class="fa fa-exchange fa-2x" aria-hidden="true"></i>
                         </div>
                      <div class="form-group col-lg-5">
                          <label for="txtTo">To</label>
                          <input type="text" class="form-control autosuggest" id="txtTo" placeholder="Type Desitnation City">
                      </div>
               <div class="col-lg-12">
                      <div class="form-group col-lg-3">
                           <span class="glyphicon glyphicon-calendar"></span>  <label for="txtfromDate">Departure</label>
                        <input type="text" class="form-control" id="txtfromDate" placeholder="Departure">  
                           
                          </div>
                 <div id="idReturn" class="form-group col-lg-3" style="display:none">
                      <span class="glyphicon glyphicon-calendar"></span>
                      <label for="txtToDate">Return</label>
                        <input type="text" class="form-control" id="txtToDate" placeholder="Return">  
                 </div>
                <div class="col-lg-2">

                    <label for="txtFrom">ADULT: (12+ YRS)</label>
                     <asp:TextBox runat="server" ID="txtAdult" TextMode="Number" min="0" step="1"   class="form-control"></asp:TextBox>
                          

                </div>
               <div class="col-lg-2">

                    <label for="txtChild">CHILD: (2-11 YRS)</label>
                          <input  type="number" step="1" class="form-control inputFont" id="txtChild" >

                </div>
               <div class="col-lg-2">

                    <label for="txtChild">INFANT: (0-2 YRS)</label>
                          <input  type="number" class="form-control inputFont" id="txtInfants" >

                </div>
                   </div>
               <div class="col-lg-12">
               
               <div class="form-group col-lg-3">
                                  
                                 <label for="ddlClass">Class : </label>
                   
                                <asp:DropDownList runat="server" ID="ddlClass" CssClass="form-control">
                                  <asp:ListItem Text="Economy" ></asp:ListItem>
                                   <asp:ListItem Text="Premium Economy"></asp:ListItem>
                                      <asp:ListItem Text="Business"></asp:ListItem>
                                 
                              </asp:DropDownList>
                          
               </div>
                   <div class="form-group col-lg-2" style="margin-top:3%" >

                   <asp:Button ID="txtSearchFlight"   runat="server" Text="Search Flights" CssClass="btn btn-md btn-success" />
                      
               </div>

                    <div id="alertBox" class="form-group col-lg-7" style="margin-top:3%;display:none" >

                        <div class="alert fade in" style="color: #f5f5f5; background-color: tomato;border-color: tomato;box-shadow: 2px 2px 2px #888888;">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Alert! </strong>  Please Fill the required fields From , To &  Departure .
                        </div>
                      
               </div>

                   
                   </div>
                  </form>
          </div>

          <!---Hotel Booking-->
          <div id="idHotelBooking" style="display:none">

              <form data-toggle="validator" role="form">
                  <div class="form-group col-lg-12">
                      <label for="txtFrom">I WANT TO GO</label>
                      <input type="text" class="form-control autocomplete" id="txtHotelLocation" placeholder="Enter City name, Area name or Hotel name" autocomplete="off" >
                  </div>
                  <div class="form-group col-lg-5">
                      <label for="txtCheckIn">CHECK IN</label>
                      <span class="glyphicon glyphicon-calendar"></span>
                      <input type="text" class="form-control" id="txtCheckIn" placeholder="Type Desitnation City" >
                  </div>
                 
                      <div class="form-group col-lg-5">
                          <span class="glyphicon glyphicon-calendar"></span>
                          <label for="txtCheckOut">CHECK OUT</label>
                          <input type="text" class="form-control" id="txtCheckOut" placeholder="Departure" >
                      </div>
                   <div class="form-group col-lg-2">
                       <label for="txtNights">NIGHTS</label>
                        <input type="number" class="form-control" id="txtNights" >
                   </div>
                   <div class="col-lg-2">

                    <label for="txtHotelAdult">ADULT: (12+ YRS)</label>
                          <input  type="number" class="form-control inputFont" min="1" id="txtHotelAdult">

                </div>
               <div class="col-lg-2">

                    <label for="txtHotelChild">CHILD: (2-11 YRS)</label>
                          <input  type="number" class="form-control inputFont" min="0" id="txtHotelChild" >

                </div>

                  <div class="form-group col-lg-2" style="margin-top:3%" >

                   <asp:Button ID="btnSearchHotel" runat="server" Text="Search Hotels" CssClass="btn btn-md btn-warning" />

               </div>
                   <div id="alertBoxHotel" class="form-group col-lg-6" style="margin-top:3%;display:none" >

                        <div class="alert fade in" style="color: #f5f5f5; background-color: tomato;border-color: tomato;box-shadow: 2px 2px 2px #888888;">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Alert!</strong>Please Fill the required fields Area, Check In  & Check Out .
                        </div>
                      
               </div>
              </form>

          </div>

      </div>

        
        <div id="divFlightDetails" class="container-fluid" style="display:none;margin-top:5%">
            
                
            <div class="col-lg-3" style="border-right: 2px solid rgba(0,0,0,.25);box-shadow: 2px 2px 2px #888888;">
                <div  style="background-color:#3F5373;text-align:center;color:#fff;margin-right:-6%;margin-left:-10%">
                   <i class="fa fa-filter fa-2x" aria-hidden="true"></i> <p>Filters</p>
                </div>
                <p>
           <label for="amount">Price range:</label>
           <input type="text" id="amount"  style="border:0; color:#f6931f; font-weight:bold;"/> <a id="idclear"> <i class="fa fa-refresh" aria-hidden="true"></i>Clear</a>
            </p>
              
             <div id="slider-range"></div>

                <hr />

              <h5>Air Lines</h5>
                <div class="col-sm-10 list-group">
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="Indigo" />
                            Indigo
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #021C97; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="AirAsia" />
                            AirAsia 
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #E22524; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="AirIndia" />
                            AirIndia
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #E95E05; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="Jet Airways" />
                            Jet Airways
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #FCAF1E; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    
                </div>
                <hr />
                
               <div>
                   <h5><span class="glyphicon glyphicon-time"></span> Departure Time</h5>
                  <ul class="list-inline" style="cursor:pointer">
                      <li id="idBefore11" class="clear" style="border-right:3px solid tomato;"> Before 11AM </li>
                       <li id="idAfter11" class="clear"  style="border-right:3px solid steelblue"> 11 AM to 9 AM </li>
                      <li id="idAfter9" class="clear">After 9 AM</li>
                  </ul>
               </div>
                <hr />
                 <div>
                   <h5><span class="glyphicon glyphicon-ban-circle"></span> No Of Stops </h5>
                  <ul class="list-inline" style="padding-left:0px">
                      <li style="border-right:3px solid tomato;background-color:#f2dede"> 0 Stop </li>
                       <li style="border-right:3px solid steelblue"> 1 Stop</li>
                      <li>1+ Stops</li>
                  </ul>
               </div>

            </div>
                 <div class="col-lg-9">
                    
                     <div class="col-lg-3">
                        <p> <span style="width:10px;border-radius:20px;height:10px;background-color:#66bb6a;display:inline-block" class="iconclass"></span> <span id="idtravelLocations" class="idtravelLocations"></span></p>
                        <p><i class="fa fa-plane fa-1x iconclass" aria-hidden="true"></i> <span id="idAirlineName" class="idAirlineName"></span></p>
                        <p><i class="fa fa-clock-o fa-1x iconclass"></i> <span id="idTimeSpan" class="idTimeSpan"></span></p>
                        <p><i class="fa fa-suitcase iconclass" aria-hidden="true"></i><span id="idHours" class="idHours"></span></p>
                          <p><i class="fa fa-calendar iconclass" aria-hidden="true"></i><span id="idDate" class="idDate"></span></p>

                         <hr />
                         <div class="return" >
                         <p> <span style="width:10px;border-radius:20px;height:10px;background-color:tomato;display:inline-block" class="iconclass"></span> <span id="idtravelLocationsReturn" class="idtravelLocationsReturn"></span></p>
                        <p><i class="fa fa-plane fa-1x iconclass" aria-hidden="true"></i> <span id="idAirlineNameReturn" class="idAirlineNameReturn"></span></p>
                        <p><i class="fa fa-clock-o fa-1x iconclass"></i> <span id="idTimeSpanReturn" class="idTimeSpanReturn"></span></p>
                        <p><i class="fa fa-suitcase iconclass" aria-hidden="true"></i><span id="idHoursReturn" class="idHoursReturn"></span></p>
                          <p><i class="fa fa-calendar iconclass" aria-hidden="true"></i><span id="idDateReturn" class="idDateReturn"></span></p>
                         </div>

                    </div>
                     <div class="col-lg-2">
                         <h3 id="idFair">$1200</h3> <button type="button" id="btnBook" class="btn btn-md btn-success">Book</button>
                     </div>
                     <div class="col-lg-7">
                         <ul class="mini-timeline">
							<li   class="mini-timeline-lime">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										Airlines stop accepting cancellation/rescheduling requests 24 - 72 hours.
									</div>
								</div>
							</li>
                             <li   class="mini-timeline-deeporange">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										The rescheduling/cancellation fee may also vary based on fluctuations in currency conversion rates.
									</div>
								</div>
							</li>
                             <li   class="mini-timeline-info">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										Rescheduling Charges = Rescheduling/Change Penalty + Fare Difference (if applicable)
									</div>
								</div>
							</li>
                              <li   class="mini-timeline-indigo">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										The airline penalty is indicative only and Goibibo doesn't guarantee the accuracy of this information.
									</div>
								</div>
							</li>

                             </ul>
                         <%--<ul class="mini-timeline">
                             <li class="mini-timeline-deeporange"><div class="timeline-content">Airlines stop accepting cancellation/rescheduling requests 24 - 72 hours.</div></li>
                             <li>The rescheduling/cancellation fee may also vary based on fluctuations in currency conversion rates.</li>
                             <li>Rescheduling Charges = Rescheduling/Change Penalty + Fare Difference (if applicable)</li>
                             <li>The airline penalty is indicative only and Goibibo doesn't guarantee the accuracy of this information.</li>
                         </ul>--%>
                     </div>

                     <div id="idAlertCheapest" class="col-lg-6">
                          <div class="alert" style="background-color:#FFCA28;box-shadow: 2px 2px 2px #888888;">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Info! </strong> Cheapest ticket Rates are selected by default !!!
          </div>
                     </div>

                 <div class="col-lg-12 clearfix" style="margin-top:3%;text-align:center">
                     <table class="table table-bordered">
                         <thead>
                             <tr>
                                 <th id="idAirlineSort">Airline  </th> 
                                 <th id="idDepartureSort" >Departure</th>
                                 <th id="idArrivalSort">Arrival</th>
                                 <th id="idDUrationSort" >Duration</th>
                                  <th id="idPriceSort">Price ($)</th>
                                 
                             </tr>
                         </thead>
                         <tbody>
                             
                         </tbody>

                     </table>
                     
                     <div id="idPlaneDetails">

                     </div>
                    <div class="return">
                    <hr />
                     <table class="table table-bordered">
                         <thead>
                             <tr>
                                 <th>Airline  </th> 
                                 <th >Departure</th>
                                 <th>Arrival</th>
                                 <th>Duration</th>
                                  <th>Price ($)</th>
                                 
                             </tr>
                         </thead>
                         <tbody>
                             
                         </tbody>

                     </table>
                     
                     <div id="idPlaneDetailsReturn">

                     </div>
                        </div>
                     </div>
                     </div>

                     
                 </div>
                     
          
        
          

   <!--Hotel Booking-->
  <div id="divHotelDetails" class="container-fluid" style="display:none;margin-top:5%">
       <div class="col-lg-2" style="border-right: 2px solid rgba(0,0,0,.25);box-shadow: 2px 2px 2px #888888;">
                <div  style="background-color:#65B1E4;text-align:center;color:#fff;margin-right:-6%;margin-left:-10%">
                   <i class="fa fa-filter fa-2x" aria-hidden="true"></i> <p>Filters</p>
                </div>
                <p>
           <label for="amount">Price range:</label>
           <input type="text" id="amountHotel"  style="border:0; color:#f6931f; font-weight:bold;"/> <a id="idclearHotel"> <i class="fa fa-refresh" aria-hidden="true"></i>Clear</a>
            </p>
              
             <div id="slider-rangeHotel"></div>

                <hr />

              <h5>Star Category</h5>
                <div class="col-sm-10 list-group">
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="Indigo" />
                           <i class="fa fa-star icon_color" aria-hidden="true"></i>
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #F06292; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="AirAsia" />
                            <i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color icon_color" aria-hidden="true "></i> 
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #7E57C2; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="AirIndia" />
                          <i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i>
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #4DD0E1; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                     <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="Jet Airways" />
                            <i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i>
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #FFC107; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    <div class="checkbox list-group-item">
                        <label>

                            <input type="checkbox" name="locationthemes" value="Jet Airways" />
                            <i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i><i class="fa fa-star icon_color" aria-hidden="true"></i>
                               
                        </label>
                        <div style="float: right;">
                            <span style="width: 10px; border-radius: 20px; height: 10px; background-color: #8BC34A; display: inline-block; /* float: right; */margin-left: 0%; /* position: absolute; *//* display: none; */" class="iconclass"></span>
                        </div>
                    </div>
                    
                </div>
                <hr />
           <div style="margin-bottom:5%">
              <h5><i class="fa fa-map-marker " aria-hidden="true"></i>  Locations  </h5> 
               <asp:DropDownList id="ddlHotelArea" CssClass="form-control" runat="server">
                   
               </asp:DropDownList>
           </div>
                <hr />
               <div>
                   <h5><i class="fa fa-bed" aria-hidden="true"></i> Hotel Type</h5>
                  <ul class="list-inline" style="cursor:pointer">
                      <li id="idHotelBook" class="clear" style="border-right:3px solid tomato;"> Hotel </li>
                       <li id="idResortBook" class="clear"  style="border-right:3px solid steelblue"> Resort </li>
                      <li id="idVillaBook" class="clear">Villa</li>
                  </ul>
               </div>
                <hr />
                 <div>
                   <h5><i class="fa fa-star-o" aria-hidden="true"></i> User Ratings </h5>
                  <ul class="list-inline" style="padding-left:0px">
                      <li style="border-right:3px solid tomato;background-color:#f2dede"> 3+ </li>
                       <li style="border-right:3px solid steelblue"> 4+</li>
                      <li>4.5+</li>
                  </ul>
               </div>

           
          


            </div>


         <div class="col-lg-10">
                    
                     <div class="col-lg-3">
                        <p> <i class="fa fa-bed" aria-hidden="true" style="color:tomato"></i> <span id="HotelName" style="font-weight:bold" class=""> Novotel </span></p>
                        <p><i class="fa fa-map-marker  fa-1x iconclass" aria-hidden="true"></i> <span id="idLocationHotel" class="">Bellandur | Bangalore</span></p>
                        <p><i class="fa fa-calendar iconclass" aria-hidden="true"></i>Chek In :<span id="idCheckin" class=""></span> </p>
                         <p><i class="fa fa-calendar iconclass" aria-hidden="true"></i>Chek Out :<span id="idCheckout" class=""></span> </p>
                        <p><i class="fa fa-suitcase iconclass" aria-hidden="true"></i>Nights :<span id="idDays" class=""></span>  </p>
                          

                    </div>
                     <div class="col-lg-2">
                         <h3 id="idFairHoel">$250</h3> <button type="button" id="btnBookHoel" class="btn btn-md btn-success">Book</button>
                     </div>
                     <div class="col-lg-7">
                         <ul class="mini-timeline">
							<li   class="mini-timeline-lime">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										Airlines stop accepting cancellation/rescheduling requests 24 - 72 hours.
									</div>
								</div>
							</li>
                             <li   class="mini-timeline-deeporange">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										The rescheduling/cancellation fee may also vary based on fluctuations in currency conversion rates.
									</div>
								</div>
							</li>
                             <li   class="mini-timeline-info">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										Rescheduling Charges = Rescheduling/Change Penalty + Fare Difference (if applicable)
									</div>
								</div>
							</li>
                              <li   class="mini-timeline-indigo">
								<div class="timeline-icon"></div>
								<div class="timeline-body">
									<div  class="timeline-content">
										The airline penalty is indicative only and Goibibo doesn't guarantee the accuracy of this information.
									</div>
								</div>
							</li>

                             </ul>
                         <%--<ul class="mini-timeline">
                             <li class="mini-timeline-deeporange"><div class="timeline-content">Airlines stop accepting cancellation/rescheduling requests 24 - 72 hours.</div></li>
                             <li>The rescheduling/cancellation fee may also vary based on fluctuations in currency conversion rates.</li>
                             <li>Rescheduling Charges = Rescheduling/Change Penalty + Fare Difference (if applicable)</li>
                             <li>The airline penalty is indicative only and Goibibo doesn't guarantee the accuracy of this information.</li>
                         </ul>--%>
                     </div>

                     <div id="idAlertCheapest12" class="col-lg-6">
                          <div class="alert" style="background-color:#FFCA28;box-shadow: 2px 2px 2px #888888;">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Info! </strong> Cheapest ticket Rates are selected by default !!!
          </div>
                     </div>

                 <div class="col-lg-12 clearfix" style="margin-top:3%;">
                     <table class="table table-bordered col-lg-8" style="width:66.66666667%" id="tblHotelDetails" >
                         <thead>
                             <tr style="background-color:rgba(0,0,0,.075)">
                                 <th>Hotel Name  </th> 
                                 <th>Hotel Location</th>
                                 <th class="number">Type</th>
                                 <th class="number">User Rating</th>
                                  <th class="number">Price ($)</th>
                                 
                             </tr>
                         </thead>
                         <tbody id="BindHotelData">
                             
                         </tbody>

                     </table>
                     
                     <div id="HotelFairDetails" class="col-lg-4" style="background-color:rgba(255,255,255,.15);box-shadow:2px 2px 2px #888888;display:none">
                         <div style="background-color:#3F5373;color:#eeeeee;padding:10px;text-align:center;margin: 0px -15px 0px -15px;font-weight:bold">
                              Hotel Details 
                         </div>
                             <div class="col-lg-6" >
                                 <h5 style="background-color:#7AD5C9;padding:3px">Hotel Facilties</h5>
                                <p> <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</p>
                               <p> <i class="fa fa-cutlery" aria-hidden="true"></i> Include Breakfast</p>
                              <p><i class="fa fa-shield" aria-hidden="true"></i> Room Service</p>
                    
                             </div>
                            
                            <div class="col-lg-6">
                                <h5 style="background-color:#7AD5C9;padding:3px">Fare Break Up</h5>
                                 <p> Hotel Charge: $ 200 </p>
                                 <p> Hotel Taxes : $50 </p> 
                                <p> Total : <strong>$ 250 </strong> </p> 
                             
                           </div>

                         <div class="col-lg-12">
                             <h5 style="background-color:#65B1E4;padding:3px">Address</h5>
                          <span> <i class="fa fa-map-marker fa-2x " aria-hidden="true" style="color:tomato;padding-right:5px"></i>  </span> <span>  opp.Eco Space , Beside IBIS Hotel , Bellandur </span>
                         </div>
                 </div>
             </div>
      </div>
      </div>
    <!-- About -->
    <section id="abouEmptyt" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2></h2>
                    <p class="lead"></p>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    
    
    
    
    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>Our Services</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-plane fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Flight Services</strong>
                                </h4>
                                <p>We provide provide services in Dometic and International Flights</p>
                                <a href="#" class="btn btn-light" data-toggle="modal" data-target="#myModal">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-bed fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Hotel Services</strong>
                                </h4>
                                <p>We provide flight services in Dometic and International hotels</p>
                                <a href="#" class="btn btn-light" data-toggle="modal" data-target="#myModalHotel">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-calendar fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Holiday Trips</strong>
                                </h4>
                                <p>We provide best holiday trips in Dometic as well as International.</p>
                                <a href="#" class="btn btn-light" data-toggle="modal" data-target="#myModalTrips">Learn More</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-bus  fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Travel</strong>
                                </h4>
                                <p>Travel from Airport to Hotel with safe ,secured and less prices too.</p>
                                <a href="#" class="btn btn-light" data-toggle="modal" data-target="#myModalTravel">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <!-- Callout -->
    <aside class="callout">
        <div class="text-vertical-center" style="text-align:right;display: table-row-group">
            <h2>Find the best place to experience the joy..</h2>
        </div>
    </aside>

    <!-- Portfolio -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <h2>Best Offers & Holiday Trips</h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" style="height:333px" src="img/portfolio-1.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" style="height:333px" src="img/portfolio-2.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" style="height:333px" src="img/portfolio-3.jpg">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="#">
                                    <img class="img-portfolio img-responsive" style="height:333px" src="img/portfolio-4.jpg">
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                    <a href="#" data-toggle="modal"  data-target="#myManagement" class="btn btn-dark">View More Items</a>
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

          <!-- About -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2> About</h2>
                    <hr class="small">
                    <p class="lead">
                        Travel with Us is the largest online hotels booking engine in the World and also one of the leading air aggregator. Travel With Us is also the number one ranked web app under the travel category. Travel With Us’s core value differentiator is delivery of the fastest and the most trusted user experiences, be it in terms of quickest search and booking, fastest payments, settlement and refund processes.

                    </p>
                    <a href="#" data-toggle="modal"  data-target="#myManagement" class="btn btn-dark">View More about Management</a>
                </div>
            </div>
            <!-- /.row -->
      </div>
        <!-- /.container -->
    </section>


    <!-- Call to Action -->
    <aside class="bg-primary" style="margin-top:5%">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>Contact Below for Consern quries.</h3>
                    
                </div>
            </div>
        </div>
    </aside>

    <!-- Map -->
   <%-- <section id="contact" class="map">
        <iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
        <br />
        <small>
            <a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
        </small>
        </iframe>
    </section>--%>

        <section id="contact" >

            <div class="container">
                <div class="col-lg-12">
                    <div class="col-lg-4">
                        <h4><strong>Flight</strong>
                    </h4>
                    <p>3481 Melrose Place
                        <br>Beverly Hills, CA 90210</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a>
                        </li>
                    </ul>
                    <br>
                   
                    </div>
                    <div class="col-lg-4">
                        <h4><strong>Hotel</strong>
                    </h4>
                    <p>3481 Melrose Place
                        <br>Beverly Hills, CA 90210</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a>
                        </li>
                    </ul>
                    <br>
                   
                    </div>
                    <div class="col-lg-4">
                        <h4><strong>Holiday Trips</strong>
                    </h4>
                    <p>3481 Melrose Place
                        <br>Beverly Hills, CA 90210</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a>
                        </li>
                    </ul>
                    <br>
                    
                    </div>
                </div>
            </div>

        </section>



    <!-- Footer -->
  
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                 
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                        </li>
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
        <a id="to-top" href="#top" class="btn btn-dark btn-lg"><i class="fa fa-chevron-up fa-fw fa-1x"></i></a>
   
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:steelblue">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:#fff">Flight Services</h4>
        </div>
        <div class="modal-body">
            <div class="row">
         <div class="col-lg-2">
              <span class="fa-stack fa-4x" >
                                <i class="fa fa-circle fa-stack-2x" style="color:#d9edf7"></i>
                                <i class="fa fa-plane fa-stack-1x text-primary"></i>
                            </span>
         </div>
            <div class="col-lg-10">
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   </p>

            </div>

                <div class="col-lg-2" style="background-color: #31708f;padding:5px;color: #fff;box-shadow: 2px 2px 2px #888888;text-align: center;">
                    Our Clients 
                </div>

                <div class="col-lg-12" style="margin-top:3%">
                    <div class="col-lg-3">
                    <img src="img/a1.jpg"  class="img" alt="Cinque Terre" width="100" height="100">
                        </div>
                    <div class="col-lg-3">
                    <img src="img/a2.png"  class="img" alt="Cinque Terre" width="100" height="100">
                        </div>
                    <div class="col-lg-3">
                    <img src="img/a3.jpg"  class="img" alt="Cinque Terre" width="100" height="100">
                        </div>
                    <div class="col-lg-3">
                    <img src="img/a4.jpg"  class="img" alt="Cinque Terre" width="100" height="100">
                        </div>
                </div>

                </div>
        </div>
        <%--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
      </div>
        </div>
        </div>
        
        <div class="modal fade" id="myModalHotel" role="dialog">
            <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:steelblue">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:#fff">Hotel Services</h4>
        </div>
        <div class="modal-body">
            <div class="row">
         <div class="col-lg-2">
              <span class="fa-stack fa-4x" >
                                <i class="fa fa-circle fa-stack-2x" style="color:#d9edf7"></i>
                                <i class="fa fa-bed fa-stack-1x text-primary"></i>
                            </span>
         </div>
            <div class="col-lg-10">
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   </p>

            </div>

                <div class="col-lg-2" style="background-color: #31708f;padding:5px;color: #fff;box-shadow: 2px 2px 2px #888888;text-align: center;">
                    Our Clients 
                </div>

                
                </div>
        </div>
        <%--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
      </div>
</div>
            </div>
        
           <div class="modal fade" id="myModalTrips" role="dialog">
            <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:steelblue">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:#fff">Holiday Trips</h4>
        </div>
        <div class="modal-body">
            <div class="row">
         <div class="col-lg-2">
              <span class="fa-stack fa-4x" >
                                <i class="fa fa-circle fa-stack-2x" style="color:#d9edf7"></i>
                                <i class="fa fa-calendar  fa-stack-1x text-primary"></i>
                            </span>
         </div>
            <div class="col-lg-10">
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   </p>

            </div>

                <div class="col-lg-2" style="background-color: #31708f;padding:5px;color: #fff;box-shadow: 2px 2px 2px #888888;text-align: center;">
                    Our Clients 
                </div>

                
                </div>
        </div>
        <%--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
      </div>
</div>
            </div>


           <div class="modal fade" id="myModalTravel" role="dialog">
            <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:steelblue">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:#fff">Travel Services</h4>
        </div>
        <div class="modal-body">
            <div class="row">
         <div class="col-lg-2">
              <span class="fa-stack fa-4x" >
                                <i class="fa fa-circle fa-stack-2x" style="color:#d9edf7"></i>
                                <i class="fa fa-bus  fa-stack-1x text-primary"></i>
                            </span>
         </div>
            <div class="col-lg-10">
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   </p>

            </div>

                <div class="col-lg-2" style="background-color: #31708f;padding:5px;color: #fff;box-shadow: 2px 2px 2px #888888;text-align: center;">
                    Our Clients 
                </div>

                
                </div>
        </div>
        <%--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
      </div>
</div>
            </div>
  

   <div class="modal fade" id="myManagement" role="dialog">
            <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="border-bottom:none">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:#FE7545">Our Management</h4>
        </div>
        <div class="modal-body">
            <div class="row">
         
            
                <div class="col-lg-12">
                    <div class="col-lg-3">
                        <div style="box-shadow: 1px 1px 1px 1px #888888;">
                        <div style="height:50%;background-color:#A1D959;padding:3px">
                           
                       
                            <div style="font-size: 40px; text-align: center;  border-radius: 75%; margin-top: 3%">
                               
                                <img id="idProfile" src="http://idcportal:90/Profile/show?userName=AMARIMEK" style="border-radius:50%">
                            </div> 
                            
                            <div style="margin-top:3%;text-align: center;font-family:Trebuchet MS’, Helvetica, sans-serif;">
                            <span id="idUserId" style="font-weight:500;color:#eeeeee">Ambareesh,marimekala</span> 
                            <p id="idDesignation" style="text-align: center;color:#eeeeee">Software Engineer</p>
                                </div>
                    
                        </div>

                        <div style="height:50%;background-color:#eee;padding:6px">

                            <p> Have 7 years of experience in web Development and Business analaysis .Highly motivated personality with cool mantality.  .</p>
                        </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div style="box-shadow: 1px 1px 1px 1px #888888;">
                        <div style="height:50%;background-color:#7AD5C9;padding:3px">
                           
                       
                            <div style="font-size: 40px; text-align: center;  border-radius: 75%; margin-top: 3%">
                               
                                <img id="" src="http://idcportal:90/Profile/show?userName=SVIJAY3" style="border-radius:50%">
                            </div> 
                            
                             <div style="margin-top:3%;text-align: center;font-family:Trebuchet MS’, Helvetica, sans-serif;">
                            <span id="" style="font-weight:500;color:#eeeeee">Saurabh,Vijay</span> 
                            <p id="" style="text-align: center;color:#eeeeee">Technical Architech</p>
                                </div>
                    
                        </div>

                        <div style="height:50%;background-color:#eee;padding:6px">

                            <p> Have 23 years of experience in web Development and Business analaysis .Highly motivated personality with cool mantality.  .</p>
                        </div>
                   </div>
                    </div>
                    <div class="col-lg-3">
                        <div style="box-shadow: 1px 1px 1px 1px #888888;">
                        <div style="height:50%;background-color:#65B1E4;padding:3px">
                           
                       
                            <div style="font-size: 40px; text-align: center;  border-radius: 75%; margin-top: 3%">
                               
                                <img id="" src="http://idcportal:90/Profile/show?userName=KMACHANI" style="border-radius:50%">
                            </div> 
                            
                             <div style="margin-top:3%;text-align: center;font-family:Trebuchet MS’, Helvetica, sans-serif;">
                            <span id="" style="font-weight:500;color:#eeeeee">Kartick,Machani</span> 
                            <p id="" style="text-align: center;color:#eeeeee">Project Manager</p>
                                </div>
                    
                        </div>

                        <div style="height:50%;background-color:#eee;padding:6px">

                            <p> Have 17 years of experience in web Development and Business analaysis .Highly motivated personality with cool mantality.  .</p>
                        </div>
                            </div>
                    </div>


                </div>
               

                
            </div>
        </div>
        <%--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
      </div>
</div>
            </div>


    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
        <script src="js/Bind.js"></script>
    <!-- Custom Theme JavaScript -->
    <script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    //#to-top button appears after scrolling
    var fixed = false;
    $(document).scroll(function() {
        if ($(this).scrollTop() > 250) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function() {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    // Disable Google Maps scrolling
    // See http://stackoverflow.com/a/25904582/1607849
    // Disable scroll zooming and bind back the click event
    var onMapMouseleaveHandler = function(event) {
        var that = $(this);
        that.on('click', onMapClickHandler);
        that.off('mouseleave', onMapMouseleaveHandler);
        that.find('iframe').css("pointer-events", "none");
    }
    var onMapClickHandler = function(event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
    $('.map').on('click', onMapClickHandler);
    </script>

        
<script type="text/javascript">
$(function () {
    $("#txtfromDate").datepicker();
    $("#txtToDate").datepicker();
    $("#txtCheckIn").datepicker();
    $("#txtCheckOut").datepicker();
});
$(function () {
    fn_searchFromName();
    fn_searchToName();
    fn_searchHotelName();
});

$(function () {
    $("#slider-range").slider({
        range: true,
        min: 50,
        max: 1000,
        values: [50, 1000],
        slide: function (event, ui) {
            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
           
        },
        change: function(event, ui) {
            // when the user change the slider
         
           
    },
        stop: function (event, ui) {

        // when the user stopped changing the slider
        fn_getFilter("RangeValue", ui.values[1], $("#txtFrom").val(), $("#txtTo").val());
    }
        
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
      " - $" + $("#slider-range").slider("values", 1));
    
});

//AutoComplete for From 

function fn_searchFromName() {
   // debugger;
    $("#txtFrom").autocomplete({
       
        source: function (request, response) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetAutoCompleteData",
                data: "{'username':'" + $('#txtFrom').val() + "'}",
                dataType: "json",
                async: false,
                success: function (data) {
                   
                    response(data.d);
                    
                },
                error: function (result) {
                    alert("Error");
                }
            });
        }
        
    });
}

//Auto compplete from To
function fn_searchToName() {
   //  debugger;
    $("#txtTo").autocomplete({

        source: function (request, response) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetAutoCompleteDataTo",
                data: "{'usernameTo':'" + $('#txtTo').val() + "'}",
                dataType: "json",
                async: false,
                success: function (data) {

                    response(data.d);

                },
                error: function (result) {
                    alert("Error");
                }
            });
        }

    });
}


//Auto Complete from Hotel
function fn_searchHotelName() {
    // debugger;
    $(".autocomplete").autocomplete({

        source: function (request, response) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetAutoCompleteData",
                data: "{'username':'" + document.getElementById('txtHotelLocation').value + "'}",
                async: false,
                dataType: "json",
                success: function (data) {

                    response(data.d);

                },
                error: function (result) {
                    alert("Error");
                }
            });
        }

    });
}

function fn_GetPlaneDetailsLoc() {
    //debugger;
     var from = document.getElementById('txtFrom').value ;
     var to =   document.getElementById('txtTo').value;
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetPlaneDetailsforLoc",
                data: "{'from':'"+from+"','to':'" +to+"'}",
                dataType: "json",
                async: false,
                success: function (data) {
                    debugger;
                    fn_BindFilteredData(data);
                    

                },
                error: function (result) {
                    alert("Error");
                }
            });

     
    }


// function to bind Table data
function fn_BindHoteData() {
    //debugger;
   
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        data: '{"area": "'+$('#txtHotelLocation').val()+'"}',
        url: "Index.aspx/BindHotelDetails",
        dataType: "json",
        async: false,
        success: function (data) {
            
               var ddlCustomers = $("#BindHotelData");
              ddlCustomers.empty();
             var trHtml = '';
            for (var i = 0; i < data.d.length; i++)
            {
                var color = "#fff";

                if (data.d[i].Type == "1")
                {
                    color = "#F06292";
                }
                else if (data.d[i].Type == "2")
                {
                    color = "#7E57C2";

                }
                else if (data.d[i].Type == "3") {

                    color = "#4DD0E1";
                }
                else if (data.d[i].Type == "4") {
                    color = "#FFC107";
                }
                else {
                    color = "#8BC34A";

                }
               

                trHtml += "<tr><td> <span style='width: 10px; border-radius: 20px; height: 10px; background-color:" + color + "; display: inline-block;float:right'></span>" + data.d[i].HotelName + "</td><td> " + data.d[i].HotalLocation + "</td><td class='number'>" + data.d[i].Type + "</td><td class='number'>" + data.d[i].UserRating + "</td><td class='number' style='font-weight:bold'>" + data.d[i].HotelPrice + "</td></tr>";
               
            }
            $("#BindHotelData").append(trHtml);
        },
        error: function (result) {
            alert("Something Went Wrong");
        }
    });


}


// function to bind area drop down
 function fn_BindArea()
{
         //debugger;
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                data: '{"area": "' +$('#txtHotelLocation').val()+ '"}',
                url: "Index.aspx/BindArea",
                dataType: "json",
                async: false,
                success: function (data) {
                //   debugger;
                    var ddlCustomers = $("#ddlHotelArea");
                    ddlCustomers.empty();
                    ddlCustomers.append($('<option selected="selected"></option>').val("Select").html("Select"));
                    $.each(data.d, function (key, value) {
                        ddlCustomers.append($('<option></option>').val(value.LocationName).html(value.AirlineName));
                    });

                },
                error: function (result) {
                    alert("Something Went Wrong");
                }
            });

          

 }

    //function to bind data to table according to area

 function fn_BindAccordingToArea(selectedArea)
 {
     $.ajax({
         type: "POST",
         contentType: "application/json; charset=utf-8",
         data: '{"area": "' + selectedArea + '"}',
         url: "Index.aspx/BindAccordingToArea",
         dataType: "json",
         async: false,
         success: function (data) {
             var ddlCustomers = $("#BindHotelData");
             ddlCustomers.empty();
             var trHtml = '';
             for (var i = 0; i < data.d.length; i++) {
                 trHtml += '<tr><td>' + data.d[i].HotelName + '</td><td>' + data.d[i].HotalLocation + '</td><td class="number">' + data.d[i].Type + '</td><td class="number">' + data.d[i].UserRating + '</td><td class="number">' + data.d[i].HotelPrice + '</td></tr>';
             }
             $("#BindHotelData").append(trHtml);

         },
         error: function (result) {
             alert("Something Went Wrong");
         }
     });
 }


function fn_getFilter(filterName,filterValue,from,to) {
    //debugger;
  
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetFilterData",
                data: "{'filterName':'" + filterName + "','filterData':'" + filterValue + "','from':'"+from+"','to':'"+to+"'}",
                dataType: "json",
                async: false,
                success: function (data) {

                    fn_BindFilteredData(data);

                },
                error: function (result) {
                    alert("Error");
                }
            });
        }


function fn_getPlaneDetails() {
     //debugger;
    var from = document.getElementById('txtFrom').value;
    var to = document.getElementById('txtTo').value;
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetPlaneDetails",
                dataType: "json",
                data: "{'to':'" + to + "','from':'" + from + "'}",
                async: false,
                success: function (data) {
                    debugger;
                    $("#idPlanDetailsReturn").empty();
                    var html = fn_BindFilteredDataReturn(data);
                    $("#idPlaneDetailsReturn").append(html);

                                 },
                                     error: function (result) {
                    alert("Error");
                                 }
            });
        }

    
function fn_BindFilteredData(data)
{
    //debugger;
    $("#idPlaneDetails").empty();
   // $("#idPlaneDetailsReturn").empty();
    //debugger;
    for (var i = 0; i < data.d.length; i++) {

        var color = "";
        if (data.d[i].AirlineName == "Indigo")
        {
            color = "#021C97";
        }
        else if(data.d[i].AirlineName == "Air Asia")
        {
            color = "#E22524";
        }
        else if (data.d[i].AirlineName == "Jet Airways")
        {
            color = "#FCAF1E";
        }
        else
        {
            color = "#E95E05";
        }

        var str = " <div id='idSelect"+i+"' class='row details' style='text-align:center;font-size:16px;font-weight:normal;border-bottom: 1px solid rgba(0,0,0,.075)'>";
        str += "<div class='col-lg-2' id='Airline"+i+"' style='display:table-cell;'>";
        str += "<span style='width:10px;border-radius:20px;height:10px;background-color:" + color + ";display:inline-block;float: left;' class='iconclass'></span> " + data.d[i].AirlineName + "</div>";
        str += "<div class='col-lg-3' id='Departue" + i + "' style='display:table-cell'> <span id='DepartureTime" + i + "'>" + data.d[i].DepartureTime + "</span> <span id='DeparturePlace" + i + "'> " + data.d[i].LocationName + "</span> </div>";
        str += "<div class='col-lg-2' id='Arrival" + i + "' style='display:table-cell'>  <span id='ArrivalTime" + i + "'> " + data.d[i].ArrivalTime + "</span> <span id='ArrivalPlace" + i + "'>  " + data.d[i].To_location + " </span> </div>";
        str += "<div class='col-lg-2' id='Duration"+i+"' style='display:table-cell'> " + data.d[i].Duration + " 00 Min</div>";
        str += "<div class='col-lg-2' id='Price"+i+"' style='display:table-cell;color:#CD3800;font-weight:bold'> " + data.d[i].Price + "</div>";
        str += "<div class='col-lg-1' style='display:table-cell'><a  data-toggle='collapse' data-target='#demo" + i + "'> <span id='slidedown" + i + "' class='glyphicon glyphicon-plus iconsize'> </span> </div>  </a>";


        str += "<div id='demo" + i + "' class='col-lg-10 collapse' style='margin-top:3%;margin-left:5%;text-align:left'>";
        str += "<ul class='list-inline list-group' style='padding-left:10px;'>";
        str += "<li class='active'><a id='FlightDetails"+i+"' data-toggle='pill' href='#home"+i+"'>Flight Details</a></li>";
        str += " <li><a id='FareDetails"+i+"' data-toggle='pill' href='#menu1" + i + "' style='padding-left: 5px;'>Fare Details</a></li>";
        str += " <li><a id='Baggage"+i+"' data-toggle='pill' href='#menu2" + i + "'>Baggage Details</a></li>";
        str += " <li><a id='Cancellation"+i+"'  data-toggle='pill' href='#menu3" + i + "'>Cancellation fee</a></li>";
        str += "</ul> <hr>";

        str += "<div class='tab-content' id='a"+i+"'>";
        str += "<div id='home" + i + "' class='tab-pane fade in active'>";

        str += "<p><span style='width: 10px; border-radius: 20px; height: 10px; background-color: #66bb6a; display: inline-block' class='iconclass'></span><span class='idtravelLocations'></span> </p>";
        str += "<p><i class='fa fa-plane fa-1x iconclass' aria-hidden='true'></i><span class='idAirlineName'></span></p>";
        str += " <p><i class='fa fa-clock-o fa-1x iconclass'></i><span class='idTimeSpan'></span></p>";
        str += "<p><i class='fa fa-suitcase iconclass' aria-hidden='true'></i><span class='idHours'></span></p>";
        str+=  "<p><i class='fa fa-calendar iconclass' aria-hidden='true'></i><span class='idDate'></span></p></div>";
        str += "<div id='menu1" + i + "' class='tab-pane fade'>";


        str += " <table class='table table-bordered'><thead><tr><th>Fare breakup</th><th> Cost </th></tr> </thead> <tbody><tr> <td>Base Fare (1 Adult, 0 Children, 0 Infant)</td> <td> $ 7 </td></tr> <tr><td>Fees &amp; Surcharge</td> <td> $5 </td></tr><tr><td>Total	 </td> <td> <strong>$ 12 </strong> </td> </tr></tbody></table> </div>";


        str += "<div id='menu2" + i + "' class='tab-pane fade'>";


        str += "<table class='table table-bordered'>";
        str += "   <thead>";
        str += "   <tr>";
        str += "         <th><span  class='idtravelLocations'> </span></th>";
        str+=  "        <th> Cabin </th> <th> Check In </th>"
        str += "       </tr>";
        str += "      </thead>";
        str += "         <tbody>";
        str += "                <tr>";
        str += "                    <td>Adult</td>";
        str += "                     <td>	7 Kg Cabin</td>";
        str += "                       <td>	25 Kg Checkin</td>";
        str += "                   </tr>";
        str += "                     <tr>";
        str += "                           <td>Adult</td>";
        str += "                          <td>7 Kg Cabin</td>";
        str += "                           <td>25 Kg Checkin</td>";

        str += "                       </tr>";
        str += "                       <tr>";
        str += "                           <td>Infant</td>";
        str += "                           <td>0 Kg Cabin</td>";
        str += "                           <td>10 Kg Checkin</td>";

        str += "                       </tr>";
        str += "                    </tbody>";
        str += "                 </table>";
        str += "             </div>";
        str += "             <div id='menu3" + i + "' class='tab-pane fade'>";
        str += "                 <h4>*</h3>";
        str += "                  <p>Cancelation can be made before one day of arrival other wise the amount can be refundabale</p>";
        str += "              </div>";
        str += "          </div>";


        $("#idPlaneDetails").append(str);
        
       // $("#idPlanDetailsReturn").append(str);
    }
}





function fn_AppendToCheapFlightAtPageLoad() {
    debugger;
    $(".idtravelLocations").text($(('#DeparturePlace') + (0)).text() + " - " + $(('#ArrivalPlace') + (0)).text());
    $(".idAirlineName").text($(('#Airline') + (0)).text());
    $(".idTimeSpan").text($(('#DepartureTime') + (0)).text() + "-" + $(('#ArrivalTime') + (0)).text());
    $(".idHours").text($(('#Duration')+(0)).text() + "| 0 Stop");
    $(".idDate").text($("#txtfromDate").val())
    $("#idFair").text("$" + parseInt($(('#Price') + (0)).text()) * parseInt($("#txtAdult").val()));
   
    if(returnJourney == "RoundTrip")
    {
       // debugger;
      
       
        $(".idtravelLocationsReturn").text($(('#DeparturePlace') + (10)).text() + " - " + $(('#ArrivalPlace') + (10)).text());
        $(".idAirlineNameReturn").text($(('#Airline') + (10)).text());
        $(".idTimeSpanReturn").text($(('#DepartureTime') + (10)).text() + "-" + $(('#ArrivalTime') + (10)).text());
        $(".idHoursReturn").text($(('#Duration') + (10)).text() + "| 0 Stop");
        $(".idDateReturn").text($("#txtToDate").val())
        
        var price = parseInt(parseInt($(('#Price') + (0)).text()) + parseInt(($(('#Price') + (10)).text()))  * parseInt($("#txtAdult").val()));
        $("#idFair").text("$" +price);
    }

}

 //function to clear department time selected
function clearDepartmentTime() {
    $("#idBefore11").css("background-color", "#fff");

    $("#idAfter11").css("background-color", "#fff");

    $("#idAfter9").css("background-color", "#fff");
}


var returnJourney = '';
$(document).ready(function () {
   
    //Initilizing the values 
    $("#txtAdult,#txtHotelAdult,#txtNights").val(1);
    $("#txtChild,#txtHotelChild,#txtInfants").val("0");
    
   

    $("#idFlight").click(function () {
       
        $("#idFlightBooking").show();
        $("#idHotelBooking").hide();

        $("#idFlight").addClass('FlightClass');
        $("#idHotel").removeClass('HotelClass');
    });

     $("#idtable").DataTable();

    $("#idHotel").click(function () {

        $("#idHotelBooking").css("display", "block");
        $("#idHotelBooking").fadeIn("Slow");
        $("#idFlightBooking").hide();
       $("#idHotel").addClass('HotelClass');
        $("#idFlight").removeClass('FlightClass');
       

    });


    $(".iconsize").click(function () {
       
        $(".iconsize").toggleClass('glyphicon glyphicon-minus iconsize glyphicon glyphicon-plus iconsize');
    });


    $("#txtSearchFlight").click(function () {

  

      //  debugger;
        if ($("#txtFrom").val() != '' && $("#txtTo").val() != '' && $("#txtfromDate").val() != '') {
            $("#alertBox").css("display", "none");
            $("#divFlightDetails").slideDown("Slow");
            window.location = "#divFlightDetails";
            $("#divFlightDetails").css("display", "block");

            //function to get avaialble flights 
            fn_GetPlaneDetailsLoc();

            if (returnJourney == "RoundTrip")
            {
                fn_getPlaneDetails()   //function to get flight details for return trip.

                $(".return").css("display", "block");
            }
           
            //Appending data to 
            fn_AppendToCheapFlightAtPageLoad();

            setTimeout(function () {
                $("#idAlertCheapest").fadeOut("Slow");
            }, 5000);

        }
        else
        {
            $("#alertBox").effect("shake");
            $("#alertBox").css("display", "block");
            $("#divFlightDetails").css("display", "none");
        }
        return false;
    });


    $('#btnSearchHotel').click(function () {

        $("#divFlightDetails").css("display", "none");
        
        if ($("#txtHotelLocation").val() != '' && $("#txtCheckIn").val() != '' && $("#txtCheckOut").val() != '') {

            $("#alertBoxHotel").css("display", "none");
            $("#divHotelDetails").css("display", "block");
            $("#divHotelDetails").slideDown("Slow");
            window.location = "#divHotelDetails";
            fn_BindArea(); //calling function to bind data to the area drop down.
            fn_BindHoteData(); //calling function to bind table Data.
        }
        else
        {
            $("#alertBoxHotel").effect("shake");
            $("#alertBoxHotel").css("display", "block");
        }

        return false;
    });



    $("#btnBook").click(function () {
       
        var fair = $("#idFair").text().replace('$', '');
      
       
        if (returnJourney == "RoundTrip")
        {
            //fair = fair * 2;
        }
        
        var url = "BookTicket.aspx?Places=" + encodeURIComponent($("#idtravelLocations").text()) + "&Airline=" + encodeURIComponent($("#idAirlineName").text()) + "&Time=" + encodeURIComponent($("#idTimeSpan").text()) + "&TimeReturn=" + encodeURIComponent($("#idTimeSpanReturn").text()) + "&PlaneName=" + encodeURIComponent($("#idAirlineName").text()) + "&PlaneNameReturn=" + encodeURIComponent($("#idAirlineNameReturn").text()) + "&ToDate=" + encodeURIComponent($("#txtfromDate").val()) + "&ToReturnDate=" + encodeURIComponent($("#txtToDate").val()) + "&Fair=" + encodeURIComponent(fair) + "&Trip=" + encodeURIComponent(returnJourney);
            window.location.href = url;
        
       
    });


    

    $("input:checkbox[name=locationthemes]").click(function () {
        // debugger;
        var yourArray = [];
        $("input:checkbox[name=locationthemes]:checked").each(function () {
            if (yourArray.indexOf($(this).val()) == -1) {
                yourArray.push($(this).val());
                //$(this).attr("name", "ll");
            }
           // console.log(yourArray);

        });

       
        fn_getFilter("Airlines", yourArray, $("#txtFrom").val(), $("#txtTo").val());

    });
        
    //function to clear all filter options

    $("#idclear").click(function () {

        fn_getFilter("", "", $("#txtFrom").val(), $("#txtTo").val());

        //clearing all the selected filters

        $("input:checkbox[name=locationthemes]:checked").prop('checked', false);
        clearDepartmentTime();
    });
   
  

    $("#idBefore11").click(function () {

        $("#idBefore11").css("background-color", "#d9edf7");

        $("#idAfter11").css("background-color", "#fff");

        $("#idAfter9").css("background-color", "#fff");


        fn_getFilter("TimeRange11", "11:00", $("#txtFrom").val(), $("#txtTo").val());

    });

    $("#idAfter11").click(function () {

        $("#idBefore11").css("background-color", "#fff");

        $("#idAfter11").css("background-color", "#d9edf7");

        $("#idAfter9").css("background-color", "#fff");


        fn_getFilter("TimeRangeAfter11", "11:00,18:00", $("#txtFrom").val(), $("#txtTo").val());
    });

    $("#idAfter9").click(function () {

        $("#idBefore11").css("background-color", "#fff");

        $("#idAfter11").css("background-color", "#fff");

        $("#idAfter9").css("background-color", "#d9edf7");

        fn_getFilter("TimeRangeAfter6", "18:00", $("#txtFrom").val(), $("#txtTo").val());
    });


    $("#idPlaneDetails").click(function (e) {
       
        var a = e.target.id;

        var b = a.substr(a.length - 1);

        $(".idtravelLocations").text($(('#DeparturePlace') + (b)).text() + " - " + $(('#ArrivalPlace') + (b)).text());
        $(".idAirlineName").text($(('#Airline') + (b)).text());
        $(".idTimeSpan").text($(('#DepartureTime') + (b)).text() + "-" + $(('#ArrivalTime') + (b)).text());
        $(".idHours").text($(('#Duration') + (b)).text() + "| 0 Stop");
        $(".idDate").text($("#txtfromDate").val())
        $("#idFair").text("$" + parseInt($(('#Price') + (b)).text()) * parseInt($("#txtAdult").val()));
    });

    $("#RoundTrip").click(function () {

        $("#idReturn").css("display", "block")

        returnJourney = "RoundTrip";
    });

    $("#OneWayTrip").click(function () {
        $("#idReturn").css("display", "none")
        returnJourney = "OneWayTrip";
    });


    $('#ddlHotelArea').change(function () {

       
        var selectedArea = $("#ddlHotelArea option:selected").text();

        fn_BindAccordingToArea(selectedArea);
    });
   

    //$("#tblHotelDetails").find('tr').click(function () {
    //    $("#HotelFairDetails").fadeOut();
    //    $("#HotelFairDetails").slideDown();
    //    $("#HotelFairDetails").css("display", "block");

    //    console.log($(this).find('td:first').text());
    //});

    
   

    $('#tblHotelDetails').on('click', 'tr', function () {

           $("#HotelFairDetails").fadeOut();
            $("#HotelFairDetails").slideDown();
            $("#HotelFairDetails").css("display", "block");

            var HotelName = $(this).find("td:eq(0)").text();
            var HotelLocation = $(this).find("td:eq(1)").text();
            var Type = $(this).find("td:eq(2)").text();
            var UserRating = $(this).find("td:eq(3)").text();
            var Price = $(this).find("td:eq(4)").text();

            $("#idFairHoel").text("$" + Price);
            $("#HotelName").text(HotelName);
            $('#idLocationHotel').text(HotelLocation + " | " + $("#txtHotelLocation").val());
            $("#idCheckin").text($("#txtCheckIn").val());
            $("#idCheckout").text($("#txtCheckOut").val());
            $("#idDays").text($("#txtNights").val());
    });
});


</script>

        </form>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css"/>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script> 

</body>
    
</html>