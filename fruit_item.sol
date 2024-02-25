// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
contract FruitItem is ERC721URIStorage {
    constructor() ERC721("FruitItem", "FTM") {}
    using Counters for Counters.Counter;
    Counters.Counter  _tokenIds;
    function createNFT(address owner, string memory _tokenURI)
        public
        returns (uint256)
    {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(owner, newItemId);
        _setTokenURI(newItemId, _tokenURI);
        return newItemId;
    }
}
