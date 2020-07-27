pragma solidity ^0.4.17 < 0.6.12;

contract reportCard{
    string public name;
    uint public rollno;
    string public batch;
    uint public mark1;
    uint public mark2;
    uint public mark3;
    uint public mark4;
    string public status="Pending...";
    
    function reportcard(string newName, uint newRollno, string newBatch, uint newMark1, uint newMark2, uint newMark3, uint newMark4)public{
        name = newName;
        rollno = newRollno;
        batch = newBatch;
        mark1 = newMark1;
        mark2 = newMark2;
        mark3 = newMark3;
        mark4 = newMark4;
    }
    
    function getCurrentReport() public returns(string, uint, string, uint, uint, uint, uint, string){
        if(mark1 < 50 || mark2 < 50 || mark3 < 50 || mark4 < 50){
            status = "Fail";
        }
        else{
            status = "Pass";
        }
        return(name, rollno, batch, mark1, mark2, mark3, mark4, status);
    }
}