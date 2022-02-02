// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract TeacherReview {
    struct Review {
        uint256 studentId;
        uint256 grade;
        string comment;
    }

    struct Teacher {
        uint256 id;
        string displayName;
        uint256 reviews;
    }

    // Read/write Candidates
    mapping(uint256 => Teacher) public teachers;

    function vote(uint256 teacher) public {
        // require that they haven't voted before
        //require(!voters[msg.sender]);
    }
}
