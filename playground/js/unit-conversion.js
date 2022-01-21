var unit_m, result;

function clearOptionResults(){
    var defaultOptions = [
        "Meter",
        "Kilometer",
        "Centimeter",
        "Millimeter",
        //"Nanometer",
        "Mile",
        "Yard",
        "Foot",
        "Inch"
        //"Light Year"
    ]

    for (let i = 0; i < 8; i++) {
        document.getElementById('unitSelector2').options[i].innerText = defaultOptions[i];
    }
}

function unitToMeters() {
    var unit1, unitChoice1;
    unit1 = parseFloat(document.getElementById("unit1").value);
    unitChoice1 = document.getElementById("unitSelector1").value;
    if (unitChoice1 === "m") {
        parseFloat(unit_m = unit1);
    }

    if (unitChoice1 === "cm") {
        parseFloat(unit_m = unit1 / 100);
    }

    if (unitChoice1 === "km") {
        parseFloat(unit_m = unit1 * 1000);
        
    }

    if (unitChoice1 === "mm") {
        parseFloat(unit_m = unit1 / 1000);
        
    }

    if (unitChoice1 === "nm") {
        parseFloat(unit_m = unit1 / 1,000,000,000);
    }

    if (unitChoice1 === "mi") {
        parseFloat(unit_m = unit1 * 1609);
    }

    if (unitChoice1 === "yd") {
        parseFloat(unit_m = unit1 / 1.094);
    }

    if (unitChoice1 === "ft") {
        parseFloat(unit_m = unit1 / 3.281);
        
    }

    if (unitChoice1 === "in") {
        parseFloat(unit_m = unit1 / 39.37);
    }
    
    if (unitChoice1 === "ly") {
        parseFloat(unit_m = unit1 * 9,461,000,000,000,000);
    }

    return unit_m;
    
}

function metersToUnit() {

    unitToMeters();

    var unitChoice2;
    unitChoice2 = document.getElementById("unitSelector2").value;

    if (unitChoice2 === "m") {
        parseFloat(result = unit_m);
    }

    if (unitChoice2 === "cm") {
        parseFloat(result = unit_m * 100);
    }

    if (unitChoice2 === "km") {
        parseFloat(result = unit_m / 1000);
    }

    if (unitChoice2 === "mm") {
        parseFloat(result = unit_m * 1000);
    }

    if (unitChoice2 === "nm") {
        parseFloat(result = unit_m * 1,000,000,000);
    }

    if (unitChoice2 === "mi") {
        parseFloat(result = unit_m / 1609);
    }

    if (unitChoice2 === "yd") {
        parseFloat(result = unit_m * 1.094);
    }

    if (unitChoice2 === "ft") {
        parseFloat(result = unit_m * 3.281);
        
    }

    if (unitChoice2 === "in") {
        parseFloat(result = unit_m * 39.37);
    }
    
    if (unitChoice2 === "ly") {
        parseFloat(result = unit_m / 9,461,000,000,000,000);
    }

    return result;
}

function convert() {

    metersToUnit();

    document.getElementById("unit-result").value = result;

}

function addOptionText() {

    metersToUnit();

    var allresults = [
        parseFloat(result = unit_m),
        parseFloat(result = unit_m * 100),
        parseFloat(result = unit_m / 1000),
        parseFloat(result = unit_m * 1000),
        //parseFloat(result = unit_m * 1,000,000,000),
        parseFloat(result = unit_m / 1609),
        parseFloat(result = unit_m * 1.094),
        parseFloat(result = unit_m * 3.281),
        parseFloat(result = unit_m * 39.37),
        //parseFloat(result = unit_m / 9,461,000,000,000,000)
    ]
    if (document.getElementById("unit1").value === ""){

    }
    else {
        for (let i = 0; i < 8; i++) {
            document.getElementById('unitSelector2').options[i].innerText = document.getElementById('unitSelector2').options[i].innerText + " (" + allresults[i] + ") ";
        }
    }
}
