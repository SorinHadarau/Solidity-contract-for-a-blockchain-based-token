pragma solidity ^0.8.0;

contract Token {
    mapping(address => uint256) public balanceOf;
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    constructor(uint256 initialSupply, string memory tokenName, string memory tokenSymbol) public {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = totalSupply;
        name = tokenName;
        symbol = tokenSymbol;
        decimals = 2;
    }

    function transfer(address to, uint256 value) public {
        require(balanceOf[msg.sender] >= value && value > 0);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
    }
}
