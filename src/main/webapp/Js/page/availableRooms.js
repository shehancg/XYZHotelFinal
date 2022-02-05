$("#checkAvailability").click(function () {
    let checkInDate = $("#checkin").val();
    let checkOutDate = $("#checkOut").val();
    var checkInDateSession = window.sessionStorage.setItem("checkInDateSession", checkInDate);
    var checkOutDateSession = window.sessionStorage.setItem("checkOutDateSession", checkOutDate);

    console.log(checkInDate);
    console.log(checkOutDate);
    let dates ={
        "checkInDate":checkInDate,
        "checkOutDate":checkOutDate
    }



    $.ajax({
        url: '/roomtype',
        type: 'POST',
        contentType: "application/json",
        data: JSON.stringify(),
        dataType: 'json',
        // async: false,
        // cache: false,
        success: function (response) {
            //  console.log(response);
            //  console.log("Room Type ", response.data[0].roomTypeName);
            // console.log("Room Capacity ", response.data[0].price);
            let firstRequest =response;
          //  console.log(firstRequest);
            // table(response.data)
            if (firstRequest.action === true) {

                $.ajax({
                    url: '/availableRoom/roomList',
                    type: 'POST',
                    contentType: "application/json",
                    data: JSON.stringify(dates),
                    dataType: 'json',
                    // async: false,
                    // cache: false,
                    success: function (response) {
                        let secondRequest =response;
                      //  console.log(secondRequest);
                        if (response.action === true) {
                            table(firstRequest.data,secondRequest.data)
                        }
                        // console.log("heloooooo");
                        //  console.log("Room Type ", response.data[0].roomTypeName);
                        // console.log("Room Capacity ", response.data[0].price);

                    }
                });
            }
        }
    });
});

function table(dataArray,roomsArray) {
    $("#availableRoomTable").empty();
   console.log(dataArray);
   console.log(roomsArray);

    let newhtmlstring="";
    let priceName="price";
    let countName="count";

    $.each(dataArray, function (dataArrayIndex,dataArrayValue){

        let roomCount = 0;
        $.each(roomsArray, function (roomsArrayIndex,roomsArrayValue){
           // console.log(roomsArrayValue.roomTypeId);

            if(roomsArrayValue.roomTypeId==dataArrayValue.roomTypeId){
                roomCount++;
            }
        });
        let availability ="N/A";
        if(roomCount>0){
            availability="Available";
        }

        //  console.log(dataArrayValue.roomTypeName);

      //  let  htmlString =  "";
       // htmlString = htmlString + tableRows;

        let htmlstring="<div class=\"container sdbox\">\n" +
            "            <div class=\"row sdboxrw1\">\n" +
            "                <div class=\"col-12\"><h6 style='padding-top: 4px;text-transform:uppercase'>"+dataArrayValue.roomTypeName+"</h6>\n"+
            "                </div>\n" +
            "            </div>\n" +
            "            <div class=\"row sdboxrw2\">\n" +
            "                <div class=\"col-4\">\n" +
            "                    <img src=\"Image/3333.jpg\" alt=\"\" class=\"ftimg img-fluid\">\n" +
            "                    <p class=\"sdpara1\">Photos | Details</p>\n" +
            "                    <hr>\n" +
            "                    <div class=\"container-fluid fticon\">\n" +
            "                        <div class=\"row\">\n" +
            "                            <div class=\"col-2\">\n" +
            "                                <i class=\"fas fa-wifi icon\"></i>\n" +
            "                            </div>\n" +
            "                            <div class=\"col-10\">FREE WIFI</div>\n" +
            "                        </div>\n" +
            "                        <div class=\"row\">\n" +
            "                            <div class=\"col-2\">\n" +
            "                                <i class=\"fas fa-bed icon\"></i>\n" +
            "                            </div>\n" +
            "                            <div class=\"col-10\">ROOM SIZE 97 M2</div>\n" +
            "                        </div>\n" +
            "                        <div class=\"row\">\n" +
            "                            <div class=\"col-2\">\n" +
            "                                <i class=\"fas fa-user-friends icon\"></i>\n" +
            "                            </div>\n" +
            "                            <div class=\"col-10\">MAXIMUM 3 ADULTS</div>\n" +
            "                        </div>\n" +
            "                    </div>\n" +
            "                </div>\n" +
            "\n" +
            "                <div class=\"col-5 sdboxcol2\">\n" +
            "                    <p>XYZ luxury accommodation\n" +
            "                        Daily breakfast\n" +
            "                        Freedom to adjust your plans with fewer conditions\n" +
            "                    </p>\n" +
            "                    <h6>Cancellation Policy:</h6>\n" +
            "                    <p>\n" +
            "                        Reservation may not be cancelled. Full payment will be forfeited.\n" +
            "                    </p>\n" +
            "                    <h6>\n" +
            "                        Deposit Policy:\n" +
            "                    </h6>\n" +
            "                    <p>\n" +
            "                        A deposit will be charged to your credit card at the time of reservation.\n" +
            "                        The deposit amount can be seen on the next step of the booking. If no\n" +
            "                        credit card is provided, the deposit must be made via bank transfer\n" +
            "                        within 48 hours after making this reservation.\n" +
            "                    </p>\n" +
            "                    <h6>\n" +
            "                        Guarantee Policy:\n" +
            "                    </h6>\n" +
            "                    <p>\n" +
            "                        Reservation must be guaranteed with one of these cards:\n" +
            "                        American Express, China UnionPay, JCB, MasterCard, Visa\n" +
            "                    </p>\n" +
            "                    <h6>\n" +
            "                        Tax Information:\n" +
            "                    </h6>\n" +
            "                    <p>\n" +
            "                        Excluding Taxes and Fees.\n" +
            "                    </p>\n" +
            "                </div>\n" +
            "                <div class=\"col-3\">\n" +
            "                    <div class=\"row\">\n" +
            "                        <div class=\"col-md-12 mb-4\">\n" +
            "                            <div class=\"card\">\n" +
            "                                <div class=\"card-header1\">\n" +
            "                                    Standard Rate\n" +
            "                                </div>\n" +
            "                                <div class=\"card-body1\">\n" +
            "                                    <h5 class=\"card-title\"><h5 style='color:darkgoldenrod' id="+priceName+dataArrayValue.roomTypeName+">"+dataArrayValue.price+"</h5></h5>\n" +
            "                                    <p class=\"card-text\">Per room per night</p>\n" +
            "                                </div>\n" +
            "                            </div>\n" +
            "                        </div>\n" +
            "                    </div>\n" +
            "                    <div class=\"row\">\n" +
            "                        <h5>Available Rooms  <h5 style='color:darkgoldenrod' id="+countName+dataArrayValue.roomTypeName+">"+roomCount+"</h5></h5>\n" +
            "                        <h6>How many Rooms do you want?</h6>\n" +
            "                        <div class=\"col\">\n" +
            "                        <h6 style=\"display: none;\">kasun?</h6>\n" +
            "                            Rooms\n" +
            "                        </h1>\n" +
            "                        <div class=\"col\">\n" +
            "                            <input id=\"increament\" type=\"number\" class=\"form-control\" value=\"0\" aria-valuemax=\"5\" name="+dataArrayValue.roomTypeName+" >\n" +
            "                        </div>\n" +
            "                           <div class=\"col\">\n"+
            "                           <input type=\"button\"value='ADD TO CART' class=\"decreaseBtn\"> \n"+
            "                           </div>\n"+
            "                    </div>\n" +
            "                </div>\n" +
            "            </div>\n" +
            "        </div>";


        newhtmlstring =newhtmlstring+htmlstring;

        // function totalCalculate(){
        //     var price=document.getElementById(dataArrayValue.roomTypeId)
        // }

    });


    $("#availableRoomTable").append(newhtmlstring);

}

