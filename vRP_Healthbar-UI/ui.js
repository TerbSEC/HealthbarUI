$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        $(".container").css("display",data.show? "none":"block");
        $("#boxHeal").css("width",data.health + "%");
        $("#boxStamina").css("width",data.stamina + "%");
        $("#boxHunger").css("width",100 - data.hunger + "%");
        $("#boxThirst").css("width",100 - data.thirst + "%");
    })
})