let random = 0;

function carouselDice2() {
    let flag = Math.floor(Math.random() * 4 + 1);
    let timeRun = 0;
    let final = Math.floor(Math.random() * 10 + 15);
    const interval = setInterval(function () {
        flag++;
        timeRun++;
        if (timeRun === final) {
            let dicePng = ["Dice/DiceImg/1.png", "Dice/DiceImg/2.png", "Dice/DiceImg/3.png", "Dice/DiceImg/4.png", "Dice/DiceImg/5.png", "Dice/DiceImg/6.png"];
            random = Math.floor(rand(6) + 1);
            document.getElementById("dice2").src = dicePng[random - 1];
            clearInterval(interval);
            $.get("/Monopoly_war_exploded/DiceServlet", {username: "2", dice: random}, function (data) {
                const order = data["order"];
                if(order==="system"){
                    $("#Player2Dice").text("玩家" + data["player"] + "向前前进 " + data["dice"] + " 步");
                    $("#Player2Order").text("到达" + data["where"] + ", 进行活动：" + data["function"] + " + "+data["number"]);
                    $("#player2_money").html("$Remaining credits:&nbsp;"+ data["money"]);
                }else {
                    $("#Player2Dice").text("玩家" + data["player"] + "向前前进 " + data["dice"] + " 步");
                    $("#Player2Order").text("下一条指令: " + data["order"] + ", 到达" + data["where"] + ", 需要 " + data["need"] + "学分")
                }
            }, "json")
            return;
        }
        if (flag > 4) {
            flag = 1;
        }
        let dz = document.getElementById("dice2");
        switch (flag) {
            case 1: {
                dz.src = "Dice/DiceImg/z2.png";
                break;
            }
            case 2: {
                dz.src = "Dice/DiceImg/z3.png";
                break;
            }
            case 3: {
                dz.src = "Dice/DiceImg/z4.png";
                break;
            }
            case 4: {
                dz.src = "Dice/DiceImg/z1.png";
                break;
            }
            default: {
                dz.src = "Dice/DiceImg/z1.png";
                flag = 1;
            }
        }
    }, 100);
}

function rnd(seed) {
    seed = (seed * 9301 + 49297) % 233280; //为何使用这三个数?
    return seed / (233280.0);
}

function rand(number) {
    let today = new Date();
    let seed = today.getTime();
    return rnd(seed) * number;
}







