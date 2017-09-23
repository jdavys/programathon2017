pragma solidity ^0.4.11;

contract Voting {

    address[16] public voter;
    function vote(uint votId) public returns (uint) {
        require(votId >= 0 && votId <= 15);

        voter[votId] = msg.sender;

        return votId;
    }

    function getVoter() public returns (address[16]) {
	  return voter;
	}

}