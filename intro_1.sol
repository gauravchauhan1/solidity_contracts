pragma solidity 0.8.0;

contract MyContract{
    
    string value;
    
    constructor() public{
        value="myValue";
    }
    
    function get() public returns(string memory){
        return value;
    }
    
    function set(string memory _value ) public { 
        value= _value;
}
}

///using struts and mapping for data storing

/*
pragma solidity 0.8.0;



contract MyContract{

mapping(uint => Person) public people;
uint256 public peopleCount=0;
  struct Person{
      uint _id;
      string _firstName;
      string _lastName;
  }
  
  function addPerson(string memory _firstName,string memory _lastName) public{
      
      peopleCount +=1;
      people[peopleCount]= Person(peopleCount,_firstName,_lastName);
  }
    
    
 
}

*/
