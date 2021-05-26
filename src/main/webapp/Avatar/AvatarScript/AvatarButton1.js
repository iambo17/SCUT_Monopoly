let avatars1 = ["/AvatarImg/1.png", "/AvatarImg/2.png", "/AvatarImg/3.png", "/AvatarImg/4.png", "/AvatarImg/5.png", "/AvatarImg/6.png"];
let avatar_now1 = split_avatar1();
let index1 = spilt_index1();
let contextPath1 = split_contextPath1();

function split_avatar1() {
    if (document.getElementById("avatar1").src != null) {
        return document.getElementById("avatar1").src.split("/Avatar/")[1];
    }
}

function split_contextPath1() {
    if (document.getElementById("avatar1").src != null) {
        return document.getElementById("avatar1").src.split("/AvatarImg/")[0]
    }
}

function spilt_index1() {
    if (avatar_now1 != null) {
        return avatar_now1.split("/")[1].split(".")[0] - 1;
    }
}

function leftClick1() {
    if (index1 === 0) {
        index1 = 5;
    } else {
        if (1 <= index1 <= 5) {
            index1--;
        } else {
            alert("ERROR INDEX");
        }
    }
    document.form.avatar_1.value ="/Avatar" + avatars1[index1];
    document.getElementById("avatar1").src = contextPath1 + avatars1[index1];
}

function rightClick1() {
    if (index1 === 5) {
        index1 = 0;
    } else {
        if (0 <= index1 <= 4) {
            index1++;
        } else {
            alert("ERROR INDEX");
        }
    }
    document.form.avatar_1.value ="/Avatar" +  avatars1[index1];
    document.getElementById("avatar1").src = contextPath1 + avatars1[index1];
}
