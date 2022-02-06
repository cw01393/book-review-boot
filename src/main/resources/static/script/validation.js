function joinUser(form){
    const id = form.id.value;
    const pw = form.pw.value;
    const pwCheck = form.pwCheck.value;
    const name = form.name.value;

    if(id === "" || pw ==="" || pwCheck ==="" || name ===""){
        alert("모든 정보를 입력해주세요")
    }
    else{
        if(passwordCheck(pw,pwCheck) && requiredCheck()){
            const dataStr = JSON.stringify({
                "id" : id,
                "pw" : pw,
                "name" : name
            });

            $.ajax({
                method : "post",
                url: "/join",
                dataType: "json",
                contentType: "application/json",
                data : dataStr
            }).done(res =>{
                if(res === true){
                    alert("회원가입이 완료되었습니다")
                    location.href = "/?center=login";
                }
                else{
                    alert("이미 사용중인 아이디입니다");        }
            })
        }
    }
}

function passwordCheck(pw,pwCheck){
    if(pw === pwCheck) return true;
    else{
        alert("비밀번호가 일치하지 않습니다");
        return false;
    }
}

function allCheck(form){
    const options = form.option;

    for(let i=0; i<options.length; i++){
        options[i].checked = form.optionAll.checked;
    }
}

function requiredCheck(){
    const required = document.getElementsByName("required");
    let cnt = 0;

    for(let i=0; i<required.length; i++){
        if(required[i].checked) cnt ++;
    }
    if(cnt == required.length) return true;
    else{
        alert("필수동의 항목에 동의가 필요합니다");
        return false;
    }
}

function login(form){
    const id = form.id.value;
    const pw = form.pw.value;

    if(id === "" || pw === ""){
        alert("로그인 정보를 모두 입력해주세요")
    }
    else{
        $.ajax({
            method: "post",
            url: "/login",
            data : {"id" : id, "pw" : pw}
        }).done(res =>{
            if(res === true){
                location.href="/";
            }
            else{
                alert("로그인 정보를 다시 확인해주세요");
            }
        })
    }
}

function searchNext(){
    const query = $("#searchBar").val();
    if(query !== ""){
        location.href = `/?center=searchResult&query=${query}`;
    }
    else{
        alert("검색어를 입력해주세요");
    }
}