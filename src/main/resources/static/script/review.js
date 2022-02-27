const url = new URL(window.location.href);

const urlParam = url.searchParams;
const bookParam = urlParam.get("book");
const paramSplit = bookParam.split(" ");

let query;
if(bookParam.length === paramSplit[0].length){
    query = param;
}
else{
    query = paramSplit[1];
}

$(document).ready(function(){
    $.ajax({
        method : "get",
        url : "https://dapi.kakao.com/v3/search/book",
        data:{query : query, target: 'isbn'},
        headers : {
            Authorization : "KakaoAK c730f31a8e95f8c1963fb0da9695184b"
        }
    }).done( data =>{
        const e = data.documents[0];

        let thumbnail = e.thumbnail;
        if(thumbnail == "") thumbnail = "/media/noImage.png";
        const d = new Date(e.datetime);

        const str = `
            <div class="bookInfo">
                <img class="thumbnail" src="${thumbnail}">
                <div class="info">
                    <div class="txt"><span class="title">${e.title}</span></div>
                    <div class="txt"><span class="authors">저자: ${e.authors}</span></div>
                    <div class="txt"><span class="publisher">출판사: ${e.publisher}</span></div>
                    <div class="txt"><span class="date">출판날짜: ${d.getFullYear()}년 ${d.getMonth()}월 ${d.getDate()}일</span></div>
                    <div class="contentsTxt"><span class="contents">${e.contents}</span></div>
                </div>
            </div>
        `;

        $("div.reviewWrap").prepend(str);
    });

    $.ajax({
        method : "post",
        url : "/getReviews",
        data : {isbn : `${bookParam}`},
    }).done(res =>{
        // console.log(res);
        for(let i=res.length-1; i>=0; i--){
            const e = res[i];
            const str = `
                <table class="review">
                    <tr>
                        <td class="id" rowspan="2"><span class="id">${e.id}</span></td>
                        <td class="reviewTxt"><span class="reviewTxt">${e.comment}</span></td>
                    </tr>
                    <tr>
                        <td class="info">
                            <span class="date">${e.createdAt}</span>
                            <button class="modifyBtn">수정</button>
                            <button class="deleteBtn">삭제</button>
                        </td>
                    </tr>
                </table>
            `;
            $("div.reviews").append(str);
        }
    })


});

function saveReview(){
    const isbn = bookParam;
    const id = $('input.log').val();
    const comment = $('textarea#comment').val();

    if(comment == ""){
        alert("리뷰 내용을 입력해주세요");
    }
    else{
        const dataStr = JSON.stringify({
            "isbn" : isbn,
            "id" : id,
            "comment" : comment
        })

        $.ajax({
            method: "post",
            url: "/save",
            dataType : "json",
            contentType : "application/json",
            data: dataStr
        }).done(res =>{
            if(res === true){
                window.location.reload();
            }
            else{
                alert("이미 해당 책에 작성된 리뷰가 있습니다")
            }
        })
    }
}
