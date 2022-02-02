// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PINAToken is ERC20, Ownable {
    uint256 public constant initialSupply = 21000000000;
    uint256 public constant maxSupply = 42000000000;

    constructor() ERC20("Pinake Token", "PINA") {
        _mint(msg.sender, initialSupply);
        emit Transfer(address(0), msg.sender, initialSupply);
    }

    function addressBalance(address tokenOwner) public view returns (uint256) {
        return balanceOf(tokenOwner);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(amount + initialSupply <= maxSupply);
        _mint(to, amount);
    }
}
