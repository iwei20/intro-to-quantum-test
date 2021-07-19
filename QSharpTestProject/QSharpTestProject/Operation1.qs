namespace QSharpTestProject {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;


    operation MyAlgorithm (register : Qubit[]) : Unit {
        H(register[0]);
        DumpRegister((), register);
        Message("");

        H(register[1]);
        DumpRegister((), register);
        Message("");

        CCNOT(register[0], register[1], register[2]);
        DumpRegister((), register);
        Message("");
    }
}
