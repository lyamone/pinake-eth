var Pina =  artifacts.require("./PINAToken.sol");
module.exports = function(deployer) {
  deployer.deploy(Pina);
};