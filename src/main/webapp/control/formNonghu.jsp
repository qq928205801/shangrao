<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
</head>

<body>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>添加农户信息</legend>
</fieldset>

<form class="layui-form" id="mytable" action="addFarmerBuildingInfo" method="post">
    <div class="layui-form-item layui-form" style="width: 300px;">
        <label class="layui-form-label">户主姓名</label>
        <div class="layui-input-block">
            <input type="text" name="name" autocomplete="off" placeholder="请输入户主姓名"
                   class="layui-input" required>
        </div>
    </div>
    <div class="layui-form-item" style="width: 300px;">
        <label class="layui-form-label">联系电话</label>
        <div class="layui-input-block">
            <input type="text" id="phoneNum" name="phoneNum" autocomplete="off" placeholder="请输入联系电话"
                   class="layui-input" required onblur="checkPhoneNum()">
            <span id="phoneNum1" style="color: red"></span>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">门牌编号</label>
            <div class="layui-input-inline">
                <input type="tel" name="familyType" autocomplete="off" class="layui-input" required>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">家庭人口</label>
            <div class="layui-input-inline">
                <input type="text" name="population" autocomplete="off" class="layui-input" required>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">房屋间数</label>
            <div class="layui-input-inline">
                <input type="text" name="roomNum" autocomplete="off" class="layui-input" required>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">楼层层数</label>
            <div class="layui-input-inline">
                <input type="text" name="floorNum" autocomplete="off" class="layui-input" required>
            </div>
        </div>

    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">占地面积</label>
            <div class="layui-input-inline">
                <input type="text" name="landArea" autocomplete="off" class="layui-input" required>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">建筑面积</label>
            <div class="layui-input-inline">
                <input type="text" name="buildArea" autocomplete="off" class="layui-input" required>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">建筑年份</label>
            <div class="layui-input-inline">
                <input type="text" name="buildingYear" autocomplete="off" class="layui-input" required>
            </div>
        </div>

    </div>


    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">农户类型</label>
            <div class="layui-input-block" style="width: 190px">
                <select name="busiType" id="busiType" lay-filter="busiType">
                    <option value="1">一般农户</option>
                    <option value="2">药农</option>
                    <option value="3">农家乐</option>
                    <option value="4">民宿</option>
                </select>
            </div>
        </div>
        <div class="layui-inline " id="radioBox">
            <label class="layui-form-label">农户信息是否公开</label>
            <div class="layui-input-block">
                <input type="radio" name="ifOpen" value="1" title="公开" checked="checked">
                <input type="radio" name="ifOpen" value="2" title="私密">
            </div>
        </div>
    </div>
    <%--农家乐,民宿的时候显示以下内容--%>
    <div class="layui-form-item layui-hide" id="inputBox1">
        <div class="layui-inline">
            <label class="layui-form-label">客房数</label>
            <div class="layui-input-inline">
                <input type="text" name="numberOfRoom" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">床位数</label>
            <div class="layui-input-inline">
                <input type="text" name="numberOfBed" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">餐位数</label>
            <div class="layui-input-inline">
                <input type="text" name="mealDigits" autocomplete="off" class="layui-input">
            </div>
        </div>
        <br>

    </div>

    <div class="layui-form-item layui-form-text layui-hide" style="width: 700px;" id="inputBox2">
        <label class="layui-form-label">经营特色</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea" name="feature"></textarea>
        </div>
    </div>
    <%--农家乐,民宿的时候显示以上内容--%>

    <div class="layui-form-item layui-form-text" style="width: 700px;">
        <label class="layui-form-label">具体位置</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea" name="address" required></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-form-text" style="width: 700px;">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea" name="memo"></textarea>
        </div>
    </div>
    <div class="layui-input-block">
        <button id="submitButton" class="layui-btn" <%--lay-submit=""--%> <%--lay-filter="demo1"--%> onclick="commitForm()">立即提交</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
    </div>
</form>
<script src="./plugins/layui/layui.js"></script>
<script src="../static/js/jquery-1.10.2.min.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    var category = 0;
    var categoryName = '';

    window.onload = function () {
        var msg = '${msg}';
        if (msg.length > 0) {
            alert(msg);
        }
    };

    function checkPhoneNum() {
        var phoneNum = $("#phoneNum").val();
        if (phoneNum.length!=11&&phoneNum.length!=0){
            $("#phoneNum1").text("手机号格式错误");
        }else if (phoneNum.length==0) {
            $("#phoneNum1").text("");
        }else{
            $("#phoneNum1").text("");
        }
    };

    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form,
            layer = layui.layer,
            layedit = layui.layedit,
            $ = layui.jquery,
            laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            required: function (value) {
                if (value.length <= 0) {
                    alert('不能为空');
                }
            }
        });

        function commitForm() {
            $("#mytable").submit();
        };

        form.on('select(busiType)', function (data) {
            category = data.value;
            categoryName = data.elem[data.elem.selectedIndex].text;
            form.render('select');
            if (category === '3' || category === '4') {
                $("#inputBox1").removeClass("layui-hide");
                $("#inputBox2").removeClass("layui-hide");
                $("#radioBox").removeClass("layui-hide");
            } else {
                $("#inputBox1").addClass("layui-hide");
                $("#inputBox2").addClass("layui-hide");
                $("#radioBox").addClass("layui-hide");
            }
        });
    });

</script>

</body>

</html>