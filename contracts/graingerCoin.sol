pragma solidity ^0.4.21;


/**
 * @title GraingerCoin
 * @dev Libary etiquette token 
 */
contract GraingerCoin {
    
    event ResetPatron(address _patronAddress); // patron reset or initalize
    
    Owner = msg.sender; 
    mapping (address => uint) addressToSeat; // maps address to seats
    mapping (address => Patron) addressToPatron // check to see if address has been initalized
    uint Stake = 10; //amount staking when taking a seat
    Patron[] public patrons; //array of patrons 
    
    //Libary patron struct
    struct Patron {
        uint balance; // current balance
        bool seated; // is the person seated in a seat at the Libary
    }
    
    ///initlaize single Patron with 1000 tokens 
    function _initalizeSinglePatron() internal {
        require(addressToPatron[msg.sender] != 0);
        patrons.push(Patron(1000, false, msg.sender));
        ResetPatron(_patronAddress);
    }
    
    //patron takes a seat
    function _takeASeat() public payable {
        //initalized, not seated and non-zero balance
        require(
            addressToPatron[msg.sender] != 0 && 
            !addressToPatron[msg.sender].seated &&
            addressToPatron[msg.sender].balance > 0
            );
            
        require(msg.value > stake)
        addressToPatron[msg.sender].seated = true;
        
    }

    
}
