function calculate() {
    var num1, num2, res, operationChoice;
    num1 = parseFloat(document.getElementById("num1").value);
    num2 = parseFloat(document.getElementById("num2").value);
    operationChoice = document.getElementById("operationSelector").value;
    if (operationChoice === "plus") {
        res = num1 + num2;
    }
    else if (operationChoice === "minus"){
        res = num1 - num2;
    }   
    else if (operationChoice === "multiply"){
        res = num1 * num2;
    }
    else {
        res = num1 / num2;
    }
    document.getElementById("cal-res").innerHTML = res;
    
}