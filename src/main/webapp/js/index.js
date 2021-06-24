function dengru() {//登录的js方法
    var username = document.getElementById("logUsername").value;
    var password = document.getElementById("logPassword").value;
    if(username!=""||password!=""){
        if(username!=""){
            if(password!=""){
                $.ajax({
                    type: "post",
                    url: "login/dengru",
                    cache: false,
                    dataType: 'json',
                    data:{
                        username:username,
                        password:password
                    },
                    success: function (data) {
                        if(data == 11){
                            alert("用户不存在");
                        }else {
                            if(data == 12){
                                alert("密码错误");
                            }else {
                                if(data ==1){
                                    alert("欢迎管理员");
                                }else {
                                    window.location.href = "main/success";
                                }
                            }
                        }
                    }
                });
            }else {
                alert("密码输入不能有空");
            }
        }else {
            alert("用户名输入不能为空");
        }
    }else {
        alert("用户名和密码输入不能为空");
    }
}

function zhuce() {//注册的js方法
    var username =  document.getElementById("username").value;
    var password1 =  document.getElementById("password1").value;
    var passwoed2 =  document.getElementById("password2").value;

    if(username!=""||password1!=""||passwoed2!="") {
        if(username!=""){
            if(password1!=""){
                if(passwoed2!=""){
                    if (password1 == passwoed2) {
                        $.ajax({
                            type: "post",
                            url: "login/index",
                            cache: false,
                            dataType: 'json',
                            data:{
                                username:username,
                                password:password1,
                            },
                            success: function (data) {
                                if(data == true){
                                    alert("注册成功");
                                    window.location.href = "index.jsp";
                                }else {
                                    alert("用户名存在");
                                }
                            },
                            error: function () {
                            }
                        });
                    } else {
                        alert("两次输入密码不一致");
                    }
                }else {
                    alert("输入的确认密码不能为空");
                }
            }else {
                alert("密码输入不能为空")
            }

        }else {
            alert("用户名输入不能为空");
        }
    }else{
        alert("用户名、密码和确认密码输入不能为空");
    }
}

$(function() {
    $("#create").click(function() {
        check_register();
        return false;
    })
    $("#login").click(function() {
        check_login();
        return false;
    })
    $('.message a').click(function() {
        $('form').animate({
            height: 'toggle',
            opacity: 'toggle'
        }, 'slow');
    });
})