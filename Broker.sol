pragma solidity ^0.4.19;

contract BrokerAcct {
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
    function withdraw() public {
        msg.sender.transfer(address(this).balance);
    }
    
    function deposit(uint256 amount) payable public{
        require(msg.value == amount);
    }
}
