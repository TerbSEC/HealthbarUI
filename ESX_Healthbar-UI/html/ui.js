$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        $(".container").css("display",data.show? "none":"block");
        $("#boxStamina").css("width",data.stamina + "%");
        $('#boxHunger').css('width', event.data.st[0].percent+'%')
        $('#boxThirst').css('width', event.data.st[1].percent+'%')

        if (data.armor == 0) {
            $("#boxHeal").css("width",data.health + "%"); // SHOW NORMAL BAR
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
            }
        } else {
            $("#boxHeal2").css("width",data.health + "%"); // SHOW NORMAL BAR
            $("#boxArmor").css("width",data.armor + "%"); // SHOW NORMAL BAR
            $('#boxHeal').hide(); // HIDE 2ND BAR
            $('#heal').hide(); // HIDE 2ND BAR

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
    })
})

