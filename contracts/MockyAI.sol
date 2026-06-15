// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockyAI {

    string public agentName;
    string public specialization;
    string public description;

    address public owner;

    constructor() {
        agentName = "Mocky AI";
        specialization = "Blockchain Intelligence";
        description = "An AI Agent built on Base.";

        owner = msg.sender;
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
}
