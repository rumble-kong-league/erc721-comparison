// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import "./SolmateERC721.sol";

contract Solmate is SolmateERC721("Solmate", "SL") {

    function mint(address to, uint256 qty) external {
        // ! no token counter (will only work once)
        for (uint256 i = 0; i < qty; i++) {
            _mint(to, i);
        }
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        return "";
    }

    function ownerOf(uint256 id) public view override returns (address owner) {
        super.ownerOf(id);
        return _ownerOf[id];
    }

    function balanceOf(address owner) public view override returns (uint256) {
        return super.balanceOf(owner);
    }

    function approve(address spender, uint256 id) public override {
        return super.approve(spender, id);
    }

    function setApprovalForAll(address operator, bool approved) public override {
        return super.setApprovalForAll(operator, approved);
    }

    function transferFrom(
        address from,
        address to,
        uint256 id
    ) public override {
        return super.transferFrom(from, to, id);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id
    ) public override {
        return super.safeTransferFrom(from, to, id);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        bytes calldata data
    ) public override {
        return super.safeTransferFrom(from, to, id, data);
    }

    function supportsInterface(bytes4 interfaceId) public view override returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _mint(address to, uint256 id) internal override {
        return super._mint(to, id);
    }

    function _burn(uint256 id) internal override {
        return super._burn(id);
    }

    function _safeMint(address to, uint256 id) internal override {
        return super._safeMint(to, id);
    }

    function _safeMint(
        address to,
        uint256 id,
        bytes memory data
    ) internal override {
        return super._safeMint(to, id, data);
    }

}
