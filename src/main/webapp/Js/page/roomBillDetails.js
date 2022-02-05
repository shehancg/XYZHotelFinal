loadPage();

function loadPage(){
    var goldRoomPrice = window.sessionStorage.getItem("goldRoomPrice");
    var goldRoomCount = window.sessionStorage.getItem("goldRoomCount");

    var silverRoomPrice = window.sessionStorage.getItem("silverRoomPrice");
    var silverRoomCount = window.sessionStorage.getItem("silverRoomCount");

    var platinumRoomPrice = window.sessionStorage.getItem("platinumRoomPrice");
    var platinumRoomCount = window.sessionStorage.getItem("platinumRoomCount");

    var totalBillSession = window.sessionStorage.getItem("totalBill");


    var goldRoom = goldRoomPrice +"  X  " + goldRoomCount;
    var silverRoom = silverRoomPrice +"  X  " + silverRoomCount;
    var platinumRoom = platinumRoomPrice +"  X  " + platinumRoomCount;

    $("#goldBill").text(goldRoom);
    $("#silverBill").text(silverRoom);
    $("#platinumBill").text(platinumRoom);

    $("#totalBill").text(totalBillSession);
    // sessionStorage.clear();
    //checkOutBtn
}


$("#checkOutBtn").click(function () {

    var checkInDateSession = window.sessionStorage.getItem("checkInDateSession");
    var checkOutDateSession = window.sessionStorage.getItem("checkOutDateSession");

   // console.log(checkInDate);
  //
    let dates ={
        "reservationTypeId":"1",
        "id":"5",
        "checkInDate":checkInDateSession,
        "checkOutDate":checkOutDateSession,
        "active":"true",
        "noOfGuest":"4"
    }



    $.ajax({
        url: '/reservation/save',
        type: 'POST',
        contentType: "application/json",
        data: JSON.stringify(dates),
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
                window.open("http://localhost:8080/confirmation","_self")

            }
        }
    });
});