<%-- 
    Document   : index
    Created on : Aug 12, 2014, 2:19:19 PM
    Author     : andrewserff
--%>

<%@include file="header-start.jspf" %>

<!-- Specific Page Vendor CSS -->
<link rel="stylesheet" href="/assets/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" href="/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
<link rel="stylesheet" href="/assets/vendor/morris/morris.css" />
<link rel="stylesheet" href="/assets/vendor/pnotify/pnotify.custom.css" />
<link rel="stylesheet" href="/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@include file="header-end-to-content-start.jspf" %>

<!-- start: page -->
<div class="row">
    <c:forEach var="item" items="${apps}" varStatus="appItem">
        <div class="col-sm-3 col-md-3" align="center">
            <div class="thumbnail">
                <div class="panel-heading"><h4>${item.name}</h4>
                </div>
                <img style="height:140px; width:270px;"
                <c:choose><c:when test="${item.screenshot != null}">src="/view/file/${item.screenshot.storageId}"</c:when>
                    <c:otherwise>src="/assets/images/image-not-found.png" alt="..."</c:otherwise></c:choose>>
                <div class="caption">
                    <p><a target="_blank" href="${item.url.address}" class="btn btn-sm btn-primary" role="button"><i class="fa fa-rocket" aria-hidden="true"></i> Launch</a>
                        <a href="#more-info-modal${item.id}"  class="modal-with-form btn btn-sm btn-default" role="button"><i class="fa fa-info-circle" aria-hidden="true"></i></a></p>
                </div>
            </div>
        </div>

      <%@include file="templates/dashboard/moreinfo.jspf" %>
    </c:forEach>
    
    
</div>


<!-- end: page -->

<%@include file="content-end-to-script-start.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Specific Page Vendor -->
<script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>




<script src="/assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
<script src="/assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
<script src="/assets/vendor/magnific-popup/magnific-popup.js"></script>
<script src="/assets/javascripts/dashboard.js"></script>
<!--

<script src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
<script src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
<script src="assets/vendor/flot/jquery.flot.js"></script>
<script src="assets/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
<script src="assets/vendor/flot/jquery.flot.pie.js"></script>


<script src="assets/vendor/flot/jquery.flot.categories.js"></script>
<script src="assets/vendor/flot/jquery.flot.resize.js"></script>

<script src="assets/vendor/jquery-sparkline/jquery.sparkline.js"></script>
<script src="assets/vendor/raphael/raphael.js"></script>
<script src="assets/vendor/morris/morris.js"></script>
<script src="assets/vendor/gauge/gauge.js"></script>
<script src="assets/vendor/snap-svg/snap.svg.js"></script>
<script src="assets/vendor/liquid-meter/liquid.meter.js"></script>
<script src="assets/vendor/jqvmap/jquery.vmap.js"></script>
<script src="assets/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
<script src="assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
-->



<%@include file="body-scripts-end.jspf" %>
<%@include file="body-end.jspf" %>       



