// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ERC721A/ERC721A.sol";

contract Azuki is ERC721A {

    constructor(string memory name_, string memory symbol_) ERC721A(name_, symbol_) {}

    function mint(address to, uint256 qty) external {
        _mint(to, qty);
    }

}