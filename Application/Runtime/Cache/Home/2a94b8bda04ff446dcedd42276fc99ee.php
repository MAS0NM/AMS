<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <!-- <link rel="stylesheet" href="/Public/Home/css/base.css" />
    <link rel="stylesheet" href="/Public/Home/css/login.css" /> -->
    <link rel="stylesheet" href="../../../../Public/css/base.css" />
    <link rel="stylesheet" href="../../../../Public/css/login.css" />
    <title>打卡</title>
</head>

<body>
    <div id="container">
        <div class="hou">
            <a href="<?php echo U('Admin/Public/login');?>">
                <img src="../../../../Public/images/home.png" />
            </a>
        </div>
        <div id="bd">
            <div class="login1">
                <div class="login-top"></div>
                <div class="login-input">
                    <p class="user">
                        <label>员工号</label>
                        <input type="text" name="empno" id="empno" value="" />
                    </p>
                    <p class="msg">
                        <span id="empnocheck"></span>
                    </p>
                </div>
                <div class="login-btn">
                    <a href="javascript:;" class="btn" id="btn1"><span>签到</span></a>
                </div>
                <div class="login-btn">
                    <a href="javascript:;" class="btn" id="btn2"><span>签退</span></a>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="/Public/Home/js/jquery.js"></script>
<script type="text/javascript" src="/Public/Home/js/common.js"></script>
<script type="text/javascript">
    var height = $(window).height();
    $("#container").height(height);
    $("#bd").css("padding-top", height / 2 - $("#bd").height() / 2);

    $(window).resize(function() {
        var height = $(window).height();
        $("#bd").css("padding-top", $(window).height() / 2 - $("#bd").height() / 2);
        $("#container").height(height);

    });

    $('#remember').focus(function() {
        $(this).blur();
    });

    $('#remember').click(function(e) {
        checkRemember($(this));
    });

    function checkRemember($this) {
        if (!-[1, ]) {
            if ($this.prop("checked")) {
                $this.parent().addClass('checked');
            } else {
                $this.parent().removeClass('checked');
            }
        }
    }

    //ajax无刷新校验员工号
    //var urlpath = '<?php echo ($smarty["const"]["/index.php/Home/Index"]); ?>'; 
    // function checkno(){
    //     var empno = document.getElementById('empno').value;
    //     var xhr = new XMLHttpRequest();

    //     xhr.onreadystatechange = function(){
    //         if (xhr.readyState == 4) {
    //             document.getElementById('empnocheck').innerHTML = xhr.responseText;
    //         }
    //     }
    //     xhr.open('get','/index.php/Home/Index/insign/empno/'+empno);
    //     xhr.send(null);
    // }

    $(function() {
        //给按钮绑定点击事件
        $('#btn1').on('click', function() {
            //var name = $("#empno").val();

            //window.location.href = '/index.php/Home/Index/insign/empno/'+name;
            var empno = document.getElementById('empno').value;
            var xhr = new XMLHttpRequest();

            xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4) {
                        document.getElementById('empnocheck').innerHTML = xhr.responseText;
                    }
                }
                //alert('/index.php/Home/Index/insign/empno/'+empno);
            xhr.open('get', '/index.php/Home/Index/insign/empno/' + empno);
            xhr.send(null);
        });

        $('#btn2').on('click', function() {
            // var name = $("#empno").val();

            // window.location.href = '/index.php/Home/Index/offsign/empno/'+name;
            var empno = document.getElementById('empno').value;
            var xhr = new XMLHttpRequest();

            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4) {
                    document.getElementById('empnocheck').innerHTML = xhr.responseText;
                }
            }
            xhr.open('get', '/index.php/Home/Index/offsign/empno/' + empno);
            xhr.send(null);
        });
    });
</script>

</html>