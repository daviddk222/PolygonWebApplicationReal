<%@page import="serviceLayer.entity.PendingCheckup"%>
<%@page import="serviceLayer.entity.Checkup"%>
<%@page import="serviceLayer.entity.Building"%>
<%@page import="java.util.List"%>
<%@page import="serviceLayer.ControllerFacade"%>
<jsp:include page="header.jsp" />

<div class="container well">
    <div class="col-md-12">
        <h1 class="page-header">Pending checkups</h1><br>

        <% List<PendingCheckup> pendingCheckups = new ControllerFacade().getAllPendingCheckups(); %>
        <!-- Generates a pending checkup item for each checkups stored in the database with the status: Pending... -->
        <% for (PendingCheckup pendingCheckup : pendingCheckups) {%>
        <div class="col-md-12 well buildingitem">
            <div class="row border">
                <div class="col-md-12">
                    <div class="col-md-6">
                        <h3>Company: <strong><%= pendingCheckup.getCompanyName()%></strong></h3>
                    </div>
                    <div class="col-md-4">
                        <h3>Building: <strong><%= pendingCheckup.getBuildingName()%></strong></h3>
                    </div>
                    <div class="col-md-2">
                        <form action="viewbuilding" method="POST">
                            <button class="btn btn-primary" type="submit">Go to building</button>
                            <input type="hidden" name="buildingId" value="<%= pendingCheckup.getBuildingId()%>"/>
                        </form>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-3">
                        <h4>Request date: <strong><%= pendingCheckup.getCheckup().getDate()%></strong></h4>
                    </div>
                    <div class="col-md-3">
                        <h4>Status: <strong><%= pendingCheckup.getCheckup().getStatus()%></strong></h4>
                    </div>
                    <div class="form-group col-md-4">
                        <form action="changecheckupstatusviewpending" method="POST">
                            <div class="col-md-8">
                                <select class="form-control" id="sel1" name="status">
                                    <option value="Cancelled">Cancel</option>
                                    <option value="Accepted">Accept</option>
                                    <option value="Completed">Complete</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <button class="btn btn-primary" type="submit">Change</button>
                                <input type="hidden" name="checkupId" value="<%= pendingCheckup.getCheckup().getCheckupId()%>"/>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-2 pull-right">
                        <form action="deletependingcheckup" method="POST">
                            <button onClick="return confirm('Are you sure you want to delete this checkup? The customer will not be able to see this checkup anymore!')" class="btn btn-danger pull-right col-md-12" type="submit">Delete item <i class="fa fa-times" aria-hidden="true"></i></button>
                            <input type="hidden" name="checkupId" value="<%= pendingCheckup.getCheckup().getCheckupId()%>"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <% }%>
    </div>
</div>

<jsp:include page="footer.jsp" />