let roomCount1 = 0;
let roomCount2 = 0;
let roomCount3 = 0;

$('body').on('click', '.decreaseBtn', function () {
    var countNameGold = Number($("#countgold").text());
    var goldRoomPrice = window.sessionStorage.setItem("goldRoomPrice", 30000);

    console.log(countNameGold);
    var countNameSilver = Number($("#countsilver").text());
    var silverRoomPrice = window.sessionStorage.setItem("silverRoomPrice", 50000);

    console.log(countNameSilver);
    var countNamePlatinum = Number($("#countplatinum").text());
    var platinumRoomPrice = window.sessionStorage.setItem("platinumRoomPrice", 100000);

    console.log(countNamePlatinum);

    var roomCountGold =Number($("input[name=gold]").val());
    if(roomCountGold >0 && roomCountGold !== roomCount1 && countNameGold >= roomCountGold){
        var goldRoomCount = window.sessionStorage.setItem("goldRoomCount", roomCountGold);
        roomCount1 = roomCountGold;
        var priceeGold =Number($("#pricegold").text());
        calculateBill(priceeGold,roomCountGold);
    }
    var roomCountSilver =Number($("input[name=silver]").val());
    if(roomCountSilver >0 &&  roomCountSilver !== roomCount2 && countNameSilver >= roomCountSilver){
        var silverRoomCount = window.sessionStorage.setItem("silverRoomCount", roomCountSilver);
        roomCount2 = roomCountSilver;
        var priceeSilver =Number($("#pricesilver").text());
         calculateBill(priceeSilver,roomCountSilver);

    }
    var roomCountPlatinum =Number($("input[name=platinum]").val());
    if(roomCountPlatinum  >0 &&  roomCountPlatinum !== roomCount3 && countNamePlatinum >= roomCountPlatinum){
        var platinumRoomCount = window.sessionStorage.setItem("platinumRoomCount", roomCountPlatinum);
        roomCount3 = roomCountPlatinum;
        var priceePlatinum =Number($("#priceplatinum").text());
        calculateBill(priceePlatinum,roomCountPlatinum);

    }

});

let totalBill = 0

function calculateBill(price,count) {

     totalBill = totalBill + price;
     console.log(totalBill);
     var totalBillSession = window.sessionStorage.setItem("totalBill", totalBill);
    $("#totalBill").text(totalBill);


}


// $("#nextBtn").click(function () {
//     console.log(getsession1);
//
//     window.open("http://localhost:8080/availabledates","_self")
// });




