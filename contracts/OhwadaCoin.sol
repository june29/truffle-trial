pragma solidity ^0.4.15;

import "./ConvertLib.sol";

contract OhwadaCoin {
    mapping (address => uint) balanceOf;

    event Transfered(address indexed _from, address indexed _to, uint256 _amount);

    function OhwadaCoin() {
        balanceOf[tx.origin] = 10000;
    }

	function transfer(address _receiver, uint _amount) returns (bool sufficient) {
		if (balanceOf[msg.sender] < _amount) {revert();}
        if (balanceOf[_receiver] + _amount < balanceOf[_receiver]) {revert();}

		balanceOf[msg.sender] -= _amount;
		balanceOf[_receiver] += _amount;

		Transfered(msg.sender, _receiver, _amount);

		return true;
	}

	function getBalanceInEth(address _address) returns (uint) {
		// return ConvertLib.convert(getBalance(_address), 2);
		return getBalance(_address) * 2;
	}

	function getBalance(address _address) returns(uint) {
		return balanceOf[_address];
	}
}
