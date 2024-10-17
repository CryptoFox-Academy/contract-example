// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ERC721Example} from "../src/ERC721Example.sol";

contract DeployERC20Script is Script {
    ERC721Example public token;
    string public constant NAME = "CryptoFox";
    string public constant SYMBOL = "CFX";

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        token = new ERC721Example(NAME, SYMBOL);

        vm.stopBroadcast();
    }
}
