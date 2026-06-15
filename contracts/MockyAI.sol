// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockyAI {

    string public agentName;
    string public specialization;
    string public description;

    constructor() {
        agentName = "Mocky AI";
        specialization = "Blockchain Intelligence";
        description = "An AI Agent built on Base.";
    }
}
