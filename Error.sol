/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public value;
    
    function setValue(uint256 _newValue) external {
        // Using require to check conditions
        require(_newValue != 0, "New value must not be zero");
        
        // Using assert to check for internal errors
        assert(_newValue != type(uint256).max); // Ensure overflow doesn't occur
        
        // Trying to set the new value
        value = _newValue;
    }
    
    function withdraw(uint256 _amount) external {
        // Using revert to handle certain conditions
        if (_amount > value) {
            revert("Insufficient balance");
        }
        
        // Performing the withdrawal
        value -= _amount;
    }
}
