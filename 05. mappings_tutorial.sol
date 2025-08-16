/*
MAPPING is a data structure which is used to store key-value pairs. 
Just like a dictionary in Python or a hash table in C++/Java.


SYNTAX -
    mapping(keyType => valueType) visibility mapName;


EXAMPLE -
    mapping(address => uint) public balances;

    This mapping links an Ethereum address to a uint.
    E.g., it can track how much ETH each address has deposited.


GLOBAL VARIABLES -
    
    msg.sender : The address of the account or contract that called the current function.
                 mapping_name [msg.sender] = value;

    msg.value  : The amount of Ether (in wei) that was sent along with the transaction.
                 mapping_name [msg.sender] += msg.value;


THIS -
    this is a special keyword in Solidity which refers to the current contract itself
    address(this) = this contract’s own address
    can get contract properties like address(this).balance =  the total ETH contract holds (in wei)
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract EtherDonationTracker {

    // 1. Mapping to track how much each address has donated
    mapping(address => uint) public donations;

    // 2. Function to receive Ether and store it in mapping
    function donate() public payable {
        donations[msg.sender] += msg.value;
    }

    // 3. View your own donation total
    function myTotalDonation() public view returns (uint) {
        return donations[msg.sender];
    }

    // 4. View someone else's donation (e.g., for admin dashboard)
    function getDonationOf(address user) public view returns (uint) {
        return donations[user];
    }

    // 5. Get total contract balance (sum of all donations)
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
