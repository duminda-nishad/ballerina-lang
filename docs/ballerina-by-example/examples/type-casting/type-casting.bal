import ballerina/io;

function main (string[] args) {
    //Here we assign a 'string' type value to a variable of type 'any'.
    any a = "Jungle cat";
    //Here is how you can cast an 'any' type variable to the 'string' type.
    //This cast is unsafe, because the value of the variable 'a' is unknown till runtime.
    //Therefore the compiler will enforce you to use multi-return type cast expression.
    //This is an error that occurs during a Type Casting.
    var s = <string>a;

    match s {
        string str =>  io:println(str);
        error err =>  io:println("error: " + err.message);
    }
}
