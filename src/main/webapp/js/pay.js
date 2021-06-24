var name="1";
var address;
var phone;

function getadd(getname,getaddress,getphone) {
    name=getname;
    address=getaddress;
    phone=getphone;
}

function payMoney() {
    var totalmoney = document.getElementById("totalmoney").innerText;
    var totalnumber = document.getElementById("totalnumber").innerText;
    if(name ==1){
        alert("请选择收货地址");
    }else {
        $.ajax({
            type:"post",
            url:"../pay/payMoney",
            cache: true,
            datatype:"json",
            data:{
                name:name,
                address:address,
                phone:phone,
                totalmoney,totalmoney,
                totalnumber,totalnumber
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
            url: "../info/addAddress",
            cache: true,
            datatype: "json",
            data:{
                address:address,
                postalcode:postalcode,
                phone:phone,
                name:name
            },
            success: function (data) {
                window.location.href = '../pay/inpay';
            },
            error: function () {
            }
        });

    }else {
        alert("输入的手机号不对")
    }
}