// SPDX-License-Identifier: MIT   

pragma solidity ^0.8.0;           // compiler 

contract savingbank             
{
    address acc_holder;         //account holder
    constructor()
    {
        acc_holder=msg.sender;
    }

      function deposit() public payable { }    // 1st function

      function getbalance() public view returns(uint)  // 2nd function
    {
        return address(this).balance;
    }

    function withdraw(uint _amount) private     // FUNTION TO WITHDRAW THE ETHER FROM THE ACCOUNT AND THE CONDITIONS 
    {
        require (msg.sender == acc_holder ,"You can not withdraw as you are not the owner");
        require (_amount <= address(this).balance , "Insufficient balance in the account ");

        payable (acc_holder).transfer (_amount);
    }
}
