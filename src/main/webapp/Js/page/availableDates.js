
function table(dataArray,roomsArray){
    $("#availableRoomTable").empty();
    console.log(dataArray);
    console.log(roomsArray);

    let isAvailableRoom = false;
   /*
   <div class="col-12">
      <div class="container-fluid tw2">
        <div class="table-responsive" id="availableRoomTabl">
          <table class="table" id="availableRoomTable">


          </table>
          </div>
    */


   let htmlString = "<table class=\"table\">\n" +
       "            <thead id='table1'>\n" +
        "              <tr>\n" +
        "                <th class=\"th1\"></th>\n" +
        "                <th class=\"th2\">Availability</th>\n" +
        "                <th class=\"th2\">Quantity</th>\n" +
        "                <th class=\"th2\">Rate</th>\n" +
        "              </tr>\n" +
        "            </thead>\n" +
        "            <tbody>\n" ;

    $.each(dataArray, function (dataArrayIndex,dataArrayValue){

        let roomCount = 0;
        $.each(roomsArray, function (roomsArrayIndex,roomsArrayValue){
            console.log(roomsArrayValue.roomTypeId);


            if(roomsArrayValue.roomTypeId==dataArrayValue.roomTypeId){
                roomCount++;
            }
        });
        let availability ="N/A";
        if(roomCount>0){
            availability="Available";
        }

      //  console.log(dataArrayValue.roomTypeName);
      //   dataArrayValue.roomTypeName
      let  tableRows =   "      <tr>\n" +
            "                <td class=\"th3\">\n" +
            "                <img src=\"Image/3333.jpg\" alt=\"\" class=\"imgr1\"><h6 style='padding-top: 4px;text-transform:uppercase;color: goldenrod'>"+dataArrayValue.roomTypeName+"</h6>\n"+
            "                </td>\n" +
            "                <td class=\"datatb\" style=\"color: green;\">"+availability+"</td>\n" +
            "                <td class=\"datatb\">"+roomCount+" Rooms</td>\n" +
            "                <td class=\"datatb\">"+ dataArrayValue.price+ " </td>\n" +
            "                \n" +
            "              </tr>\n" ;
        htmlString = htmlString + tableRows;
    });


   let tableEnd  =   "            </tbody>\n" +
                    "          </table>";


 let table=htmlString+tableEnd;



    $("#availableRoomTable").append(table);


}

getRoomTypeList();

function getRoomTypeList(){

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
          //  table(response.data)
            if (response.action === true) {


            }
        }
    });
}



$("#checkAvailability").click(function () {
    let checkInDate = $("#checkin").val();
    let checkOutDate = $("#checkOut").val();
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
                console.log(firstRequest);
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
                            console.log(secondRequest);
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