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

    var showIDApplicants = function () {

        console.log("hello view_id_applicant");
        $.get('components/senior_citizenship_ID/view_all_id_applicants.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
            senior_citizenship_ID.init();
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
    
    var showUserMgt = function () {
        console.log("hello user mgt");
        $.get('components/user_management/user_mgt.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
            //  creative.init();

        });
    };
    
    var showNewUserType = function () {
        console.log("hello user type");
        $.get('components/user_management/new_user_type.jsp', function (template) {
            var rendered = Mustache.render(template, {});
            $('#main-content').html(rendered);
            //  creative.init();

        });
    };

    //
    // define the routing table.
    //
    var routes = {
        '/view_all_ID_applicants': showIDApplicants,
        '/senior_citizenship_ID': showSeniorCitizenshipID,
        '/aids_and_equipments': showCreative,
        '/dry_rations': showViewCampaign,
        '/CBR_project': showViewCampaignForCreavtive,
        '/user_mgt': showUserMgt,
        '/new_user_type':showNewUserType

    };

    //
    // instantiate the router.
    //
    var router = Router(routes);
    router.init();
});