// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GuessTheNumber {
    address public owner;
    uint256 private secretNumber;
    uint256 public fee = 0.0001 ether;

    event GuessResult(address player, uint256 guess, bool won);

    constructor(uint256 _secretNumber) {
        owner = msg.sender;
        secretNumber = _secretNumber;
    }

    function guess(uint256 number) external payable {
        require(msg.value >= fee, "Pay the game fee");

        bool won = number == secretNumber;

        if (won) {
            payable(msg.sender).transfer(address(this).balance);
        }

        emit GuessResult(msg.sender, number, won);
    }

    function changeSecret(uint256 _newSecret) external {
        require(msg.sender == owner, "Only owner");
        secretNumber = _newSecret;
    }

    function withdraw() external {
        require(msg.sender == owner, "Only owner");
        payable(owner).transfer(address(this).balance);
    }
}
