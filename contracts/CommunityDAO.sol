// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/governance/Governor.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";

contract CommunityDAO is Governor, GovernorVotes, GovernorVotesQuorumFraction, Ownable {
    constructor(IVotes _token)
        Governor("CommunityDAO")
        GovernorVotes(_token)
        GovernorVotesQuorumFraction(4) // 4% quorum
    {}

    // The following functions are overrides required by Solidity.

    function votingDelay() public pure override returns (uint256) {
        return 1; // 1 block
    }

    function votingPeriod() public pure override returns (uint256) {
        return 45818; // ~1 week
    }

    function quorum(uint256 blockNumber) public view override returns (uint256) {
    return quorumFractionVotes(blockNumber);
    }

    function proposalThreshold() public pure override returns (uint256) {
        return 1; // Minimum 1 vote to propose
    }
    
    // Add custom functions below
}