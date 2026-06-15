// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockyAI {

string public agentName;
string public specialization;
string public description;

address public owner;

uint256 public reputation;
uint256 public totalInteractions;

constructor() {
    agentName = "Mocky AI";
    specialization = "Blockchain Intelligence";
    description = "An AI Agent built on Base";

    owner = msg.sender;

    reputation = 0;
    totalInteractions = 0;
}

function getAgentInfo()
    public
    view
    returns (
        string memory,
        string memory,
        string memory
    )
{
    return (
        agentName,
        specialization,
        description
    );
}

function updateAgentProfile(
    string memory _name,
    string memory _specialization,
    string memory _description
) public {
    require(msg.sender == owner, "Only owner");

    agentName = _name;
    specialization = _specialization;
    description = _description;
}

function increaseReputation() public {
    reputation++;
}

function recordInteraction() public {
    totalInteractions++;
}

}
