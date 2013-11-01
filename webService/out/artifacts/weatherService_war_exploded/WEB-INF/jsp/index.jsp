<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎</title>
    <script src="js/jquery-1.10.2.min.js"></script>
</head>
<body>
            <input type="button" id="btn" value="点击我请求数据"/>
          <div id="content" style="padding: 50px;border: 1px saddlebrown solid; min-height: 100px; min-width: 100px;"></div>


    <script type="text/javascript">
        (function(){
            $(document).ready(function(){
                $("#btn").bind("click",function(){
                    $.post(
                            "getWeather",
                            {"cityCode":"101010300","simple":true,"userId":"ak"},
                            function(data){
                                $("#content").append(data.weatherinfo.city);
                            },"json"

                    );
                })
            });
        })($);


    </script>

</body>
</html>