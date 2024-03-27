// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {console} from "forge-std/Test.sol";

contract StudentV1 {
    uint256 public studentCount;
    function register() external returns (uint256) {
        if(studentCount == 0) {
            studentCount++;
            return 1000;
        }
        else {
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    address public sender;
    constructor(){
        sender = msg.sender;
    }
    function register() external view returns (uint256) {
        if(IClassroomV2(sender).isEnrolled()) {
            return 123;
        }
        else {
            return 1000;
        }
    }
}


/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        uint aftergas = gasleft();
        if(aftergas < 7191) {
            return 123;
        }
        else {
            return 10000;
        }
    }
}
