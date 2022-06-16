//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract NFTee is ERC721 {
    constructor() ERC721 ("nametest","sym1") {
        //minting 5 NFTs for myself
        _mint(msg.sender,1);
        _mint(msg.sender,2);
        _mint(msg.sender,3);
        _mint(msg.sender,4);
        _mint(msg.sender,5);
    }
}
