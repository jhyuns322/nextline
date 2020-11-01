function emailDuplCheck() {
	alert("이미 등록된 이메일입니다.")
}

function join() {
	alert("축하합니다. 회원가입이 완료되었습니다.")
	$('#modal-join').modal('hide');
}

function login() {
	alert("어서오세요. 김일화 님.")
	location.href="index";
}

function findEmail() {
	alert("(1/4) DB에서 데이터 조회 후")
	alert("(2/4) 여러 사람이 조회될 경우를 대비하여")
	alert("(3/4) 자신의 e-mail을 선택할 수 있도록")
	alert("(4/4) 화면에 List로 띄워주기.")
}

function findPw() {
	alert("(1/4) 임시코드 검사 통과 후 새 비밀번호 띄워주기.")
	alert("(2/4) 또는")
	alert("(3/4) 코드 발송 없이 등록된 e-mail로 새 임시 비밀번호 발송.")
	alert("(4/4) 중 한 가지 선택 할 것.")
}

function sendCode() {
	alert("인증 코드가 이메일로 발송되었습니다.")
}