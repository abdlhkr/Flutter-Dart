
void main(List<String> args) {
    int a = 5;
    double b = 3.35;
    var c = b- a;
    print(c.runtimeType);
    // same rules as java 
    var number1 = 5.35;
    int number2 = 0;
    int number3 = 3;
    print((number2/number3)*number1); // exactly same 
    // lets say we have number 
    number1 = 1.14;
    // we can use its type with toType methods
    print(number1.toDouble());
    print(number1.toString());
    print(number1.toInt()); // works as floor function
}

