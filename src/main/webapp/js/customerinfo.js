function deladd(id) {
    $.ajax({
        type:"post",
        url:"delAddress",
        cache: true,
        datatype:"json",
        data:{
            id:id
        },
        success: function (data) {
            // window.location.href = 'inUserInfo';
        },
        error: function () {
        }
    });
}

function payMoney(orderid) {
    $.ajax({
        type: "post",
        url: "../pay/toPayMoney",
        cache: true,
        datatype: "json",
        data:{
            orderid:orderid
        },
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        success: function (result) {
            window.localStorage.setItem("payInfo",result);
            window.location.href = '../pay/inAlipay';
        },
        error: function () {
        }
    });
}

function removeOrder(orderid){
    var msg= "你确定要取消该订单吗？取消后不能恢复！";
    if(confirm(msg)==true){
        $.ajax({
            type: "post",
            url: "../pay/changeOrderStete",
            cache: true,
            datatype: "json",
            data:{
                orderid:orderid,
                state:2
            },
            success: function (data) {
                window.location.href = '../info/inUserInfo';
            },
            error: function () {
            }
        });
    }
}

function deleteOrder(orderid) {
    $.ajax({
        type: "post",
        url: "../pay/changeOrderIsdel",
        cache: true,
        datatype: "json",
        data:{
            orderid:orderid,
            isdel:1
        },
        success: function (data) {
            window.location.href = '../info/inUserInfo';
        },
        error: function () {
        }
    });
}

function addAddress() {

    var address = document.getElementById("address").value;
    var postalcode = document.getElementById("postalcode").value;
    var name = document.getElementById("name").value;
    var phone = document.getElementById("phone").value;
    var reg=/^[1][3,4,5,7,8][0-9]{9}$/;
    if(reg.test(phone)==true){
        $.ajax({
            type: "post",
            url: "addAddress2",
            cache: true,
            datatype: "json",
            data:{
                address:address,
                postalcode:postalcode,
                phone:phone,
                name:name
            },
            success: function (data) {
                window.location.href = 'inUserInfo';
            },
            error: function () {
            }
        });

    }else {
        alert("输入的手机号不对")
    }
}