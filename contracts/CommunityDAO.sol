// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CondominiumDAO {
    // Structure to represent a proposal
    struct Proposal {
        address proposer;
        string description;
        uint256 voteCount;
        bool executed;
        mapping(address => bool) votes;
    }

    mapping(uint256 => Proposal) public proposals;
    uint256 public proposalCount;
    
    uint256 public totalMembers; // Total number of members

    mapping(address => bool) public members;

    modifier onlyMember() {
        require(members[msg.sender], "Only members can perform this action");
        _;
    }

    function registerMember(address _member) external {
        members[_member] = true;
        totalMembers++;
    }

    function submitProposal(string memory _description) external onlyMember {
        proposalCount++;
        Proposal storage newProposal = proposals[proposalCount];
        newProposal.proposer = msg.sender;
        newProposal.description = _description;
        newProposal.voteCount = 0;
        newProposal.executed = false;
    }

    function vote(uint256 _proposalId) external onlyMember {
        Proposal storage proposal = proposals[_proposalId];
        require(!proposal.executed, "Proposal has already been executed");
        require(!proposal.votes[msg.sender], "Member has already voted for this proposal");

        proposal.voteCount++;
        proposal.votes[msg.sender] = true;
    }

    function executeProposal(uint256 _proposalId) external {
        Proposal storage proposal = proposals[_proposalId];
        require(!proposal.executed, "Proposal has already been executed");
        require(proposal.voteCount > (totalMembers / 2), "Insufficient votes to execute the proposal");

        // Execute the proposal here
        proposal.executed = true;
    }
}