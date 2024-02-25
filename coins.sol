// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "contracts/fruit_item.sol";

error InvalidAmount (uint256 sent, uint256 minRequired); 

contract Coins is ERC20 {
    // external - cannot be called inside contract 
    uint minRequired = 500;
    constructor() ERC20("Coins", "coin") {
        _mint(msg.sender, 2000);
        // for(uint i=0; i < uri.length; i++){ 
        //    new FruitItem().mint(msg.sender, i, uri[i]); 
        // }
    }
    
    function buyNFTFruit(address from) public payable {
        uint256 balance = balanceOf(msg.sender);
        if (balance < minRequired ) {
            revert InvalidAmount({
                sent: balance,
                minRequired: minRequired
            });
        }
        transferFrom(msg.sender, from, minRequired);
        // balance[msg.sender] -= amount;
    }
    
    
}

