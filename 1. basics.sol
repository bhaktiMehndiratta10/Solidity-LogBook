/*
A smart contract is a self-executing program stored on a blockchain that automatically enforces and carries out the terms of an agreement when predefined conditions are met — with no need for trust or third parties.

Smart contract ~ digital vending machine (main prog lang - solidity, vyper , rust)

Solidity is contract-oriented language : programming paradigm where code is structured around self-contained, stateful units called contracts that encapsulate data and behavior, primarily used in blockchain development.

classes -> encapsulate data and behavior (Used in Traditional applications-Python, Java, etc. ++ Runs locally on user's machine)
contract -> encapsulate data and behavior (Used in Blockchain-based apps-Solidity, Vyper, etc.) ++ Runs on blockchain nodes (decentralized))

Solidity is designed to run on the Ethereum Virtual Machine (EVM), which is hosted on Ethereum Nodes that are connected to the blockchain

solidity is statically type language (present use case predictability and performance >> flexibility)
*/

pragma solidity ^0.8.0;         // specifying version of solidity
contract basics {               // declaring smart contarct
    string value;               // state variable - persits data to the blockchain ( written in storage, not memory )

    function get() public view returns(string memory)
    {
        return value;
    }

    function set(string memory value1) public 
    {
        value = value1;
    } 

    constructor()               // A special function that runs exactly once, at the moment the contract is deployed
    {
        value = "myValue";
    }
}              