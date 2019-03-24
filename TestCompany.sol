pragma solidity 0.4.25;

import "./Company.sol";

contract TestCompany is Company {
    
    function testAddEmployee () public {
		address employee = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        if (isEmployee[employee]) {
            isEmployee[employee] = false;
        }
        addEmployee(employee);
        assert(isEmployee[employee]);
    }
    
    function testLogHour() public {
    }
    
    function testGetHoursLogged () public {
    }
}
