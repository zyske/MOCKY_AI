// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgentRegistry {

struct Agent {
    string name;
    string specialization;
}

Agent[] public agents;

function registerAgent(
    string memory _name,
    string memory _specialization
) public {
    agents.push(
        Agent(
            _name,
            _specialization
        )
    );
}

function getTotalAgents()
    public
    view
    returns (uint256)
{
    return agents.length;
}

}
