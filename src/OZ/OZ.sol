// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract OZ is ERC721("OpenZeppelin", "OZ") {

    function mint(address to, uint256 qty) external {
        // ! no token counter (will only work once)
        for (uint256 i = 0; i < qty; i++) {
            _mint(to, i);
        }
    }

}