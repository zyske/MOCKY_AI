// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgentRegistry {

string[] public agents;

function registerAgent(string memory agentName) public {
    agents.push(agentName);
}

function getTotalAgents() public view returns (uint256) {
    return agents.length;
}

}
