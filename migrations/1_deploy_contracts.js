var MyToken = artifacts.require("MyToken");
var CondominiumDAO = artifacts.require("CondominiumDAO");


module.exports = function (deployer) {
  deployer.deploy(MyToken);
  deployer.deploy(CondominiumDAO);
};
