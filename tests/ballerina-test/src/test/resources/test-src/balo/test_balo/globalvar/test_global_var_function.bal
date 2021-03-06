import testorg/foo version v1;

function getGlobalVars() returns (int, string, float, any) {
    return (foo:glbVarInt, foo:glbVarString, foo:glbVarFloat, foo:glbVarAny);
}

function accessGlobalVar() returns int {
    int value;
    value = check <int>foo:glbVarAny;
    return (foo:glbVarInt + value);
}

function changeGlobalVar(int addVal) returns float {
    foo:glbVarFloatChange = 77 + <float> addVal;
    float value = foo:glbVarFloatChange;
    return value;
}

function getGlobalFloatVar() returns float {
    _ = changeGlobalVar(3);
    return foo:glbVarFloatChange;
}

function getGlobalVarFloat1() returns float {
    return foo:glbVarFloat1;
}

function initializeGlobalVarSeparately() returns (json, float) {
    foo:glbVarJson = {"name" : "James", "age": 30};
    foo:glbVarFloatLater = 3432.3423;
    return (foo:glbVarJson, foo:glbVarFloatLater);
}