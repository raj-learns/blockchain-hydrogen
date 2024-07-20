pragma solidity ^0.8.0;

contract Certification {
    mapping(uint => bool) public isGreen;

    function certify(uint generatorId, bool green) public {
        isGreen[generatorId] = green;
    }

    function checkCertification(uint generatorId) public view returns (bool) {
        return isGreen[generatorId];
    }
}
