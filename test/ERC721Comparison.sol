// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/TinyERC721/Tajigen.sol";
import "src/Solmate/Solmate.sol";
import "src/OZ/OZ.sol";
import "src/ERC721A/Azuki.sol";


contract ContractTest is Test {
    // function setUp() public {}

    // function testExample() public {
    //     assertTrue(true);
    // }

    address ALGO_TWO = 0x00000444e5a1a667663b0ADfD853E8Efa0470698;
    address RECEIVER = 0xEf0182dc0574cd5874494a120750FD222FdB909a;

    // no native batch transfer
    // native batch mint
    function testTinyERC721() public {
        // sets both the msg.sender and txn.origin to ALGO_TWO
        vm.startPrank(ALGO_TWO, ALGO_TWO);

        Tajigen tiny = new Tajigen();
        // maxPerTransaction, unitPrice
        tiny.setPublicSaleConfig(100, 0);
        tiny.setPublicSaleStatus(true);
        tiny.publicMint(100);
        tiny.safeTransferFrom(ALGO_TWO, RECEIVER, 1);
    }

    // no native batch transfer
    // no native batch mint
    function testSolmate() public {
        vm.startPrank(ALGO_TWO, ALGO_TWO);

        Solmate solmate = new Solmate();
        solmate.mint(ALGO_TWO, 100);
        solmate.safeTransferFrom(ALGO_TWO, RECEIVER, 1);
    }

    // no native batch transfer
    // no native batch mint
    function testOZ() public {
        vm.startPrank(ALGO_TWO, ALGO_TWO);

        OZ oz = new OZ();
        oz.mint(ALGO_TWO, 100);
        oz.safeTransferFrom(ALGO_TWO, RECEIVER, 1);
    }

    function testERC721A() public {
        vm.startPrank(ALGO_TWO, ALGO_TWO);

        Azuki azuki = new Azuki("Azuki", "AZK");
        azuki.mint(ALGO_TWO, 100);
        azuki.safeTransferFrom(ALGO_TWO, RECEIVER, 1);
    }

}
