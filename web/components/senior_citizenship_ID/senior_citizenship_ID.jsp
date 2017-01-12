<%-- 
    Document   : senior_citizenship_ID
    Created on : Oct 16, 2016, 10:23:46 PM
    Author     : nisalsp9
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_content">
                <form class="form-horizontal form-label-left" novalidate>
                    <span class="section">Senior Citizenship ID Applicant Details</span>
                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="Both name(s) e.g Nisal Sanjaya Perera" required="required" type="text">
                        </div>
                    </div>


                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="telephone">Telephone <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="tel" id="telephone" name="phone" placeholder="Full telephone number e.g 0382238949" required="required" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>



                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="address">Address <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <textarea id="address" required="required" name="Address" placeholder="Address with All Details e.g 113/2A, Sri Wimala MW, Walana, Panadura" class="form-control col-md-7 col-xs-12"></textarea>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="gender" value="female"> Female
                                </label>
                            </div>
                        </div>
                    </div>


                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Occupation <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="occupation" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="occupation" placeholder="The Job e.g Driver" required="required" type="text">
                        </div>
                    </div>

                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="birthday">Date Of Birth <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="birthday" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="1" name="birthday" placeholder="YYYY/MM/DD e.g 1960/07/11" required="required" type="text">
                        </div>
                    </div>

                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nic">NIC <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="nic" class="form-control col-md-7 col-xs-12" data-validate-length-range="10" data-validate-words="1" name="nic" placeholder="e.g 601930321v" required="required" type="text">
                        </div>
                    </div>


                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="grama">Grama Niladhari Division <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="grama" class="form-control col-md-7 col-xs-12" data-validate-length-range="10" data-validate-words="1" name="grama" placeholder="e.g 680 bekkegama" required="required" type="text">
                        </div>
                    </div>


                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="division">Divisional Secretariat Division <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="division" class="form-control col-md-7 col-xs-12" data-validate-length-range="10" data-validate-words="1" name="division" placeholder="e.g Panadura" required="required" type="text">
                        </div>
                    </div>


                    <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="district">District <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="district" class="form-control col-md-7 col-xs-12" data-validate-length-range="10" data-validate-words="1" name="district" placeholder="e.g Kalutara" required="required" type="text">
                        </div>
                    </div>

                    <div class="item form-group">

                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="single_cal4">Date <span class="required">*</span></label>

                        <div class="col-md-6 col-sm-6 col-xs-12">

                            <input type="text" class="form-control" data-validate-length-range="10" data-validate-words="1" id="single_cal4" required="required" placeholder="Date" aria-describedby="inputSuccess2Status4">



                        </div>

                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                            <button type="reset" class="btn btn-primary">Cancel</button>
                            <button id="save" class="btn btn-success">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>




    <script>
        var date = new Date();
        var year = date.getFullYear();
        var day = date.getDate();
        var month = date.getMonth();
        $('#single_cal4').on('click', function () {
            $('#single_cal4').val(year + '/' + month + '/' + day);
        });
    </script>

    <!-- validator -->
    <script>
        // initialize the validator function
        validator.message.date = 'not a real date';

        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
                .on('blur', 'input[required], input.optional, select.required', validator.checkField)
                .on('change', 'select.required', validator.checkField)
                .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required').on('keyup blur', 'input', function () {
            validator.checkField.apply($(this).siblings().last()[0]);
        });

        $('form').submit(function (e) {
            e.preventDefault();
            var submit = true;

            // evaluate the form using generic validaing
            if (!validator.checkAll($(this))) {
                submit = false;
            }

            if (submit)
                this.submit();

            return false;
        });
    </script>

    <!-- /validator -->

    <!--local js calls-->
    <script type="text/javascript" src="components/senior_citizenship_ID/senior_citizenship_ID.js"></script>

