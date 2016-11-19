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


        return $.ajax({
            url: "/ERP/IDApplicant",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify({
                'name': name,
                'telephone': telephone,
                'address': address,
                'gender': gender,
                'occupation': occupation,
                'birthday': birthday,
                'nic': nic,
                'grama': grama,
                'division': division,
                'district': district,
                'single_cal4': single_cal4
            })
        });

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
    
    
    var deleteApplicant = function (id){
       
         return $.ajax({
            url: "/ERP/IDApplicant?id=" + id,
            type: "DELETE",
            contentType: "application/json"
        });
        
    };
    
    

    fns.init = function () {

        var appliacntTable = $("#id_appliacnt_table").DataTable({
            responsive: true,
            orderCellsTop: true,
            autoWidth: false,
            serverSide: false,
            processing: true,
            lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
            language: {
                processing: "<div class='sk-spinner sk-spinner-three-bounce'><div class='sk-bounce1'></div><div class='sk-bounce2'></div><div class='sk-bounce3'></div></div>"
            },
            ajax: {
                "url": "/ERP/IDApplicant",
                "type": "GET",
                "error": function (e) {
                },
                "dataSrc": function (d) {
                    return d;
                }
            },
            deferRender: true,
            columns: [
                {"data": null, "width": "1%", "visible": true},
                {"data": "id", "width": "5%", "visible": false},
                {"data": "name", "width": "5%"},
                {"data": "tel", "width": "10%"},
                {"data": "address", "width": "10%"},
                {"data": "gender", "width": "4%"},
                {"data": "job", "width": "10%"},
                {"data": "dob", "width": "10%"},
                {"data": "nic", "width": "10%"},
                {"data": "grama", "width": "10%"},
                {"data": "dsd", "width": "10%"},
                {"data": "district", "width": "10%"},
                {"data": "date", "width": "10%"}


            ],
            colReorder: true,
            dom: "<'row table-toolbar'<'col-sm-6'<'#b3'>><'col-sm-6'B>> <'row'>" +
                    "<'row'<'col-sm-6'l> <'col-sm-6'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            columnDefs: [
                {
                    'targets': 0,
                    'checkboxes': {
                        'selectRow': true
                    }
                }
            ],
            select: {
                'style': 'multi'
            },
            'order': [[1, 'asc']],
            buttons: [
                {
                    text: '<i class="fa fa-plus"></i> New Applicant',
                    className: 'btn-primary',
                    container: '#b3',
                    action: function (e, dt, node, config) {
                        window.location.href = "#/senior_citizenship_ID";
                    }
                },
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5',
                {
                    extend: 'colvis',
                    text: '<i class="fa fa-gears"></i>',
                    fade: true
                }
            ]
        });

        var settings = '<div class="btn-group btn-group-solid">\
            <button type="button" class="btn btn-default dropdown-toggle" style="margin-right:8px"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\
            Action <span class="caret"></span>\
            </button>\
            <ul class="dropdown-menu">\
             <li><a href="#" id="td-edit">Edit</a></li>\
             <li><a href="#" id="td-delete">Delete</a></li>\
             <li><a href="#" id="td-delete">Print ID</a></li>\
            </ul>\
            </div>';

        $("#b3").append(settings);



        // Handle row deletion
        $("#td-delete").on('click', function () {
            if (appliacntTable.column(0).checkboxes.selected().length > 0) {
                $("#confirm-delete").modal();
            }
        });

        $("#btn-delete").on('click', function () {

            var id = appliacntTable.column(0).checkboxes.selected();

            $.each(id, function (k, v) {

                deleteApplicant(v.id);

            });

            $("#confirm-delete").modal('hide');

            appliacntTable.ajax.reload();

        });


    };// end of init
    return fns;

})();
