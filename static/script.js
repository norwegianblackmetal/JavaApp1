function f1(){
    var requestURL = 'http://127.0.0.1:8080/link'
    let request = new XMLHttpRequest();
    request.open('GET', requestURL);
    request.responseType = 'text';
    request.send();
    request.onload = function(){
        document.getElementById('met').innerHTML = request.response;
    }
}