/* global Mustache */

$('document').ready(function () {
    

    
    //
    // create some functions to be executed when
    // the correct route is issued by the user.
    //


    var showSeniorCitizenshipID = function () {
          
        console.log("hello senior_citizenship_ID");
        $.get('components/senior_citizenship_ID/senior_citizenship_ID.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
        });
    };

    var showCreative = function () {
        console.log("hello aids_and_equipments");
        $.get('components/aids_and_equipments/aids_and_equipments.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
//            creative.init();

        });
    };


    var showViewCampaign = function () {
        
        console.log("hello dry_rations");
        $.get('components/dry_rations/dry_rations.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
            //campaigns.init();
        });
    };


    var showViewCampaignForCreavtive = function () {
        console.log("hello CBR_project");
        $.get('components/CBR_project/CBR_project.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
          //  creative.init();

        });
    };

    //
    // define the routing table.
    //
    var routes = {

          
        '/senior_citizenship_ID': showSeniorCitizenshipID,
        '/aids_and_equipments': showCreative,
        '/dry_rations': showViewCampaign,
        '/CBR_project': showViewCampaignForCreavtive

    };

    //
    // instantiate the router.
    //
    var router = Router(routes);
    router.init();
});