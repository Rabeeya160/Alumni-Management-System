<%-- 
    Document   : modals
    Created on : Dec 16, 2017, 8:45:31 PM
    Author     : adnan
--%>


<%@page import="classes.DBUtils"%>
<!-- Delete Alumnni Modal -->
<%
    String dmail = request.getParameter("deleteMail");
%>
<div class="modal fade" id="deleteAlum" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Alumnus</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="form-group" method="post" action ="functions.jsp">
                    <label for="email">E-Mail Address</label>
                    <input id="email" type="email" class="form-control" name="deleteMail" value="" required autofocus>
                    <div class="form-text text-muted">
                        By clicking "Delete Member" You will permanently Delete the alumnus.
                    </div>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                
                
            </div>
        </div>
    </div>
</div>




