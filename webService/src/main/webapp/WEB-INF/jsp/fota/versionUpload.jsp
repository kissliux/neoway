<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../part/header.jsp" %>
<title>Fota升级--版本上传</title>
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
          <h2>版本上传</h2>   </div>
          <div class="alert alert-success add col-lg-4">设置以下项目升级到版本：<strong>${fotaVersion.versionName}</strong></div>
          <button class="btn btn-primary pull-right " target="_blank" data-toggle="modal" data-target="#addVersionFileModal">添加差分包</button>
          <span class="span10"></span>
          <table id="tb_fota_version_upload"  class="table-striped table table-hover table-responsive" >
		</table>
      </div>
    </div>
 
 </div>
</div>

<!--modal 开始-->
<div class="modal fade " id="addVersionFileModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">版本上传</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" name="form_add_version_file" role="form" action="fota/file/add" method="post" enctype="multipart/form-data">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">当前可选版本</label>
                        <div class="col-sm-10">
                            <select name="startVersionId" class="form-control" required="required">
                            </select>
                        </div>
                    </div>
                    <input type="text" class="hidden" name="versionId" value="${fotaVersion.versionId}" required="required"/>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">差分包</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" name="fileName" id="inputEmail3" required="required">
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="btn_add_version_file" class="btn btn-success">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<!--modal 开始-->
<div class="modal fade " id="updateVersionModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">更新版本</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" name="form_update_version" role="form" action="fota/version/update" method="post">

                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">型号名</label>
                        <div class="col-sm-10">
                            <select name="brandId" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">版本编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="versionId" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">版本号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="versionName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">版本描述</label>
                        <div class="col-sm-10">
                            <textarea type="" class="col-sm-10"  rows="3" name="versionDesc"> </textarea>

                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="btn_update_version" class="btn btn-success">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>




<%@include file="../part/footer.jsp"%>


<%@include file="../part/inc_js.jsp"%>
<script src="<c:url value='js/datatable/js/jquery.dataTables.js'/>"></script>
<script src="<c:url value='js/moment.min.js'/>"></script>
<script src="<c:url value='js/lang/zh-cn.js'/>"></script>
<script src="<c:url value='js/fota/versionUploadManager.js'/>"></script>
<script src="<c:url value='js/jquery.form.min.js'/>"></script>
</body>
</html>