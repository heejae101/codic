function emailCheck(){
  const inputEmail = document.getElementById("email").value;

  if(inputEmail !== ""){
    document.getElementById('EmailCheck').submit();
  }
}

function tokenCheck(sessionAuthToken, sessionValidTime) {
    const inputToken = document.getElementById("token-check").value;
    
    if(inputToken !== ""){
      document.getElementById("session-token").value = sessionAuthToken;
      document.getElementById("session-validTime").value = sessionValidTime;
      document.getElementById('TokenCheck').submit();
    }
}