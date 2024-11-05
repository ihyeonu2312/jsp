<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
       <jsp:include page="../common/head.jsp" />
  </head>
  <body>
    <div class="wrap">
      <jsp:include page="../common/header.jsp" />
        <main class="container">
            <h2 class="text-center mt-5">회원가입</h2>
            <form name = "frm"class="mx-auto col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 col-xxl-3 card p-2 mt-5" method="post">
                 <input type="text" class="form-control my-2" id="id" placeholder="아이디" name="id">
                 <input type="password" class="form-control my-2" id="pw" placeholder="비밀번호" name="pw">
                 <input type="text" class="form-control my-2" id="name" placeholder="이름" name="name">
                 <input type="email" class="form-control my-2" id="email" placeholder="이메일" name="email">
                 <input type="text" class="form-control my-2" id="roadAddr" placeholder="" name="roadAddr" readonly>
                 <input type="text" class="form-control my-3" id="detailAddr" placeholder="상세주소" name="detailAddr">
                 <div class="input-group my-2">
                    <input type="text" class="form-control" id="email" placeholder="도로명검색" name="email">
                    <button class="btn btn-primary" type="button" id="search">검색</button>
                  </div>
                  <ul class="list-group search-result-wrap">
                   
                  </ul>
    
                  <button class="btn btn-primary my-2">가입하기</button>
            </form>
        </main>
       	<jsp:include page="../common/footer.jsp" />
    </div>
    <script>
        $("#search").click(function() {
            const keyword = $(this).prev().val();
            if(!keyword) return;

            const data =  {
                keyword,
                confmKey : 'devU01TX0FVVEgyMDI0MTAyOTEyMTYxNTExNTE5OTg=',
                currentPage : 1,
                currentPage : 100,
                resultType : 'json'
            };
            console.log(data);

            $.ajax({
                url : "https://business.juso.go.kr/addrlink/addrLinkApiJsonp.do",
                type : 'get',
                data,
                dataType : 'jsonp',
                crossDomain : true,
                success : function(data) {
                    console.log(data.results.juso);

                    let str =''
                    for(let i in data.results.juso) {
                        str +=`<li class="list-group-item"><a href="#" class="small">
                        \${data.results.juso[i].roadAddr}</a></li>`;
                        
                    }
                    $("ul.search-result-wrap").html(str);
                },
                error : function(xhr, msg) {
                    console.log(msg);
                    
                }
            })

            $("ul.search-result-wrap").on("click", "a", function() {
                console.log(event);
                $("#roadAddr").val($(this).text().trim()); // 주소 공백 있을시 $("#roadAddr").val($(this).text().trim);
                $(this).closest("ul").empty();
            })
        });
     </script>
</body>
</html>