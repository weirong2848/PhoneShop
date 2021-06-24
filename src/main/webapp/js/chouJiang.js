var gold;

$(function() {
    var $plateBtn = $('#plateBtn');
    var $result = $('#result');
    var $resultTxt = $('#resultTxt');
    var $resultBtn = $('#resultBtn');

    $plateBtn.click(function() {
        var money = "${user.gold}";
        if(money<500){
            alert("金币不足，不能抽奖");
            return;
        }{
            var data = [0, 1, 2, 3, 4, 5, 6, 7];
            var probability = [0.27,0.01,0.04,0.08,0.15,0.15,0.15,0.15];
            data = random(data,probability);
            switch (data) {
                case 1:
                    rotateFunc(1, 157, '恭喜你中了 <em>一等奖</em>');
                    gold=10000-500;
                    break;
                case 2:
                    rotateFunc(2, 65, '恭喜你中了 <em>二等奖</em>');
                    gold=5000-500;
                    break;
                case 3:
                    rotateFunc(3, 335, '恭喜你中了 <em>三等奖</em>');
                    gold=2500-500;
                    break;
                case 4:
                    rotateFunc(4, 247, '恭喜你中了 <em>四等奖</em>');
                    gold=1000-500;
                    break;
                case 5:
                    rotateFunc(5, 114, '谢谢参与，请再接再厉');
                    gold=0-500;
                    break;
                case 6:
                    rotateFunc(6, 24, '谢谢参与，请再接再厉');
                    gold=0-500;
                    break;
                case 7:
                    rotateFunc(7, 292, '谢谢参与，请再接再厉')
                    gold=0-500;
                    break;
                default:
                    rotateFunc(0, 203, '恭喜你中了 <em>参与奖</em>');
                    gold=500-500;
            }
        }
    });

    function random(arr1, arr2) {
        var sum = 0,
            factor = 0,
            random = Math.random();

        for(var i = arr2.length - 1; i >= 0; i--) {
            sum += arr2[i]; // 统计概率总和
        };
        random *= sum; // 生成概率随机数
        for(var i = arr2.length - 1; i >= 0; i--) {
            factor += arr2[i];
            if(random <= factor)
                return arr1[i];
        };
        return null;
    };

    var rotateFunc = function(awards, angle, text) { //awards:奖项，angle:奖项对应的角度
        $plateBtn.stopRotate();
        $plateBtn.rotate({
            angle: 0,
            duration: 5000,
            animateTo: angle + 1440, //angle是图片上各奖项对应的角度，1440是让指针固定旋转4圈
            callback: function() {
                $resultTxt.html(text);
                $result.show();
            }
        });
    };

    $resultBtn.click(function() {
        $result.hide();
        var money = "${user.gold}";
        if(money>=500){
            $.ajax({
                type: "post",
                url: "lotteryDraw",
                cache: true,
                datatype: "json",
                data:{
                    gold:gold
                },
                success: function (data) {
                    window.location.href = 'rencj';
                },
                error: function () {
                }
            });
        }else {
            return;
        }

    });
});