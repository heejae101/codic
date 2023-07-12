function emailCheck(){
  const inputEmail = document.getElementById("email").value;

  if(inputEmail !== ""){
    document.getElementById('EmailCheck').submit();
  }
}

function tokenCheck(sessionAuthToken, sessionValidTime) {
    const inputToken = document.getElementById("token-check").value;

    if(inputToken !== ""){
      document.getElementById('TokenCheck').submit();
    }
}