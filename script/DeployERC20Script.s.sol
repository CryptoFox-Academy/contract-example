// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Example} from "../src/ERC20Example.sol";

contract DeployERC20Script is Script {
    ERC20Example public token;
    string public constant NAME = "CryptoFox";
    string public constant SYMBOL = "CFX";

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        token = new ERC20Example(NAME, SYMBOL);

        vm.stopBroadcast();
    }
}
