//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TokenMintandBurning {

    // Variables
    string public tokenName="Sandhya";
    string public tokenSymbol="ABCD";
    uint256 public totalSupply=0;

    // Mapping
    mapping(address => uint256) public balances;


    // Minting Function

    function mint(address _to, uint256 _value) external {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burning Function
    function burn(uint256 _value) external {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }
