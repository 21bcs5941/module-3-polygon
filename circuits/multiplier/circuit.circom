pragma circom 2.0.0;


template ANDgate() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}


template ORgate() {echo "# module-3-polygon" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/21bcs5941/module-3-polygon.git
git push -u origin main
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a * b;
}


template NOTgate() {
    signal input in;
    signal output out;

    out <== 1 + in - 2 * in;
}


template multiplier() {  
   
    signal input a;
    signal input b;

   
    signal x;
    signal y;
   
    
    signal output q;

   
    component and_gate = ANDgate();
    component not_gate = NOTgate();
    component or_gate = ORgate();

   
    and_gate.a <== a;
    and_gate.b <== b;
    x <== and_gate.out;

    
    not_gate.in <== b;
    y <== not_gate.out;

   
    or_gate.a <== x;
    or_gate.b <== y;
    q <== or_gate.out;
}


component main = multiplier();
