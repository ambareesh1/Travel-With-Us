<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookTicket.aspx.cs" enableEventValidation="false"  Inherits="AirBus.BookTicket" %>

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
         .checkbox input[type=checkbox]
         {
             height:20px;
             width:20px;
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

  .marginR10 {
    margin-right: 10px;
}

.bkStepNum {
    background: rgba(0,0,0,.25);
    border-radius: 20px;
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    padding: 7px 13px;
    font-size: 18px;
    color: #333;
    line-height: 1;
    font-weight: bold;
    color: rgba(0,0,0,.5);
}

 .bkStepHdr {
    
    font-size:18px;
    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

 body{

     background-color:#f5f5f5;
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
                <a href="#top" onclick=$("#menu-close").click();>Start Bootstrap</a>
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

        <%--<asp:Button ID="btnclick" runat="server" OnClick="btnclick_Click"/>--%>
    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
           <h1>Travel With Us</h1>
            <h3>Make Your Trip Happy &amp; Fun</h3>
            <div style="padding:10px;float:left;color:tomato;background-color:#fff;margin-top:-3%;box-shadow:2px 2px 2px #888888">
               <a href="Index.aspx"> <i class="fa fa-arrow-left fa-2x" aria-hidden="true"></i> </a>
            </div>
            <br/>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>

        </div>
    </header>
  
      <div style="margin:0 auto;width:90%;margin-bottom:2%;position: relative;margin-top: -50px;box-shadow:2px 2px 2px 2px #888888">
        
          <div style="background-color:steelblue;margin-bottom:1%" class="col-lg-12">
             <div id="idFlight" class="col-lg-4" style="padding:10px;padding-left:0px;text-align:center;border-right:1px solid #fff">
                <i class="fa fa-plane fa-2x " aria-hidden="true"></i> 
                  <a style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:16px;font-weight:600;text-decoration: none;color:#F0F0F0;padding-left:10px;">
                      Booking the ticket... </a> 

             </div> 
             
              <div id="idHotel" class="col-lg-4" style="padding:10px;text-align:center;border-right:1px solid #fff"> 
              <i class="fa fa-bed fa-2x" aria-hidden="true"></i> 
                       <a style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:16px;font-weight:600;text-decoration: none;color:#fff;padding-left:10px;">
                       Near by Hotels.. </a> 
                  </div>
               <div id="idPlaces" class="col-lg-4" style="padding:10px;text-align:center"> 
              <i class="fa fa-map-marker fa-2x" aria-hidden="true"></i> 
                       <a style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:16px;font-weight:600;text-decoration: none;color:#fff;padding-left:10px;">
                       Most Visited Places...</a> 
                  </div>
                
          </div>
</div>
       
        
          <div id="idFlightBooking" style="width:90%;height:1000px;box-shadow:2px 2px 2px 2px #888888;margin:0 auto;background-color:#fff;">
        
          <div class="col-lg-10">
          <div class="alert alert-info">
              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Info! </strong>  Register  your details and get <strong>$ 20 </strong>off in ticket fair.
          </div>
          </div>

          <div class="col-md-12 col-sm-12 col-md-12 padB15" style="margin-top: 1%">
              <span class="bkStepNum marginR10">1</span>
              <span class="bkStepHdr">Review your booking</span>
          </div>

          <div class="col-lg-12" style="margin-top:2%">
              <div class="col-lg-1"></div>
          <div class="col-lg-3" >
              <div class="panel-group">
                  <div class="panel panel-info">
                      <div class="panel-heading"><i class="fa fa-dot-circle-o" aria-hidden="true" style="color:#4CAF50"></i><span class="From" style="font-weight: bold;padding-left: 5%;"></span> </div>
                      <div class="panel-body">
                          <p><i class="fa fa-paper-plane" aria-hidden="true"></i> Airport : <span class="idformAirport"> Kempengouda International Airport</span></p>
                          <p><i class="fa fa-clock-o fa-1x iconclass"></i><span id="Time"></span></p>
                          <p><i class="fa fa-calendar fa-1x iconclass"></i><span id="Date"></span></p>
                      </div>
                  </div>
              </div>

          </div>

              <div class="col-lg-1" style="margin-top:6%">
                  <span style="font-weight:bold;color:tomato;font-size:20px"> . . . . . </span>
              </div>
              <div class="col-lg-1" style="margin-top:5%">
                  
                     <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x" style="color:gainsboro"></i>
                                <i class="fa fa-plane fa-stack-1x text-primary"></i>
                            </span>               
                 <h4 id="PlaneName" style="text-align: center;color: #8a6d3b;"></h4>
              </div>
                  
              <div class="col-lg-1" style="margin-top:6%">
                  <span style="font-weight:bold;color:#8BC34A;font-size:20px"> . . . . . </span>
              </div>

              <div class="col-lg-3" >
              <div class="panel-group">
                  <div class="panel panel-info" style="border-color:#f2dede">
                      <div class="panel-heading" style="background-color:#f2dede;"><i class="fa fa-dot-circle-o" aria-hidden="true" style="color:tomato"></i> <span class="To" style="font-weight: bold;padding-left: 5%;"></span></div>
                      <div class="panel-body">
                          <p><i class="fa fa-paper-plane" aria-hidden="true"></i> Airport : <span class="idToAirport">Shathavahana International Airport</span></p>
                          <p><i class="fa fa-clock-o fa-1x iconclass"></i><span id="toTime"></span></p>
                          <p><i class="fa fa-calendar fa-1x iconclass"></i><span id="toDate"></span></p>
                      </div>
                  </div>
              </div>

          </div>

              </div>

               <div id="RoundTrip" class="col-lg-12" style="margin-top:2%;display:none">
              <div class="col-lg-1"></div>

              <div class="col-lg-3" >
              <div class="panel-group">
                  <div class="panel panel-info" style="border-color:#f2dede">
                      <div class="panel-heading" style="background-color:#f2dede;"><i class="fa fa-dot-circle-o" aria-hidden="true" style="color:tomato"></i> <span class="To" style="font-weight: bold;padding-left: 5%;"></span></div>
                      <div class="panel-body">
                          <p><i class="fa fa-paper-plane" aria-hidden="true"></i> Airport : <span class="idToAirport">Shathavahana International Airport</span></p>
                          <p><i class="fa fa-clock-o fa-1x iconclass"></i><span id="toTimeReturn"></span></p>
                          <p><i class="fa fa-calendar fa-1x iconclass"></i><span id="toDateReturn"></span></p>
                      </div>
                  </div>
              </div>

          </div>

         

              <div class="col-lg-1" style="margin-top:6%">
                  <span style="font-weight:bold;color:#8BC34A;font-size:20px"> . . . . . </span>
              </div>
              <div class="col-lg-1" style="margin-top:5%">
                  
                     <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x" style="color:gainsboro"></i>
                                <i class="fa fa-plane fa-stack-1x text-primary"></i>
                            </span>               
                 <h4 id="PlaneNameReturn" style="text-align: center;color: #8a6d3b;"></h4>
              </div>
                  
              <div class="col-lg-1" style="margin-top:6%">
                  <span style="font-weight:bold;color:tomato;font-size:20px"> . . . . . </span>
              </div>

                    <div class="col-lg-3" >
              <div class="panel-group">
                  <div class="panel panel-info">
                      <div class="panel-heading"><i class="fa fa-dot-circle-o" aria-hidden="true" style="color:#4CAF50"></i><span class="From" style="font-weight: bold;padding-left: 5%;"></span> </div>
                      <div class="panel-body">
                          <p><i class="fa fa-paper-plane" aria-hidden="true"></i> Airport : <span class="idfromAirport"> Kempengouda International Airport</span></p>
                          <p><i class="fa fa-clock-o fa-1x iconclass"></i><span id="TimeReturn"></span></p>
                          <p><i class="fa fa-calendar fa-1x iconclass"></i><span id="DateReturn"></span></p>
                      </div>
                  </div>
              </div>

          </div>
              </div>

          <div class="col-lg-12">

              <div class="col-lg-6">
                  <h4><i class="fa fa-gift" aria-hidden="true"></i>Offers <span style="font-size:14px"> (Choose any one)</span>  </h4> 
                  <ul class="list-group">
                      <li class="list-group-item">
                        Available Offers <div id="idClearOffer"  style="float:right;cursor:pointer;display:none" data-toggle="modal" data-target="#myRemoveOffer" > <span style="font-size:20px;color:#F44336;" class="glyphicon glyphicon-remove-circle"></span>  </div>  
                      </li>
                      <li class="list-group-item">
                          <input id="Offer1" data-toggle="modal" data-target="#myOffer" type="radio" name="optradio" /> Free shopping worth <span class="label badge label-success">$ 20 </span>
                      </li>
                      <li class="list-group-item">
                          <input id="Offer2" data-toggle="modal" data-target="#myTravelOffer" type="radio" name="optradio" /> Get Travel worth <span class="label badge label-info">$ 50 </span>
                      </li>
                      <li class="list-group-item">
                          <input id="Offer3" data-toggle="modal" data-target="#myPromocode" type="radio" name="optradio" /> I have a promo code  <span id="PromoText" style="text-transform:uppercase" class="label badge label-info"></span>
                      </li>
                  </ul>

              </div>
              <div class="col-lg-1"></div>
               <div class="col-lg-3" style="margin-top:3%" >
              <div class="panel-group">
                  <div class="panel panel-info">
                      <div class="panel-heading"><i class="fa fa-money fa-2x" aria-hidden="true" style="color:#4CAF50;float:right"></i><span style="font-size:16px;text-align:center">Grand Total  </span> </div>
                      <div class="panel-body">
                          <span id="OfferLabel" style="background-color:#8BC34A;font-size:80%;display:none" class="label">Offer Applied</span>
                          <h2 id="idTotalFair" style="text-align:center;color:#999;font-weight:bold"></h2>
                      </div>
                  </div>
              </div>
                  

          </div>

               
          </div>
          <div class="col-md-12 col-lg-12 col-sm-12 col-md-12" style="margin-top: 1%">
              <span class="bkStepNum marginR10">2</span>
              <span class="bkStepHdr">Travaller Details</span>

              <div class="alert alert-warning" style="margin-top: 2%">
                  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                  <span class="label label-success">Important !</span> Please enter names as mentioned on your government ID proof
              </div>

          </div>
              <form data-toggle="validator" role="form">
                  <div class="col-lg-12">
                      <div class="col-lg-3">


                          <div class="form-group">
                              <label for="txtFirstName" class="control-label">First Name:</label>
                              <asp:TextBox runat="server"   cssclass="form-control" id="txtFirstName" required></asp:TextBox>
                          </div>


                      </div>

                      <div class="col-lg-3">


                          <div class="form-group">
                              <label for="txtMiddleName" >Middle Name:</label>
                             
                              <asp:TextBox runat="server"   cssclass="form-control" id="txtMiddleName" required></asp:TextBox>
                          </div>


                      </div>

                      <div class="col-lg-3">


                          <div class="form-group" >
                              <label for="txtLastName" class="control-label">Last Name:</label>
                             
                              <asp:TextBox runat="server"   cssclass="form-control" id="txtLastName" required></asp:TextBox>
                          </div>


                      </div>

                      <div class="col-lg-3">
                      </div>
                      <div class="col-lg-3">

                          <div class="form-group">
                              <label for="txtDOB" class="control-label">Date of Birth:</label>
                              
                              <asp:TextBox runat="server"   cssclass="form-control" id="txtDOB" required></asp:TextBox>
                          </div>

                      </div>

                      <div class="col-lg-3">
                          <div class="form-group">
                              <label for="txtEmail" class="control-label">Email</label>
                              <asp:TextBox runat="server" TextMode="email" CssClass="form-control" ID="txtEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required></asp:TextBox>
                              <div class="help-block with-errors"></div>
                          </div>
                      </div>
                      <div class="col-lg-3">
                          <div class="form-group">
                              <label for="txtPhone" class="control-label">Phone:</label>
                              
                              <asp:TextBox runat="server" ID="txtPhone" class="form-control" required></asp:TextBox>
                              <div class="help-block with-errors"></div>
                          </div>
                      </div>
                      <asp:UpdatePanel runat="server" ID="UpdatePanel">
                          
                          <ContentTemplate>
                              <div class="col-lg-3" style="margin-top: 2%">

                                  <div class="form-group">
                                      <asp:Button runat="server" ID="btnSubmitDetails" OnClick="btnSubmitDetails_Click" class="btn btn-warning" Text="Submit"   />

                                  </div>
                              </div>
                          </ContentTemplate>
                      </asp:UpdatePanel>
                     
                      <div class="col-lg-9">

                          <div class="alert alert-info">
                              <strong>Info!</strong> Ticket details  are sent to enter email .
                          </div>

                      </div>

                  </div>
              </form>

         </div>
      
        
       <!---HOtels--->
         <div  id="idHotelBooking" style="display:none;width:90%;height:1300px;margin:0 auto;margin-top:5%;background-color:#fff;margin-top: -50px;box-shadow:2px 2px 2px 2px #888888">
             <div class="col-lg-12">
            <div class="row" style="margin-top:1%;border-right:5px solid green ;padding:5px">
                <div class="col-lg-4">
                    <img src="img/h1.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                </div>
                <div class="col-lg-3">
                    <h4>The Chancery Pavilion</h4>
                    <p> <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</p>
                    <p> <i class="fa fa-cutlery" aria-hidden="true"></i> Include Breakfast</p>
                    <p><i class="fa fa-shield" aria-hidden="true"></i> Room Service</p>
                </div>
                <div class="col-lg-2" style="text-align:center">
                    <h4>Rating </h4>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="col-lg-2" style="color:tomato">
                    <h3> $ 200 </h3>
                </div>
                <div class="col-lg-1" style="display:table-cell">
                               
                      <a data-toggle="collapse" data-target="#demo">   <i class="fa fa-plus-circle fa-2x" aria-hidden="true" style="color:tomato;margin-top:20%"></i>  </a>
                     <i class="fa fa-taxi fa-2x" aria-hidden="true" style="color:rgba(0,0,0,.25);margin-top:20%"></i>
                         </div>


                <div  class="col-lg-12" id="showthePrice" style="display:none">

                    <div style="float:right">
                        <ul class="list-inline" style="">
                            <li style="background-color:#7AD5C9;padding:5px;font-size:20px;box-shadow:2px 2px 2px #888888">
                               
                                   <span> <i class="fa fa-plane fa-1x " aria-hidden="true"> </i></span>  <strong> $ 400 </strong>
                               

                            </li>
                            <li>
                                +
                            </li>
                            <li style="background-color:#A1D959;padding:5px;font-size:20px;box-shadow:2px 2px 2px #888888"> 
                                    <i class="fa fa-hotel fa-1x " aria-hidden="true"></i> <strong> $ 200 </strong>
                               

                            </li>
                            <li class="plus" style="display:none">
                                +
                            </li>
                            <li class="plus" id="idcarbackgroundColor" style="background-color:rgb(101, 177, 228);padding:5px;font-size:20px;box-shadow:2px 2px 2px #888888;display:none"> 
                               
                                   <span> <i class="fa fa-cab fa-1x " aria-hidden="true"></i> </span> <span id="idcarcolor"><strong> $ 50 </strong></span> 
                                

                            </li>
                            <li>
                                = 
                            </li>
                            <li id="GrandTotalAmount" style="background-color:#2C3454;color:#eee;padding:5px;font-size:20px;font-weight:bold;display:none">
                                $<span id="textGrandTotalAmount">600</span>
                            </li>

                            <li>
                                <button id="btnBook" type="button" class="btn btn-danger" data-dismiss="modal">Book </button>
                            </li>
                        </ul>

                        
                    </div>
                    <asp:HiddenField ID ="hfFrom" runat="server" />
                    <asp:HiddenField ID ="hfTo" runat="server" />
                    <asp:HiddenField ID ="hfDate" runat="server" />
                    <asp:HiddenField ID ="hfAirline" runat="server" />
                    <asp:HiddenField ID ="hfTime" runat="server" />

                     <asp:HiddenField ID ="hfFromReturn" runat="server" />
                    <asp:HiddenField ID ="hfToReturn" runat="server" />
                    <asp:HiddenField ID ="hfDateReturn" runat="server" />
                    <asp:HiddenField ID ="hfAirlineReturn" runat="server" />
                    <asp:HiddenField ID ="hfTimeReturn" runat="server" />

                    <asp:HiddenField ID="hfFair" runat="server" />
                </div>

                         <div id="demo" class="col-lg-10 collapse" style="padding-top:3%;margin-left:5%;text-align:left">
                            
                             <div class="col-lg-6">
                                  <h4>Book cab from Airport to Hotel</h4>

                                 <div style="margin-top:8%">
                                
                                 <i class="fa fa-plane fa-2x " aria-hidden="true"></i> <span style="text-align:center;line-height:5px"> - - - - - - - - - <i class="fa fa-taxi fa-2x" aria-hidden="true" style="color:#FF9800"></i> - - - - - - - - - - </span> <i class="fa fa-hotel fa-2x " aria-hidden="true"></i>
                                     <div style="margin-top:5%">
                                       <p> <span style="width:10px;border-radius:20px;height:10px;background-color:#FF9800;display:inline-block" class="iconclass"></span> 
                                             Book a cab and get 10 % discount.
                                         </p>
                                         <p> <span style="width:10px;border-radius:20px;height:10px;background-color:#FF9800;display:inline-block" class="iconclass"></span> 
                                             Cab have facilities A.C, Wifi.
                                         </p>
                                         <p> <span style="width:10px;border-radius:20px;height:10px;background-color:#FF9800;display:inline-block" class="iconclass"></span> 
                                             Laugugage can be taken care by driver.
                                         </p>
                                    </div>
                                    <input id="chkText" type="checkbox" name="locationthemes" value="Indigo"> <span>I want a Cab </span> <span style="color:#795548;padding-left:30px;"> Km from Airport : 15 KM </span>   <span id="idtaxiCharge" style="padding-left: 50px; font-size: 18px; font-weight: bold; color: #FF9800;">$50</span>
                                     
                                </div>
                             </div>
                            <div class="col-lg-6">
                                
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
                         </div>
            </div>
                 <hr />
                  <div class="row" style="margin-top:1%;border-right:5px solid green ;padding:5px">
                <div class="col-lg-4">
                    <img src="img/h4.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                </div>
                <div class="col-lg-4">
                    <h4>The Chancery Pavilion</h4>
                    <p> <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</p>
                    <p> <i class="fa fa-cutlery" aria-hidden="true"></i> Include Breakfast</p>
                    <p><i class="fa fa-shield" aria-hidden="true"></i> Room Service</p>
                </div>
                <div class="col-lg-2" style="text-align:center">
                    <h4>Rating </h4>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="col-lg-2" style="color:tomato">
                    <h3> $ 200 </h3>
                </div>
            </div>
                 <hr />
                  <div class="row" style="margin-top:1%;border-right:5px solid green ;padding:5px">
                <div class="col-lg-4">
                    <img src="img/h2.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                </div>
                <div class="col-lg-4">
                    <h4>The Chancery Pavilion</h4>
                    <p> <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</p>
                    <p> <i class="fa fa-cutlery" aria-hidden="true"></i> Include Breakfast</p>
                    <p><i class="fa fa-shield" aria-hidden="true"></i> Room Service</p>
                </div>
                <div class="col-lg-2" style="text-align:center">
                    <h4>Rating </h4>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="col-lg-2" style="color:tomato">
                    <h3> $ 200 </h3>
                </div>
            </div>
                 <hr />
                  <div class="row" style="margin-top:1%;border-right:5px solid green ;padding:5px">
                <div class="col-lg-4">
                    <img src="img/h3.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                </div>
                <div class="col-lg-4">
                    <h4>The Chancery Pavilion</h4>
                    <p> <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</p>
                    <p> <i class="fa fa-cutlery" aria-hidden="true"></i> Include Breakfast</p>
                    <p><i class="fa fa-shield" aria-hidden="true"></i> Room Service</p>
                </div>
                <div class="col-lg-2" style="text-align:center">
                    <h4>Rating </h4>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="col-lg-2" style="color:tomato">
                    <h3> $ 200 </h3>
                </div>
            </div>
                 <hr />
                  <div class="row" style="margin-top:1%;border-right:5px solid green ;padding:5px">
                <div class="col-lg-4">
                    <img src="img/h4.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                </div>
                <div class="col-lg-4">
                    <h4>The Chancery Pavilion</h4>
                    <p> <i class="fa fa-wifi" aria-hidden="true"></i> Wifi</p>
                    <p> <i class="fa fa-cutlery" aria-hidden="true"></i> Include Breakfast</p>
                    <p><i class="fa fa-shield" aria-hidden="true"></i> Room Service</p>
                </div>
                <div class="col-lg-2" style="text-align:center">
                    <h4>Rating </h4>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true" style="color:#8BC34A"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                    <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="col-lg-2" style="color:tomato">
                    <h3> $ 200 </h3>
                </div>
            </div>

        </div>
             </div>


        <div id="idTravel" style="display:none;width:90%;height:auto;margin:0 auto;margin-top:5%;background-color:#fff;margin-top: -50px;box-shadow:2px 2px 2px 2px #888888">

            <div class="row">
                <div class="col-lg-12">
                    <div class="col-lg-4">
                        <img src="img/t1.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div id="img1" class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t2.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t3.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t4.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t5.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t6.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t7.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t8.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                     <div class="col-lg-4">
                        <img src="img/t3.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
                        <div class="col-lg-8">
                            <p style="padding:5px;font-size:16px;text-align:center">Adventure Camp at BR Hills</p>  
                        </div>
                       <div class="col-lg-1" style="margin-top:2%">
                           <i class="fa fa-plus-circle fa-1x" aria-hidden="true" style="color:tomato"></i>
                       </div>
                    </div>
                </div>
            </div>
        </div>

      

       
        <section id="contact">

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
        <div class="modal-header" style="background-color:#fff;border-color:#fff">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color:rgba(0,0,0,.5)">Adventure Camp at BR Hills</h4>
        </div>
        <div class="modal-body">
            <div class="row">
         <div class="col-lg-6" style="border-right:3px solid #FE7545">
              <img src="img/t1.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
         </div>
            <div class="col-lg-6">
                <p>Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   Contrary to popular belief, Lorem Ipsum is not simply random text.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.   </p>

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
       
      </div>

                   
</div>

   </div>
  
          <!-- Modal -->
  <div class="modal fade" id="myOffer" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header" style="background-color:#8BC34A">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Free shopping worth</h4>
        </div>
        <div class="modal-body">
          
            <p>You will get voucher worth <strong>$ 20 </strong> on your registered email id immediately after this transaction is complete
              Each customer can avail benefit only once during the tenure of the offer period </p>
       <p>* other terms and conditions applicable </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="myTravelOffer" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header" style="background-color:#f2dede">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Free Travelling worth</h4>
        </div>
        <div class="modal-body">
          
            <p>You will get voucher worth <strong>$ 50 </strong>  on your registered email id immediately after this transaction is complete
              Each customer can avail benefit only once during the tenure of the offer period </p>
            <p> $50 dollars cash back into your Make my Travel Account</p>

       <p>* other terms and conditions applicable </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


<div class="modal fade" id="myRemoveOffer" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header" style="background-color:tomato">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Alert !!</h4>
        </div>
        <div class="modal-body">
          
              <h4> <span style="font-size:20px;color:#F44336;" class="glyphicon glyphicon-trash"></span>The offer removed from the fare .</h4>

       
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


<div class="modal fade" id="myPromocode" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header" style="background-color:#CDDC39">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enter the Promo Code</h4>
        </div>
        <div class="modal-body">
          
            <input id="PromoCodeInput" type="text" class="form-control" maxlength="6" style="color: #a94442; font-weight: bold; font-size: 20px; text-align: center; text-transform: uppercase" /> <span style="color:tomato">*</span>

       
        </div>
        <div class="modal-footer">
          <button id="idPromocodeSubmit" type="submit" class="btn btn-default">Submit</button>
        </div>
      </div>
    </div>
  </div>


         <div class="modal fade" id="myModalHotelBook" role="dialog" runat="server">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div id="modelheader" class="modal-header" style="background-color:#fff;border-color:#fff">
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 id="modelheadertext" class="modal-title" style="color:#777">Book Hotel & Cab @ Cheap Rates</h4>
        </div>
        <div class="modal-body">
            <div id="HotelCab" class="row">
         <div class="col-lg-3" style="border-right:3px solid #fff;background-color:#7AD5C9;box-shadow:2px 2px 2px #888888">
             <div style="text-align:center;"><i class="fa fa-bed fa-5x" aria-hidden="true"></i></div>
         </div>
            <div class="col-lg-6" style="text-align:center" runat="server">
                <h4>Do you want to book <strong> Hotel </strong>  & <strong> Cab </strong>along with flight ticket ?</h4>
                <asp:Button runat="server" ID="btnGotoHotel"  class="btn btn-warning" Text="Yes" data-dismiss="modal"></asp:Button>  
                <asp:Button runat="server" id="btnDontGotoHotel"  class="btn btn-default" Text="No" OnClick="btnDontGotoHotel_Click1"></asp:Button>

            </div>

             
             <div class="col-lg-3" style="border-left:3px solid #fff;background-color:rgba(255, 99, 71, 0.33);box-shadow:1px 2px 4px #888888">
             <div style="text-align:center;"><i class="fa fa-cab fa-5x" aria-hidden="true"></i></div>
         </div>

                

         </div>

            <div id="Booking" style="background-color:#dff0d8;padding:10px;font-size:23px;text-align:center;border-radius:5px;display:none" class="col-lg-12;">
                  <p><span> <i class="fa fa-check-circle fa-2x"  aria-hidden="true" style="color:#22BAA0"></i> Thank You for Booking ticket in Travel with Us !!</span></p> 
                </div>

                </div>
        </div>
        <%--<div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>--%>
      </div>
        </div>
        
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

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

        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function () {
    $("#txtfromDate").datepicker();
    $("#txtToDate").datepicker();
});
$(function () {
    fn_searchFromName();
    fn_searchToName();
});

$(function () {
    $("#slider-range").slider({
        range: true,
        min: 0,
        max: 10000,
        values: [0, 10000],
        slide: function (event, ui) {
            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
        }
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
      " - $" + $("#slider-range").slider("values", 1));
});


function fn_searchFromName() {
   // debugger;
    $(".autosuggest").autocomplete({
       
        source: function (request, response) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetAutoCompleteData",
                data: "{'username':'" + document.getElementById('txtFrom').value + "'}",
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

function fn_searchToName() {
   // debugger;
    $(".autosuggest").autocomplete({

        source: function (request, response) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "Index.aspx/GetAutoCompleteData",
                data: "{'username':'" + document.getElementById('txtTo').value + "'}",
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

    //function to get Airport Names 

function fn_getAirPortNames(from , to)
{
    
    //debugger;
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "BookTicket.aspx/getAirportNames",
                data: '{"from": "' + from + '","to": "' + to + '"}',
                dataType: "json",
                success: function (data) {
                    debugger;
                    if(from == "Bengaluru")
                    {
                        $(".idfromAirport").text(data.d[0].AirlineName);
                      
                    }

                   // $(".idToAirport").text(data.d[1].AirlineName);

                },
                error: function (result) {
                    alert("Error");
                }
            });
         
}


$(document).ready(function () {
    debugger;

    //fn_getAirPortNames("Bengaluru ", "Bengaluru");
   
    fn_QueryString();

    $("#idFlightBooking").fadeIn("Slow");

    $("#idFlight").click(function () {
       
        $("#idFlightBooking").css("display", "block");
        $("#idHotelBooking").css("display", "none");

        $("#idFlight").addClass('FlightClass');
        $("#idHotel").removeClass('HotelClass');
        $("#idTravel").hide();
        $("header").css('background', 'url(img/bg.jpg)  no-repeat right  center scroll')
    });


    $("#idHotel").click(function () {

        $("#idHotelBooking").css("display", "block");
        $("#idHotelBooking").fadeIn("Slow");
        $("#idFlightBooking").css("display", "none");
       $("#idHotel").addClass('HotelClass');
        $("#idFlight").removeClass('FlightClass');
        $("header").css('background', 'url(img/hotel.jpg)  no-repeat right  center scroll')
      
        $("#idTravel").hide();
    });

    $("#idPlaces").click(function () {

       
        $("#idTravel").css("display", "block");
        
        $("#idFlightBooking").hide();
        $("#idHotelBooking").hide()
        $("#idPlaces").addClass('FlightClass');

        $("header").css('background', 'url(img/travel.jpg)  no-repeat right  center scroll')
    });


    $(".iconsize").click(function () {
       
        $(".iconsize").toggleClass("glyphicon glyphicon-minus iconsize glyphicon glyphicon-plus iconsize");
    });


    $("#img1").click(function () {
        $('#myModal').modal('show');
    });

   
    $("#chkText").click(function () {
       
        if ($(this).is(':checked')) {
            
            $(".plus").fadeIn("Slow");
            $(".plus").css("display", "inline-block");
           
            $("#GrandTotalAmount").fadeIn("Slow");
            var a = $("#textGrandTotalAmount").text();
            var b = parseInt(a) + 50;
            $("#textGrandTotalAmount").text(b);
        }
        else {
            $(".plus").fadeOut("Slow");
            $(".plus").css("display", "none");
            $("#GrandTotalAmount").fadeIn("Slow");
            var a = $("#textGrandTotalAmount").text();
            var b = parseInt(a) - 50;
            $("#textGrandTotalAmount").text(b);

        }

    });

    $("#txtSearchFlight").click(function () {
       
        $("#divFlightDetails").slideDown("Slow");
        window.location = "#divFlightDetails";
        $("#divFlightDetails").css("display", "block");
       

        return false;
    });

    $("#Offer1").click(function ()
    {
        $("#idClearOffer").css("display", "block")
        $("#OfferLabel").css("display", "inline-block");
        $("#OfferLabel").text("Offer Applied");
        $("#idClearOffer").fadeIn("Slow");
        $("#PromoText").text("");
       
        var t1 = parseInt(queryString["Fair"]) - 20;
        $("#idTotalFair").text("$" +t1);

    });

    $("#Offer2").click(function () {
        $("#idClearOffer").css("display", "block")
        $("#OfferLabel").css("display", "inline-block");
        $("#idClearOffer").fadeIn("Slow");
        $("#OfferLabel").text("Offer Applied");
        $("#PromoText").text("");
        var t1 = parseInt(queryString["Fair"]) - 50;
        $("#idTotalFair").text("$" + t1);

    });

    $("#Offer3").click(function () {
        $("#idClearOffer").css("display", "block")
        $("#idTotalFair").text("$" + queryString["Fair"]);
        $("#PromoCodeInput").val('');
    });

    $("#idClearOffer").click(function () {

        $("#idClearOffer").fadeOut("Slow");
        $('input[type="radio"]').prop('checked', false)
        $("#idTotalFair").text("$"+queryString["Fair"]);
        $("#OfferLabel").css("display", "none");
        $("#PromoText").text("");
    });


    $("#idPromocodeSubmit").click(function () {
        if ($("#PromoCodeInput").val() != '') {
            $("#OfferLabel").css("display", "inline-block");
            $("#OfferLabel").text("Promo Code Applied");
            $("#PromoText").text($("#PromoCodeInput").val());
           // $('#myPromocode').modal('hide');
            //$("#myPromocode .close").modal().hide();

            $("#idPromocodeSubmit").attr("data-dismiss", "modal");
        }
    });


    //Event to submit user details

    //$("#btnSubmitDetails").click(function () {

        
    //    if($("#txtFirstName").val()!='' && $("#txtLastName").val()!='' && $("#txtDOB").val()!='' &&    $("#txtEmail").val()!='' && $("#txtPhone").val()!='')
    //    {
           
    //        $('#myModalHotelBook').modal('show');
    //    }
    //    return false;
    //});

    $("#btnGotoHotel").click(function()
    {
        $("#idHotel").click();
        $("#showthePrice").fadeIn("Slow");
        $("#showthePrice").css("display", "block");
        window.location = "#idHotelBooking";
    })

    //$("#btnDontGotoHotel").click(function () {

    //    $("#Booking").fadeIn();
    //    $("#HotelCab").fadeOut();
    //    $("#modelheadertext").text("Congratulations !!");
    //    $("#modelheader").css("background-color", "#7AD5C9");
    //});

});

    // Query string retrive

var queryString = new Array();
function fn_QueryString () {
    debugger;
    if (queryString.length == 0) {
        if (window.location.search.split('?').length > 1) {
            var params = window.location.search.split('?')[1].split('&');
            for (var i = 0; i < params.length; i++) {
                var key = params[i].split('=')[0];
                var value = decodeURIComponent(params[i].split('=')[1]);
                queryString[key] = value;
            }
        }
    }
   
       
        //data += "<b>Places:</b> " + queryString["Places"] + " <b>Technology:</b> " + queryString["Airline"];
        //$("#lblData").html(data);
       // alert(data);
        var str = queryString["Places"].split('-');
        var str1 = str[0]; $("#hfFrom").val(str1);
        var str2 = str[1]; $("#hfTo").val(str2);
        //debugger;
        fn_getAirPortNames(str1,str2);
       // alert(str1, str1);
        $(".From").text(str1);
     
        var strTime = queryString["Time"].split('-');
        
        var strTimeFrom = strTime[0]; 
        var strTimeTo = strTime[1]; 
        $("#Time").text(strTimeFrom); $("#hfTime").val(strTimeFrom);
        $("#Date").text(queryString["ToDate"]); $("#hfDate").val(queryString["ToDate"]);

        $(".To").text(str2);
        $("#toTime").text(strTimeTo);
        $("#toDate").text(queryString["ToDate"]);

        $("#idTotalFair").text("$" + queryString["Fair"]); $("#hfFair").val(queryString["ToDate"]);
        $("#PlaneName").text(queryString["PlaneName"]); $("#hfAirline").val(queryString["PlaneName"]);
        
        var trip = queryString["Trip"];
        if (trip == "RoundTrip") {
            roundTrip = "RroundTrip";
          //  debugger;
            $("#RoundTrip").css("display", "block")

            $('#idFlightBooking').css("height", "1200px");

            var strTime = queryString["TimeReturn"].split('-');

            var strTimeFrom = strTime[0];
            var strTimeTo = strTime[1];
            $("#TimeReturn").text(strTimeFrom);
            $("#DateReturn").text(queryString["ToReturnDate"]);

            $(".To").text(str2);
            $("#toTimeReturn").text(strTimeTo);
            $("#toDateReturn").text(queryString["ToReturnDate"]);

            
            $("#PlaneNameReturn").text(queryString["PlaneNameReturn"]);

        }
        var a = $("#hfFrom").val();
        console.log(a);
}


function popGenarateTicket()
{
    $('#myModalHotelBook').modal('show');

    return false;
}


</script>

        </form>
</body>
    
</html>