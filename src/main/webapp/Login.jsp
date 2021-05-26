<%--
  Created by IntelliJ IDEA.
  User: 20400
  Date: 2021/5/5
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Monopoly-Game-Login</title>
    <script src="JS/jquery-3.6.0.min.js"></script>
    <style>
        html {
            height: 100%;
        }

        body {
            background-image: url("${pageContext.request.contextPath}/Interface/InterfaceImg/LoginBackground.png");
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-position: right top;
        }

        input {
            border: 2px solid midnightblue;
            border-radius: 10px;
        }

        .playerTable {
            border: 5px solid white;
            border-radius: 10px;
            margin-top: 138px;
            margin-left: 407px;
            background-color: aliceblue;
        }

        .playerBorder {
            border: 3px solid skyblue;
            border-radius: 10px;
        }

        .td_top {
            width: 320px;
            height: 50px;
            text-align: center;
        }

        .td_left {
            width: 120px;
            height: 50px;
            text-align: left;
        }

        .td_right {
            width: 200px;
            height: 50px;
        }

        .p_top {
            font: 30px Consolas;
            color: #40E0D0;
        }

        .p_left {
            font: 15px Consolas;
            color: royalblue;
        }

        #login {
            width: 100px;
            height: 40px;
            background: #FFD026;
            border-radius: 20px;
            align-self: center;
        }
    </style>

</head>
<body>
<form name="form" action="${pageContext.request.contextPath}/InitServlet" method="get">
    <div style="text-align:center">
        <table class="playerTable">
            <tr>
                <td>
                    <label>
                        <%--隐藏域表单信息--%>
                        <input name="avatar_1" id="avatar_1" value="/Avatar/AvatarImg/3.png" type="hidden">
                        <input name="avatar_2" id="avatar_2" value="/Avatar/AvatarImg/1.png" type="hidden">
                    </label>
                </td>
            </tr>
            <tr>
                <!--play 1 information-->
                <td class="playerBorder">
                    <table>
                        <tr>
                            <td class="td_top" colspan="2">
                                <p class="p_top">Player 1</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="AvatarTd" colspan="2">
                                <table style="margin:0 auto;">
                                    <tr>
                                        <td class="button1" style="text-align: center">
                                            <button type="button" onclick="leftClick1();"
                                                    style="width:100%;height:20%;text-align: center;float:left">
                                                <-
                                            </button>
                                        </td>
                                        <td>
                                            <img id="avatar1" style="width:180px;height:180px"
                                                 src="${pageContext.request.contextPath}/Avatar/AvatarImg/3.png"
                                                 alt="Avatar"/>
                                            <%
                                                request.setCharacterEncoding("utf-8");
                                            %>
                                        </td>
                                        <td class="button1" style="text-align: center">
                                            <button type="button" onclick="rightClick1();"
                                                    style="width:100%;height:20%;text-align: center;float:right">
                                                ->
                                            </button>
                                        </td>
                                    </tr>
                                    <script src="Avatar/AvatarScript/AvatarButton1.js">
                                    </script>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_left" style="border:1px red">
                                <p class="p_left">Player1 name:</p>
                            </td>
                            <td class="td_right">
                                <label><input type="text" name="player1_username" placeholder="Enter player's name">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_left">
                                <p class="p_left">Player1 no:</p>
                            </td>
                            <td class="td_right">
                                <label><input type="text" name="player1_no" placeholder="Enter player's no."></label>
                            </td>
                        </tr>
                    </table>
                </td>
                <!--play 2 information-->
                <td class="playerBorder">
                    <table>
                        <tr>
                            <td class="td_top" colspan="2">
                                <p class="p_top">Player 2</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="AvatarTd" colspan="2">
                                <table style="margin:0 auto;">
                                    <tr>
                                        <td class="button2" style="text-align: center">
                                            <button type="button" onclick="leftClick2();"
                                                    style="width:100%;height:20%;text-align: center;float:left">
                                                <-
                                            </button>
                                        </td>
                                        <td>
                                            <img id="avatar2" style="width:180px;height:180px"
                                                 src="${pageContext.request.contextPath}/Avatar/AvatarImg/1.png"
                                                 alt="Avatar"/>
                                        </td>
                                        <td class="button2" style="text-align: center">
                                            <button type="button" onclick="rightClick2();"
                                                    style="width:100%;height:20%;text-align: center;float:right">
                                                ->
                                            </button>
                                        </td>
                                    </tr>
                                    <script src="Avatar/AvatarScript/AvatarButton2.js">
                                    </script>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_left" style="border:1px red">
                                <p class="p_left">Player2 name:</p>
                            </td>
                            <td class="td_right">
                                <label><input type="text" name="player2_username" placeholder="Enter player's name">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_left">
                                <p class="p_left">Player2 no:</p>
                            </td>
                            <td class="td_right">
                                <label>
                                    <input type="text" name="player2_no" placeholder="Enter player's no">
                                </label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- Login Button -->
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" id="login" value="进入游戏" style="border:3px double lightskyblue">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
