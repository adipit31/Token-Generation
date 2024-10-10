// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // Public variables to store token details
    string public tokenName = "Token";      // Token name
    string public tokenAbbrv = "TK1";         // Token abbreviationb.
    uint256 public totalSupply = 0;           // Total supply of the token

    // Mapping from address to balance
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and sender's balance
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;               // Increase total supply
        balances[_to] += _value;             // Increase the balance of the recipient address
    }

    // Burn function to reduce total supply and sender's balance
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn"); // Ensure sender has enough balance
        totalSupply -= _value;               // Decrease total supply
        balances[_from] -= _value;           // Decrease the balance of the sender address
    }
}
