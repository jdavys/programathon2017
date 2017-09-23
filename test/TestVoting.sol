pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voting.sol";

contract TestVoting {
  Voting voting = Voting(DeployedAddresses.Voting());

  function testUserCanVote() {
        uint returnedId = voting.vote(8);

        uint expected = 8;

        Assert.equal(returnedId, expected, "El Candidato con  ID 8 debería estar registrada.");
   }

   function testGetVoterAddressByVotId() {
        address expected = this;

        address voter = voting.voter(8);

        Assert.equal(voter, expected, "El Candidato con  ID 8 debería estar registrada.");
    }

    //probar los votantes
    function testGetVoterAddressByVotIdInArray() {
        address expected = this;

        address[16] memory voter = voting.getVoter();

        Assert.equal(voter[8], expected, "El Candidato con  ID 8 debería estar registrada.");
    }

}

