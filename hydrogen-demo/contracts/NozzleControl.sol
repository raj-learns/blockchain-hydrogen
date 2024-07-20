pragma solidity ^0.8.0;

import "./Certification.sol";

contract NozzleControl {
    Certification cert;

    constructor(address _certAddress) {
        cert = Certification(_certAddress);
    }

    function openNozzle(uint generatorId) public view returns (bool) {
        return cert.checkCertification(generatorId);
    }
}
