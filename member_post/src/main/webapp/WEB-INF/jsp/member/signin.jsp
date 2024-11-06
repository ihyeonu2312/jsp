<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
       <jsp:include page="../common/head.jsp" />
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" integrity="sha512-3j3VU6WC5rPQB4Ld1jnLV7Kd5xr+cq9avvhwqzbH/taCRNURoeEpoPBK9pDyeukwSxwRPJ8fDgvYXd6SkaZ2TA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  </head>
<body>
    <div class="wrap">
       <jsp:include page="../common/header.jsp" />
        <main class="container">
            <h2 class="text-center mt-5">로그인</h2>
            <form name="frm"  method="post" class="mx-auto col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4 col-xxl-3 card p-2 mt-5">
                 <input type="text" class="form-control my-2" id="id" placeholder="아이디" name="id" value="${cookie['remember-id'].value}">
                 <input type="password" class="form-control my-2" id="pw" placeholder="비밀번호" name="pw">
              
                 <div class="form-check form-switch my-2">
                    <input class="form-check-input" type="checkbox" id="mySwitch" name="remember-id" value="yes" ${empty cookie['remember-id'] ? '' : 'checked'}>
                    <label class="form-check-label" for="mySwitch">아이디 저장</label>
                  </div>
                  <button class="btn btn-primary my-2">로그인</button>
            </form>
        </main>
       		<jsp:include page="../common/footer.jsp" />
    </div>
	<script>
	// 아이디저장에 체크를 안할 시
	
	
	// 아이디저장에 체크 후 로그인
	$(".form-check-label").click(function() {
		event.preventDefault();
		const checked = $(this).prev().find("input:checkbox").prop("checked");
    	console.log(checked);
    	if(checked) {
    		 $.cookie('form', 'yes');
    	}
		
		
	})
	
	</script>
</body>
</html>