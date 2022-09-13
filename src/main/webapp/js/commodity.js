var color;
var memoryCapacity;

function getColor(color) {
    if (color != null && this.color == color) {
        this.color = null;
    } else {
        this.color = color
    }
    if (this.color != null) {
        $("li[id^='memoryCapacity']").css("opacity", "1");
        $("li[id^='memoryCapacity']").css("pointer-events", "auto");
        var commodityId = document.getElementById("commodityId").innerText;
        $.ajax({
            type: "post",
            url: "../main/searchInfoByColor",
            cache: true,
            datatype: "json",
            data: {
                commodityId: commodityId,
                color: this.color
            },
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    document.getElementById("memoryCapacity" + data[i]).style = "opacity: 0.2;pointer-events:none";
                }
            },
            error: function () {
            }
        });
    } else {
        $("li[id^='memoryCapacity']").css("opacity", "1");
        $("li[id^='memoryCapacity']").css("pointer-events", "auto");
    }

    getMoney();
}

function getmemoryCapacity(memoryCapacity) {

    if (memoryCapacity != null && this.memoryCapacity == memoryCapacity) {
        this.memoryCapacity = null;
    } else {
        this.memoryCapacity = memoryCapacity;
    }
    if (this.memoryCapacity != null) {
        $("li[id^='color']").css("opacity", "1");
        $("li[id^='color']").css("pointer-events", "auto");
        var commodityId = document.getElementById("commodityId").innerText;
        $.ajax({
            type: "post",
            url: "../main/searchInfoByMemoryCapacity",
            cache: true,
            datatype: "json",
            data: {
                commodityId: commodityId,
                memoryCapacity: this.memoryCapacity
            },
            success: function (data) {
                var str = '';
                for (var i = 0; i < data.length; i++) {
                    document.getElementById("color" + data[i]).style = "opacity: 0.2;pointer-events:none";
                }
            },
        });
    } else {
        $("li[id^='color']").css("opacity", "1");
        $("li[id^='color']").css("pointer-events", "auto");
    }

    getMoney();
}

function getMoney() {
    if (this.color != null && this.memoryCapacity != null) {
        var commodityId = document.getElementById("commodityId").innerText;
        $.ajax({
            type: "post",
            url: "../main/searchInfoMoneyByMemoryCapacityAndColor",
            cache: true,
            datatype: "json",
            data: {
                commodityId: commodityId,
                memoryCapacity: this.memoryCapacity,
                color: this.color
            },
            success: function (data) {
                document.getElementById("price").innerText = data;
            },
            error: function () {
            }
        });
    }
}

function addcart() {
    var category = document.getElementById("category").innerText
    var model = document.getElementById("model").innerText;
    var price1 = document.getElementById("price").innerText;
    var number = document.getElementById("number").value;
    let  colorList = $("#colorList").val();
    var  memoryCapacitList = $("#memoryCapacitList").val();
    colorList = colorList.replace(/\[|]/g,'');
    memoryCapacitList = memoryCapacitList.replace(/\[|]/g,'');
    if (colorList == "" || color != null){
        if(memoryCapacitList == "" || memoryCapacity != null){
            if (number != 0) {
                $.ajax({
                    type: "post",
                    url: "../cart/addCammodity",
                    cache: true,
                    datatype: "json",
                    data: {
                        model: model,
                        price1: price1,
                        color: color,
                        memoryCapacity: memoryCapacity,
                        number: number,
                        category:category
                    },
                    success: function (data) {
                        alert("添加成功");
                    },
                    error: function () {
                    }
                });
                alert("添加成功");
            }else{
                alert("请选择商品数量");
                return;
            }
        }else{
            alert("请选择内存容量");
            return;
        }
    }else{
        alert("请选择颜色");
        return;
    }
}

function getreadpay() {
    var model = document.getElementById("model").innerText;
    var price1 = document.getElementById("price").innerText;
    var number = document.getElementById("number").value;
    let  colorList = $("#colorList").val();
    var  memoryCapacitList = $("#memoryCapacitList").val();
    colorList = colorList.replace(/\[|]/g,'');
    memoryCapacitList = memoryCapacitList.replace(/\[|]/g,'');
    if (colorList == "" || color != null) {
       if(memoryCapacitList == "" || memoryCapacity != null){
           if (number != 0) {
               $.ajax({
                   type: "post",
                   url: "../pay/getReadPayCommodity",
                   cache: true,
                   datatype: "json",
                   data: {
                       model: model,
                       price1: price1,
                       color: color,
                       memoryCapacity: memoryCapacity,
                       number: number
                   },
                   success: function (data) {
                       window.location.href = '../pay/getinpay';
                   },
                   error: function () {
                   }
               });
           } else {
               alert("请选择商品数量");
               return;
           }
       }else{
           alert("请选择内存容量");
           return;
       }
    } else {
        alert("请选择颜色");
        return;
    }
}