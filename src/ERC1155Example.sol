// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract ERC1155Example is ERC1155 {
    constructor(string memory uri) ERC1155(uri) {}

    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public {
        _mint(account, id, amount, data);
    }

    function burn(address account, uint256 id, uint256 value) public virtual {
        if (
            account != _msgSender() && !isApprovedForAll(account, _msgSender())
        ) {
            revert ERC1155MissingApprovalForAll(_msgSender(), account);
        }
        _burn(account, id, value);
    }
}
