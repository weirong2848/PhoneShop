var color;
var memoryCapacity;

function getcolor1(){
    color = document.getElementById("color1").innerText;
}
function getcolor2(){
    color = document.getElementById("color2").innerText;
}
function getcolor3(){
    color = document.getElementById("color3").innerText;
}
function getmemoryCapacity1(){
    memoryCapacity = document.getElementById("memoryCapacity1").innerText;
}
function getmemoryCapacity2(){
    memoryCapacity = document.getElementById("memoryCapacity2").innerText;
}
function getmemoryCapacity3(){
    memoryCapacity = document.getElementById("memoryCapacity3").innerText;
}

function addcart() {
    var model = document.getElementById("model").innerText;
    var price1 = document.getElementById("price").innerText;
    var number = document.getElementById("number").value;
    if(color!=null && memoryCapacity!=null)
        if(number!=0){
            $.ajax({
                type:"post",
                url:"../cart/addCammodity",
                cache: true,
                datatype:"json",
                data:{
                    model:model,
                    price1:price1,
                    color:color,
                    memoryCapacity:memoryCapacity,
                    number:number
                },
                success: function (data) {
                    alert("添加成功");
                },
                error: function () {
                }
            });
            alert("添加成功");
        }else{
            alert("请选择商品数量")
        } else {
        alert("请选择颜色和内存容量");
    }
}
function getreadpay() {
    var model = document.getElementById("model").innerText;
    var price1 = document.getElementById("price").innerText;
    var number = document.getElementById("number").value;
    if(color!=null && memoryCapacity!=null){
        if(number!=0){
            $.ajax({
                type:"post",
                url:"../pay/getReadPayCommodity",
                cache: true,
                datatype:"json",
                data:{
                    model:model,
                    price1:price1,
                    color:color,
                    memoryCapacity:memoryCapacity,
                    number:number
                },
                success: function (data) {
                    window.location.href = '../pay/getinpay';
                },
                error: function () {
                }
            });
        }else {
            alert("请选择商品数量");
        }

    }else {
        alert("请选择颜色和内存容量");
    }
}