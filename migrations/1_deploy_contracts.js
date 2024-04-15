var MyToken = artifacts.require("MyToken");
var CommunityDAO = artifacts.require("CommunityDAO");


module.exports = function (deployer) {
  deployer.deploy(MyToken);
  deployer.deploy(CommunityDAO);
};
