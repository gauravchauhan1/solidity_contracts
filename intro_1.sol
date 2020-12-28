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


///creating own custom modifier for the visiblity and usage of a function

/*

 pragma solidity 0.8.0;



contract MyContract{

mapping(uint => Person) public people;
uint256 public peopleCount=0;
address owner;

modifier onlyOwner(){
     require(msg.sender == owner);   ///if this is false it will throw an error
     _;     
}

  struct Person{
      uint _id;
      string _firstName;
      string _lastName;
  }
  
  constructor() public{
      owner = msg.sender;  ///msg.sender is the account address that deploys the contract
  }
  
  function addPerson(string memory _firstName,string memory _lastName) public onlyOwner{
      
     incrementCount();
      people[peopleCount]= Person(peopleCount,_firstName,_lastName);
  }
    
   function incrementCount() internal{
       peopleCount +=1;
   } 
 
}
