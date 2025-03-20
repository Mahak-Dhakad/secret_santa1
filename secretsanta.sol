pragma solidity ^0.8.0;

contract SecretSanta {
    address[] private participants;
    mapping(address => address) private santaAssignments;
    mapping(address => bool) private giftConfirmed;
    address private owner;
    bool private assigned;
    
    modifier onlyOwner() {
…    
    function isGiftConfirmed(address _participant) external view returns (bool) {
        return giftConfirmed[_participant];
    }
}
