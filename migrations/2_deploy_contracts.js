var ConvertLib = artifacts.require("./ConvertLib.sol");
var OhwadaCoin = artifacts.require("./OhwadaCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, OhwadaCoin);
  deployer.deploy(OhwadaCoin);
};
