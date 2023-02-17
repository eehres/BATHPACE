function CheckAddProduct() {

	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var perfume = document.getElementById("perfume");
	
	// 상품아아디 체크
	if (!check(/(^B|^J|^U)[0-9]{1,11}$/, productId,
			"[상품 코드]\nB,J,U와 숫자를 조합하여 2~12자까지 입력하세요\n첫 글자는 반드시 B,J,U 셋 중 하나로 시작하세요"))
		return false;
	// 상품명 체크
	if (name.value.length < 1 || name.value.length > 30) {
		alert("[상품명]\n최소 1자에서 최대 30자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 상품 가격 체크
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice,
			"[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;
		
	if (!check(/(F|M|O)$/, perfume,
			"[향수 코드]\nF, M, O 중 하나를 입력하세요.\n"))
		return false;

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newProduct.submit()
}
