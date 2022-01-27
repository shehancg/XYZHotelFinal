table();
function table(){




    htmlString =" <table class=\"table\">\n" +
        "            <thead>\n" +
        "              <tr>\n" +
        "                <th class=\"th1\"></th>\n" +
        "                <th class=\"th2\">Availability</th>\n" +
        "                <th class=\"th2\">Quantity</th>\n" +
        "                <th class=\"th2\">Rate</th>\n" +
        "              </tr>\n" +
        "            </thead>\n" +
        "            <tbody>\n" +
        "              <tr>\n" +
        "                <td class=\"th3\">\n" +
        "                <img src=\"Image/3333.jpg\" alt=\"\" class=\"imgr1\">\n" +
        "                  Primere beach access room</td>\n" +
        "                <td class=\"datatb\" style=\"color: green;\">Available</td>\n" +
        "                <td class=\"datatb\">20 Rooms</td>\n" +
        "                <td class=\"datatb\">25 000 LKR</td>\n" +
        "                \n" +
        "              </tr>\n" +
        "              <tr>\n" +
        "                <td class=\"th3\" >\n" +
        "                  <img src=\"Image/4444.webp\" alt=\"\" class=\"imgr1\">\n" +
        "                  Primere Ocean View room</td>\n" +
        "                <td class=\"datatb\" style=\"color: red;\">SOLD</td>\n" +
        "                <td class=\"datatb\" style=\"color: red;\">0 Rooms</td>\n" +
        "                <td class=\"datatb\" style=\"color: red;\">50 000 LKR</td>\n" +
        "                \n" +
        "              </tr>\n" +
        "              <tr>\n" +
        "                <td class=\"th3\">\n" +
        "                  <img src=\"Image/3333.jpg\" alt=\"\" class=\"imgr1\">\n" +
        "                  Deluxe Ocean View room</td>\n" +
        "                <td class=\"datatb\" style=\"color: green;\">Available</td>\n" +
        "                <td class=\"datatb\">30 Rooms</td>\n" +
        "                <td class=\"datatb\">75 000 LKR</td>\n" +
        "                \n" +
        "              </tr>\n" +
        "            </tbody>\n" +
        "          </table>"






    $("#availableRoomTable").append(htmlString);


}