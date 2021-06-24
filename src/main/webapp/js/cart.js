
var totalmoney=0;
var totalnumber=0;

function getMoneyAndNumber() {
    var names = document.getElementsByName("items");
    for (var i = 0; i < names.length; i++) {
        var value = names[i].outerHTML;
        value = value.match(/value="(\S*)"/)[1];
        value = value.split(",");
        var money = value[0];
        var number = value[1];
        if(names[i].checked){
            totalmoney += parseInt(money);
            totalnumber += parseInt(number);
        }else{

        }
    }
    // totalmoney = NumberObject.toFixed(2);
    document.getElementById("J_SelectedItemsCount").innerText = totalnumber;
    document.getElementById("J_Total").innerText = totalmoney;
    totalmoney=0;
    totalnumber=0;
}

function deleteCartByState() {
    var msg ="您确定要删除选中的商品吗？"
    var names = document.getElementsByName("items");
    var flag = false; //标记判断是否选中一个
    for (var i = 0; i < names.length; i++) {
        if(names[i].checked){
            flag = true;
            break;
        }
    }
    if (!flag) {
        alert("请最少选择一件商品进行删除");
        return false;
    }else{
        if(confirm(msg)==true){
            $.ajax({
                type:"post",
                url:"../cart/deleteCartByState",
                cache: true,
                datatype:"json",
                data:{
                },
                success: function (data) {
                    window.location.href = 'incart';
                },
                error: function () {
                }
            });
        }
    }
}

function changeCartIfChecked(state) {
    $.ajax({
        type:"post",
        url:"../cart/changeCartIfChecked",
        cache: true,
        datatype:"json",
        data:{
            state:state
        },
        success: function (data) {
        },
        error: function () {
        }
    });
}

function updateaddcart(model,color,memoryCapacity,number) {
    console.log(number++);
    $.ajax({
        type:"post",
        url:"../cart/updatacart",
        cache: true,
        datatype:"json",
        data:{
            model:model,
            color:color,
            memoryCapacity:memoryCapacity,
            number:number
        },
        success: function (data) {
            window.location.href = 'incart';
        },
        error: function () {
        }
    });

}

function updatedelcart(model,color,memoryCapacity,number) {
    console.log(number--);
    if(number>=1){
        $.ajax({
            type:"post",
            url:"../cart/updatacart",
            cache: true,
            datatype:"json",
            data:{
                model:model,
                color:color,
                memoryCapacity:memoryCapacity,
                number:number
            },
            success: function (data) {
                window.location.href = 'incart';
            },
            error: function () {
            }
        });
    }else {
        alert("不能再减少了哦！");
        window.location.href = 'incart';
    }
}


function deletecart(model,color,memoryCapacity) {
    var msg= "你确定要删除该商品吗？";
    if(confirm(msg)==true){
        $.ajax({
            type:"post",
            url:"../cart/deleteByModel",
            cache: true,
            datatype:"json",
            data:{
                model:model,
                color:color,
                memoryCapacity:memoryCapacity
            },
            success: function (data) {
                window.location.href = 'incart';
            }
        });
    }
}

function getpay(id,model,money,number,color,memoryCapacity) {
    getMoneyAndNumber();
    $.ajax({
        type:"post",
        url:"../cart/readyPay",
        cache: true,
        datatype:"json",
        data:{
            model:model,
            color:color,
            memoryCapacity:memoryCapacity
        },
        success: function (data) {

        },
        error: function () {
        }
    });
}

function topay() {
    var names = document.getElementsByName("items");
    var flag = false; //标记判断是否选中一个
    for (var i = 0; i < names.length; i++) {
        if(names[i].checked){
            $.ajax({
                type: "post",
                url: "../pay/topay",
                cache: true,
                datatype: "json",
                success: function (data) {
                    window.location.href = '../pay/inpay';
                },
                error: function () {
                }
            });
            flag = true;
            break;
        }
    }
    if (!flag) {
        alert("请最少选择一件商品");
        return false;
    }
}