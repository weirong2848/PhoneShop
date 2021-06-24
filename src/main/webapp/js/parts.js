function addcart() {
    var username = document.getElementById("username").innerText;
    var model = document.getElementById("model").innerText;
    var price = document.getElementById("price").innerText;
    var number = document.getElementById("number").value;
    if(number!=0){
        $.ajax({
            type:"post",
            url:"../cart/addparts",
            cache: true,
            datatype:"json",
            data:{
                username:username,
                model:model,
                price:price,
                number:number
            },
            success: function (data) {
                alert("添加成功");
            },
            error: function () {
            }
        });
        alert("添加成功");
    }else {
        alert("请选择商品数量");
    }
}