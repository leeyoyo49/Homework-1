// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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
    uint256 private studentCount; // Declaring a private state variable to keep track of the number of registered students

    function register() external returns (uint256) {
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
    }
}
