<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Monopoly-Game</title>
    <script src="JS/jquery-3.6.0.min.js"></script>
    <script>
        $(function () {
            const B1 = $("#button1");
            const B2 = $("#button2");
            B2.attr("disabled", true);

            B1.click(function () {
                B1.attr("disabled", true);
                B2.attr("disabled", true);
                setTimeout(function () {
                    B1.attr("disabled", true);
                    B2.attr("disabled", false);
                }, 2150);
            });

            B2.click(function () {
                B1.attr("disabled", true);
                B2.attr("disabled", true);
                setTimeout(function () {
                    B1.attr("disabled", false);
                    B2.attr("disabled", true);
                }, 2150);
            })
        })
    </script>
    <style>
        html {
            height: 100%;
        }

        body {
            background: rgba(0, 0, 0, 0) url("Interface/InterfaceImg/Background.png") no-repeat;
            box-sizing: border-box;
            background-size: 100% 100%;
            min-width: 50%;
        }

        td {
            box-sizing: border-box;
            background-color: white;
            padding: 0;
            width: 6%;
            height: 6%;
            border-radius: 10px;
            min-width: 50%;
        }

        .divTable {
            width: 60%;
            height: 48%;
        }

        .MapTable {
            background-color: aliceblue;
            table-layout: fixed;
            word-break: break-all;
            width: 80%;
            height: 64%;
            border-radius: 10px;
            margin-left: 30%;
            margin-top: 10%;
            box-sizing: border-box;
            border: 1px solid black;
        }

        img {
            border-radius: 10px;
            display: block;
            vertical-align: middle;
            max-width: 100%;
            margin: 0;
            z-index: 1;
        }

        .Dice1, .Dice2 {
            display: block;
            vertical-align: bottom;
            transform: scale(1);
            width: 100%;
            height: 100%;
            border: 0 double white;
            border-radius: 10px;
            overflow: hidden;
        }

    </style>
</head>
<body>
<div class="divTable">
    <table class="MapTable">
        <!--line1-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Music.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;filter:alpha(opacity=0)">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;filter:alpha(opacity=0);opacity: 0"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;filter:alpha(opacity=0)">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_2")%>;" style="z-index:1"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;filter:alpha(opacity=0);opacity: 0"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Library.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Gym.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/A1.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/A2.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/A3.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Swimming.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/A4.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/A5.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Tennis.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line2-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B8.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td class="DiceTd" colspan="2" rowspan="2"
                style="width:100%;height:100%;background-color:white;padding: 0 ">
                <div class="Dice1" style="margin:0 auto;width:90%;height:90%;background-color: skyblue;">
                    <table>
                        <tr>
                            <td>
                                <div style="text-align: center;margin:0 auto">
                                    <img id="dice1" src="Dice/DiceImg/3.png" style="width:80%;height:80%;margin:auto"
                                         alt="Dice"/><br/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;margin:0 auto">
                                <input type="button" id="button1" onclick="carouselDice1();" value="start"
                                       style="width:50%;height:15%;text-align: center;background: yellow;border-radius: 5px;align-self: center;">
                            </td>
                        </tr>
                        <script src="Dice/DiceScript/CarouselDice1.js">
                        </script>
                    </table>
                </div>
            </td>
            <!-- Player 1 information -->
            <td colspan="2" rowspan="2" style="background-color: floralwhite;">
                <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" alt="player1_avatar"
                     class="#avatar1" style="margin:0;"/>
            </td>
            <td class="DiceTd" colspan="2" rowspan="2"
                style="width:100%;height:100%;background-color:white;padding: 0 ">
                <div class="Dice2" style="margin:0 auto;width:90%;height:90%;background-color: lightpink;">
                    <table>
                        <tr>
                            <td>
                                <div style="text-align: center;margin:0 auto"> <!-- 158.22 -->
                                    <img id="dice2" src="Dice/DiceImg/6.png" style="width:80%;height:80%;margin:auto"
                                         alt="Dice"/><br/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;margin:0 auto">
                                <input type="button" id="button2" onclick="carouselDice2();" value="start"
                                       style="width:50%;height:15%;text-align: center;background: yellow;border-radius: 5px;align-self: center;">
                            </td>
                        </tr>
                        <script src="Dice/DiceScript/CarouselDice2.js">
                        </script>
                    </table>
                </div>
            </td>
            <!-- Player 2 information -->
            <td colspan="2" rowspan="2" style="background-color: floralwhite;">
                <img src="<%=request.getContextPath()+session.getAttribute("avatar_2")%>" alt="player2_avatar"
                     class="#avatar2" style="margin:0;"/>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Canteen.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line3-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B6.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Hospital.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line4-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B4.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td colspan="4" rowspan="1"
                style="background-color: whitesmoke;height:100%;width:100%;background-image: url('Interface/ElementImg/player_background.png');">
                <p style="text-align: center;color: ghostwhite;font-family: Consolas,serif;font-size:23px;">
                    Player1:${sessionScope.player1_username}
                </p>
            </td>
            <td colspan="4" rowspan="1"
                style="background-color: whitesmoke;height:100%;width:100%;background-image: url('Interface/ElementImg/player_background.png')">
                <p style="text-align: center;color: ghostwhite;font-family: Consolas,serif;font-size:23px;">
                    Player2:${sessionScope.player2_username}
                </p>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/T7.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line5-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Medical.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td colspan="4" rowspan="1"
                style="background-color: whitesmoke;height:100%;width:100%;background-image: url('Interface/ElementImg/player_money_background.png');">
                <p style="text-align: center;font-family: Consolas,serif;width:100%;height:100%">
                    <span id="player1_money"
                          style="color:cornflowerblue;font-size:20px">$Remaining credits:&nbsp; ${sessionScope.player1_money}</span>
                </p>
            </td>
            <td colspan="4" rowspan="1"
                style="background-color: whitesmoke;height:100%;width:100%;background-image: url('Interface/ElementImg/player_money_background.png');">
                <p style="text-align: center;font-family: Consolas,serif;width:100%;height:100%">
                    <span id="player2_money"
                          style="color:deeppink;font-size:20px">$Remaining credits:&nbsp; ${sessionScope.player2_money}</span>
                </p>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/T6.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line6-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B12.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_2")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td rowspan="1" colspan="4">
                <form>
                    <div>
                        <a id="Player1Dice">

                        </a>
                    </div>
                </form>
            </td>
            <td rowspan="1" colspan="4">
                <form>
                    <div>
                        <a id="Player2Dice">

                        </a>
                    </div>
                </form>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Ceramic.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line7-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B2.png');background-size:100% 100%;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td rowspan="1" colspan="4">
                <form>
                    <div>
                        <a id="Player1Order">

                        </a>
                    </div>
                </form>
            </td>
            <td rowspan="1" colspan="4">
                <form>
                    <div>
                        <a id="Player2Order">

                        </a>
                    </div>
                </form>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B11.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!--line8-->
        <tr>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B1.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_1")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;">
                            <img src="<%=request.getContextPath()+session.getAttribute("avatar_2")%>" style="z-index:1;"
                                 alt="">
                        </td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B3.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B5.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B7.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/Center.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/T1.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B902.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B901.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B1001.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width:100%;height:100%;background-image:url('Interface/InterfaceImg/B1002.png');background-size:cover;border-radius: 10px">
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                    <tr>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                        <td style="width:50%;height:50%;border-radius: 10px;opacity: 0;"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script>

    </script>
</div>
</body>
</html>