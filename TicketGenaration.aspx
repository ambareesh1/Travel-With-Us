<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="TicketGenaration.aspx.cs" Inherits="AirBus.TicketGenaration" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css"/>

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>

</head>
<body style="background-color:#f5f5f5">
    <div style="padding:10px;background-color:#384B6A;text-decoration:none;border-right:5px solid #7AD5C9;width:10%;float:left;margin:1%;color:#fff">
        <a style="color:#fff" href="Index.aspx">Travel With Us</a>
    </div>
    <div style="margin-left:20%;margin-top:1%;margin-bottom:1%;border-left:3px solid #A1D959">
       <div id="Booking" style="background-color: rgb(223, 240, 216); padding: 10px; font-size: 18px; text-align: left; border-radius: 5px;font-family:sans-serif">
                  <p><span> <i class="fa fa-check-circle fa-2x" aria-hidden="true" style="color:#384B6A"></i> Thank You for Booking ticket in Travel with Us.</span></p> 
                </div>
    </div>

    <div style="margin: 0 20%;padding: 10px;background-color: #d9edf7;border: 10px solid #d9edf7;font-family: &quot; helvetica neue&quot; , helvetica, arial, sans-serif;font-weight: bold;color: #2C3454;box-shadow: 8px 10px 20px 0 rgba(46,61,73,0.15);">
            Travel With Us  <div style="float:right;margin-top:-4%;color:rgba(0,0,0,.5);font-weight:normal">
                                   <p>Booking Id :<span style="font-weight:bold"> #10000065 </span></p>
                                   <p>Date Of Booking : Jan 22, 2017 </p>
                                   
                            </div>
    
    <div style="margin-top: 30px; font-size: 14px!important; line-height: 24px; color: #46535e; padding: 0 20px 30px; font-family: &quot; helvetica neue&quot; , helvetica, arial, sans-serif; background-color: #fff; font-weight: normal; padding-top: 10px; border-radius: 5px">

        <p>Hi <span id="name" runat="server"></span>, </p>

        <p>
            Thank you for booking ticket <span style="color: #8BC34A; font-weight: bold">#100008</span> .Please find the following travel Details.
        
        </p>

        <div style="margin: 10px; font-family: sans-serif; background-color: #F0F0F0; text-align: center">Travel Details</div>
         
        <p><span id="airline" runat="server"></span>   |  <span id="bookingDate" runat="server"></span>22nd-Nov-2016</p>
        <p> <span style="width:10px;border-radius:20px;height:10px;background-color:#66bb6a;display:inline-block" class="iconclass">

            </span> <span id="idtravelLocations" class="idtravelLocations" style="font-weight:bold">
                 <span id="from" runat="server"></span>   →   <span id="to" runat="server"></span>    |  <span id="Time" runat="server"></span>

                    </span></p>

       

        <div style="border-right:1px solid green;width:50%;float:left">
        <h6 style="font-weight:bold">Passenger Details</h6>
       
         <p> <span id="userName" runat="server"></span>    | Age : <span id="age" runat="server"></span>  </p>       
         </div>
        <div style="float:right;width:40%">
            <h6 style="font-weight:bold">Fair Details</h6>
             <span id="fair" runat="server"></span>
        </div>
        
        <div style="margin-top:5%;display:inline-block">
            <h6 style="font-weight:bold">Important Information</h6>
            <p>
               <span style="width:10px;border-radius:20px;height:10px;background-color:#7AD5C9;display:inline-block" class="iconclass">

            </span>  <span style="font-weight:bold">Check&shy;in information </span>: Check&shy;in desks open two hours ahead of the flight's
scheduled departure, and close promptly 1 hour before the flight is scheduled
to leave. If you're late, you will forfeit your seat and no refund will be offered.
            </p>
            <p>
              <span style="width:10px;border-radius:20px;height:10px;background-color:#F06292;display:inline-block" class="iconclass">

            </span>   <span style="font-weight:bold">Seating:</span> This Airline does not allocate seats, and you can choose where to sit
when you board the aircraft. The aircraft is boarded in priority order, however,
so the earlier you check in, the more choice you will have!

            </p>
            <p>
              <span style="width:10px;border-radius:20px;height:10px;background-color:#4DD0E1;display:inline-block" class="iconclass">

            </span>   <span style="font-weight:bold">Specific needs and access requirements:</span> Please inform us of any specific
               needs or access requirements by calling the contact centre.

            </p>
        </div>
       

        
        </div>
        <div style="margin-top:2%;font-weight:normal;border-left:5px solid #384B6A;padding-left:2%">
             <p>If you are facing any problem. please free to contact the following details: </p>
           <p>Phone : (123) 456-7890</p>
            <p> name@example.com</p> 

        </div>
            
        </div>


    </body>


</html>