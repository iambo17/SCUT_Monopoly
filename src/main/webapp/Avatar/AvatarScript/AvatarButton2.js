let avatars2 = ["/AvatarImg/1.png", "/AvatarImg/2.png", "/AvatarImg/3.png", "/AvatarImg/4.png", "/AvatarImg/5.png", "/AvatarImg/6.png"];
let avatar_now2 = split_avatar2();
let index2 = split_index2();
let contextPath2 = split_contextPath2();

function split_avatar2() {
    if (document.getElementById("avatar2").src != null) {
        return document.getElementById("avatar2").src.split("/Avatar/")[1];
    }
}

function split_contextPath2() {
    if (document.getElementById("avatar2").src != null) {
        return document.getElementById("avatar2").src.split("/AvatarImg/")[0];
    }
}

function split_index2() {
    if (avatar_now2 != null) {
        return avatar_now2.split("/")[1].split(".")[0] - 1;
    }
}

function leftClick2() {
    if (index2 === 0) {
        index2 = 5;
    } else {
        if (1 <= index2 <= 5) {
            index2--;
        } else {
            alert("ERROR INDEX");
        }
    }
    document.form.avatar_2.value ="/Avatar" +  avatars2[index2];
    document.getElementById("avatar2").src = contextPath2 + avatars2[index2];
}

function rightClick2() {
    if (index2 === 5) {
        index2 = 0;
    } else {
        if (0 <= index2 <= 4) {
            index2++;
        } else {
            alert("ERROR INDEX");
        }
    }
    document.form.avatar_2.value ="/Avatar" +  avatars2[index2];
    document.getElementById("avatar2").src = contextPath2 + avatars2[index2];
}

