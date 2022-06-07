// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {

    uint256 countingTransaction ;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timeSend, string keyword);

    struct TransferStruct {
        address sender;
        address receiver ;
        uint amount;
        string message;
        uint256 timeSend;
        string keyword;

    }

    TransferStruct[] transactions;

    //everybody can access this function
    function addToBlockChain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        countingTransaction +=1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    // view only
    function getAllTransaction() public view returns (TransferStruct[] memory){
        return transactions;
    }

    function getTransactionCount() public view returns (uint256){
        return countingTransaction;
    }

    

}

