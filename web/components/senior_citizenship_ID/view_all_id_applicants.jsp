<%-- 
    Document   : view_all_id_applicants
    Created on : Nov 19, 2016, 6:06:33 PM
    Author     : nisalsp9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-md-12">
        <table class="table table-striped table-bordered" id="id_appliacnt_table">
            <H3>ID Applicants</H3>
            <thead>
                <tr>
                    <th>
                        <div class="checker"><input id="select-all" type="checkbox"></div>
                    </th>
                    <th>ID</th>
                    <th>name</th>
                    <th>tel</th>
                    <th>address</th>
                    <th>gender</th>
                    <th>job</th>
                    <th>DOB</th>
                    <th>NIC</th>
                    <th>grama</th>
                    <th>DSD</th>
                    <th>district</th>
                    <th>date</th>              
                </tr>
            </thead>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</div>

<!-- Start delete confirmation -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Confirm Delete</h4>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete the selected Applicant?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="btn-delete">Delete</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End delete modal -->

<!-- Start print id confirmation -->
<div class="modal fade" id="confirm-print" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Confirm Print ID</h4>
            </div>
            <div class="modal-body">
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                    </label>
                    <input type="text" readonly id="name" style="border: none"/>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="address">Address <span class="required">*</span>
                    </label>
                    <input type="text" readonly id="address" style="border: none"/>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="dob">DOB <span class="required">*</span>
                    </label>
                    <input type="text" readonly id="dob" style="border: none"/>
                </div>
                <div class="item form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nic">NIC No <span class="required">*</span>
                    </label>
                    <input type="text" readonly id="nic" style="border: none"/>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="btn-print">Print ID</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End print modal -->



<!--local js calls-->
<script type="text/javascript" src="components/senior_citizenship_ID/senior_citizenship_ID.js"></script>
