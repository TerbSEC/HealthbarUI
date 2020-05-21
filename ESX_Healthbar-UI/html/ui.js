$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        $(".container").css("display", data.show? "none":"block");
        $("#boxStamina").css("width", data.stamina + "%");

        if (event.data.action == "updateStatus") {
            updateStatus(event.data.hunger,event.data.thirst);
        }

        if (data.armor > 0 ) {

            $("#boxHeal2").css("width", data.health + "%"); // SHOW NORMAL BAR
            $("#boxArmor").css("width", data.armor + "%"); // SHOW NORMAL BAR
            $('#heal').hide(); // HIDE 2ND BAR
            $('#boxHeal').hide(); // HIDE 2ND BAR

            $('#heal2').show(); // HIDE 2ND BAR
            $('#boxHeal2').show(); // HIDE 2ND BAR

            $('#boxArmor').show(); // HIDE 2ND BAR
            $('#armor').show(); // HIDE 2ND BAR
            $('.healthnumber').hide();

            if (data.healthtext == true) {
                $('.healthnumber2').show();
                $('.healthnumber2').text(event.data.health);
            }

            if (data.armortext == true) {
                $('.armornumber').show();
                $('.armornumber').text(event.data.armor);
            }
        } 
    else
        if (data.armor == 0 ) {
            $("#boxHeal").css("width", data.health + "%"); // SHOW NORMAL BAR
            $('#boxHeal2').hide(); // HIDE 2ND BAR
            $('#heal2').hide(); // HIDE 2ND BAR

            $('#boxArmor').hide(); // HIDE 2ND BAR
            $('#armor').hide(); // HIDE 2ND BAR

            $('#heal').show(); // HIDE 2ND BAR
            $('#boxHeal').show(); // HIDE 2ND BAR


            $('.armornumber').hide();
            $('.healthnumber2').hide();

            if (data.healthtext == true) {
                $('.healthnumber').show();
                $('.healthnumber').text(event.data.health);
                if (data.health < 0 ) {
                    $('.healthnumber').text(data.deadtext);
                }
            }


        }
    })
})

function updateStatus(status){
    $('#boxHunger').css('width', hunger+'%')
    $('#boxThirst').css('width', thirst+'%')
}
