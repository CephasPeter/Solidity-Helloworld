// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.7.0;

contract HelloWorld {
    string data = "";

    constructor() public{
        data = "Hello World";
    }

    function set(string memory x) internal {
        data = x;
    }

    function getMessage() public view returns(string memory){
      return data;
    }

    function changeAndPrintMessage(string memory newMessage) public returns(string memory){
        set(newMessage);
        return data;
    }
}