<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>ADMIN</title>
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link rel="stylesheet" href="./build/css/app.css" media="all">
</head>

<body>
<div class="layui-layout layui-layout-admin kit-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">${district}</div>
        <div class="layui-logo kit-logo-mobile">K</div>
        <ul class="layui-nav layui-layout-left kit-nav">

        </ul>
        <ul class="layui-nav layui-layout-right kit-nav">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    ${existUser.name}
                </a>

            </li>
            <li class="layui-nav-item"><a href="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black kit-side">
        <div class="layui-side-scroll">
            <div class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true"></i></div>
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="kitNavbar" kit-navbar>
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span> 用户</span></a>
                    <dl class="layui-nav-child">
                        <c:if test="${empty msg}">
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'disUserList.jsp',icon:'&#xe6c6;',title:'行政用户列表',id:'1'}">
                                <%--<i class="layui-icon">&#xe6c6;</i>--%><span> 行政用户列表</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'deptUserList.jsp',icon:'&#xe6c6;',title:'部门用户列表',id:'2'}">
                                <%--<i class="layui-icon">&#xe6c6;</i>--%><span> 部门用户列表</span></a>
                        </dd>
                        </c:if>

                        <c:if test="${empty msg}">
                        <dd>
                            <a href="javascript:;" data-url="form.jsp" data-icon="fa-user" data-title="新建行政管理账号" kit-target data-id='3'><%--<i class="fa fa-user" aria-hidden="true"></i>--%><span> 新建行政管理账号</span></a>
                        </dd>
                        </c:if>
                        <c:if test="${dis==0}">
                        <dd>
                            <a href="javascript:;" data-url="formXianqu.jsp" data-icon="&#xe614;" data-title="添加当前行政区信息" kit-target data-id='4'><%--<i class="layui-icon">&#xe614;</i>--%><span> 添加当前行政区信息</span></a>
                        </dd>
                        </c:if>

                        <c:if test="${dis==1}">
                            <dd>
                                <a href="javascript:;" data-url="formUpadteXianqu" data-icon="&#xe614;" data-title="修改当前行政区信息" kit-target data-id='5'><%--<i class="layui-icon">&#xe614;</i>--%><span> 修改当前行政区信息</span></a>
                            </dd>
                        </c:if>
                        <c:if test="${msg=='村'}">
                            <dd>
                                <a href="javascript:;" data-url="formNonghu.jsp" data-icon="&#xe628;" data-title="添加农户信息" kit-target data-id='6'><%--<i class="layui-icon">&#xe628;</i>--%><span> 添加农户信息</span></a>
                            </dd>
                            <dd>
                                <a href="javascript:;" kit-target data-options="{url:'buildingList.jsp',icon:'&#xe6c6;',title:'修改门牌信息',id:'7'}">
                                    <%--<i class="layui-icon">&#xe6c6;</i>--%><span> 修改门牌信息</span></a>
                            </dd>
                        </c:if>
                    </dl>
                </li>


            </ul>
        </div>
    </div>
    <div class="layui-body" id="container">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">主体内容加载中,请稍等...</div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        2018 &copy;
        <a href="#">武汉一张图科技有限有限公司/</a>

    </div>
</div>
<script type="text/javascript">
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1264021086'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1264021086%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
</script>
<script src="./plugins/layui/layui.js"></script>
<script>
    var message;
    layui.config({
        base: 'build/js/'
    }).use(['app', 'message'], function() {
        var app = layui.app,
            $ = layui.jquery,
            layer = layui.layer;
        //将message设置为全局以便子页面调用
        message = layui.message;
        //主入口
        app.set({
            type: 'iframe'
        }).init();
        $('#pay').on('click', function() {
            layer.open({
                title: false,
                type: 1,
                content: '<img src="/build/images/pay.png" />',
                area: ['500px', '250px'],
                shadeClose: true
            });
        });
    });
</script>
</body>

</html>