<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../part/header.jsp" %>
<title>Fota升级--品牌管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="../part/inc_css.jsp"%>
<!--数据表格-->
<link rel="stylesheet" type="text/css" href="<c:url value='js/datatable/css/jquery.dataTables.css'/>" />
<%--
<link rel="stylesheet" type="text/css" href="<c:url value='js/datatable/extra/tableTool/media/css/TableTools.css'/>" />
--%>
<!--[if IE]>
 <link rel="stylesheet" type="text/css" href="<c:url value='css/index-ie.css'/>">
<![endif]-->
<!-- my css-->
<link rel="stylesheet" href="<c:url value='css/index.css'/>">

</head>

<body>
<%@include file="../part/head_menu.jsp"%>

<div class="container bs-docs-container">
  <div class="row">

    <div class="col-md-12" role="main">
      <div id="less" class="bs-docs-section">
        <div class="page-header">
          <h1>型号管理</h1>
        </div>
          <button class="btn btn-primary pull-right add" target="_blank" data-toggle="modal" data-target="#addBrandModal">添加品牌</button>
          <span class="span10"></span>
          <table id="tb_fota_brand"  class="table-striped table table-hover table-responsive" >
		</table>
      </div>
    </div>
 
 </div>
</div>

<!--modal 开始-->
<div class="modal fade " id="addBrandModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">添加型号</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" name="form_add_brand" role="form" action="fota/brand/add" method="post">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">品牌名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="brandName" id="inputEmail3" value="innos">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oem" class="col-sm-2 control-label">OEM</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="oem" id="oem" value="innos">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="product" class="col-sm-2 control-label">产品型号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="product" id="product" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="language" class="col-sm-2 control-label">语言</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="language" name="language" value="zh-CN">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="btn_add_brand" class="btn btn-success">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<!--modal 开始-->
<div class="modal fade " id="updateBrandModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">更新型号</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" name="form_update_brand" role="form" action="fota/brand/update" method="post">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="brandId" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">品牌名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="brandName" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oem" class="col-sm-2 control-label">OEM</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="oem">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="product" class="col-sm-2 control-label">产品型号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="product"  >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="language" class="col-sm-2 control-label">语言</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="language">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="btn_update_brand" class="btn btn-success">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>




<%@include file="../part/footer.jsp"%>


<%@include file="../part/inc_js.jsp"%>
<script src="<c:url value='js/datatable/js/jquery.dataTables.js'/>"></script>
<script src="<c:url value='js/moment.min.js'/>"></script>
<script src="<c:url value='js/lang/zh-cn.js'/>"></script>
<script src="<c:url value='js/fota/brandManager.js'/>"></script>
<script src="<c:url value='js/jquery.form.min.js'/>"></script>


 <script>
	(function(){
        $(document).ready(function() {
             $("header li[name='fota']").addClass("active");
        });
	})($);
</script>
</body>
</html>