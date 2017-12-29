var PresaleViewo = artifacts.require("./PresaleViewo.sol");

module.exports = function(deployer, network) {
    if(network !== 'development'){
        deployer.deploy(PresaleViewo).then(async ()=> {
            let presale = await PresaleViewo.deployed();
            console.log(presale.address);
        })
    }
};