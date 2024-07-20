const Certification = artifacts.require("Certification");
const NozzleControl = artifacts.require("NozzleControl");

module.exports = function(deployer) {
  deployer.deploy(Certification).then(function() {
    return deployer.deploy(NozzleControl, Certification.address);
  });
};
