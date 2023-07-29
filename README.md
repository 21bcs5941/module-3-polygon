### Project Title:
This is the project of module 1 of poly proof course.

### Creation of the project:
        * firstly we have to visit https://github.com/gmchad/zardkat ==> it is a template to implement zkSNARK circuit using circom.
        * after that Fork and clone this repo.
        * after that Open the terminal and write command npm i
        * after that paste the code of circuit.circom inside the circuit.circom inside ./circuits/multiplier
        * paste the text inside input.json inside ./circuits/multiplier/input.json
        * compile the circuit using command npx hardhat circom.
        * It will generate the out folder inside ./circuits/multiplier which contains the circuit intermediatories.
        * configure your hardhat.config.js to deploy it on a testnet.
        * After configuration, run npx hardhat run scripts/deploy.ts --network <network name>
        * You will get a contract address and a verification status with respect to your input.json.

### Important command: 
There are basically three steps we have to keep in our mind mentioned below:
       * npm i  => to install all the dependencies of your project.
       * npx hardhat circom  => to compile the circuit
       * npx hardhat run scripts/deploy.ts --network <network name>  => to deploy the verification contract on a testnet

### Template Circom Code:
        pragma circom 2.0.0;
        
        /*This circuit template checks that c is the multiplication of a and b.*/  
       
        template Multiplier2 () {  
               // Declaration of signals.  
               signal input a;  
               signal input b;  
               signal output c;  
               // Constraints.  
               c <== a * b;  
       }
       component main = Multiplier2();




