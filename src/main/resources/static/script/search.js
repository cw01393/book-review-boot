const url = new URL(window.location.href);
const urlParam = url.searchParams;

const query = urlParam.get('query');
let page = urlParam.get('size');

if(page == null){
    page = "1"
};
// console.log(query);
const books = [];

$(document).ready(function getBooksData(){
    $.ajax({
        method : "get",
        url : "https://dapi.kakao.com/v3/search/book",
        data:{query : query, size : 12, page : page},
        headers : {
            Authorization : "KakaoAK c730f31a8e95f8c1963fb0da9695184b"
        }
    }).done( data =>{
        // console.log(data.documents);
        data.documents.forEach(element => {
            books.push(element);
        });
        books.forEach(e =>{
            // console.log(e);
            let thumbnail = e.thumbnail;
            // console.log(thumbnail);
            if(thumbnail == "") thumbnail = "/media/noImage.png";
            const str = `
                    <div class="result">
                        <img class="thumbnail" src="${thumbnail}" alt="">
                        <div class="txt"><span class="title">${e.title}</span></div>
                        <div class="txt"><span class="authors">저자: ${e.authors}</span></div>
                        <div class="txt"><span class="publisher">출판사: ${e.publisher}</span></div>
                    </div>`;
            $("div.resultArray").append(str);
        });
    });
});