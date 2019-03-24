pragma solidity 0.4.25;

import "./Company.sol";

contract TestCompany is Company {

    // testing testAddEmployee as constructor as it is a dependency for the other tests
    constructor() {
        address employee = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        if (isEmployee[employee]) {
            isEmployee[employee] = false;
        }
        addEmployee(employee);
        assert(isEmployee[employee]);
    }
    
    function testLogHour() public {
		address employee = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        uint totalHours = getHoursLogged(employee);
        logHour(2);
        assert(getHoursLogged(employee) == totalHours + 2);
    }
    
    function testGetHoursLogged () public {
		address employee = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
        uint totalHours = getHoursLogged(employee);
        logHour(2);
        assert(getHoursLogged(employee) == totalHours + 2);
    }
}
