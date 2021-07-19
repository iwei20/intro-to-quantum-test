namespace Quantum.QSharpTestProject {
    open Microsoft.Quantum.Arithmetic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open QSharpTestProject;

    
    @Test("QuantumSimulator")
    operation RunMyAlgorithm() : Unit {
        use register = Qubit[3];
        for i in 0..0 {
            MyAlgorithm(register);
        
            let measurement = MeasureInteger(LittleEndian(register));
            if  measurement == 0b000 or
                measurement == 0b001 or
                measurement == 0b010 or
                measurement == 0b111 {
                Message($"Measured {measurement}. Test passed!");
            }
            else {
                fail $"Measured {measurement} which is an invalid state!";
            }
            ResetAll(register);
        }
    }
}
