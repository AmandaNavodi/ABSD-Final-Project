/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var senior_citizenship_ID = (function () {



    var fns = {};

    var saveApplicant = function (name, telephone, address, gender, occupation, birthday, nic, grama, division, district, single_cal4) {

        console.log(name);
        console.log(telephone);
        console.log(address);
        console.log(gender);
        console.log(occupation);
        console.log(birthday);
        console.log(nic);
        console.log(grama);
        console.log(division);
        console.log(district);
        console.log(single_cal4);
        
    };






    $("#save").on('click', function () {

        saveApplicant(
                $('#name').val(),
                $('#telephone').val(),
                $('#address').val(),
                $('input[name=gender]:checked').val(),
                $('#occupation').val(),
                $('#birthday').val(),
                $('#nic').val(),
                $('#grama').val(),
                $('#division').val(),
                $('#district').val(),
                $('#single_cal4').val()
                );





    });



    return fns;

})();
