function getHistory(){
    return document.getElementById("history-value").innerText;
}
function printHistory(num){
    document.getElementById("history-value").innerText=num;
}
function getCurrent(){
    return document.getElementById("current-value").innerText;
}
function printCurrent(num){
    if(num==""){
        document.getElementById("current-value").innerText=num;
    }
    else{
    document.getElementById("current-value").innerText=getformatedValue(num);
    }
}
function getformatedValue(num){
    var value=Number(num);
    var newValue=value.toLocaleString("en");
    return newValue;
}
function reverseNumberFormat(num){
    //num.replace is the number from which you want to replace the 
    //element and in bracket we give the element which we want to replace
    return Number(num.replace(/,/g,''));
}
var operator=document.getElementsByClassName("operator");
//we are getting which operator we have clicked
for(var i=0;i<operator.length;i++){
    operator[i].addEventListener('click',function(){
        if((this.id=="clear")){
            printHistory("");
            printCurrent("")
        }
        else{
            if(this.id=="backspace"){
                var backoutputValue=reverseNumberFormat(getCurrent()).toString();
                //we will use sub string function to eliminate the last function
                if(backoutputValue){
                    backoutputValue=backoutputValue.substr(0,backoutputValue.length-1);
                    printCurrent(backoutputValue);
                }
            }
            else{
                var newoutput=getCurrent();
                var history=getHistory();
                if(newoutput!=""){
                    newoutput=reverseNumberFormat(newoutput);
                    history=history+newoutput;
                    alert(newoutput)
                    if(this.id=="="){
                        var newresult=eval(history)
                        printCurrent(newresult)
                        printHistory("")
                    }
                    else{
                        history=history+this.id;
                        printHistory(history);
                        printCurrent("");
                    }
                }
            }
        }
    })
}
var number=document.getElementsByClassName("number");
//we are getting which number we have clicked
for(var i=0;i<number.length;i++){
    number[i].addEventListener('click',function(){
        var output=reverseNumberFormat(getCurrent());
        if(output!=NaN){
            output=output+this.id
            printCurrent(output)
        }
    })
}