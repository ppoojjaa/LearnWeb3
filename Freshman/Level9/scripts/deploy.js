//import ethers 
const { ethers } = require("hardhat");

async function main() {
    //1. Tell the script which contract to deploy 
    const contracts = await ethers.getContractFactory("NFTee");

    //2. Deploy it 
    const deployedContract = await contracts.deploy();

    //wait for the contract to be deployed 
    await deployedContract.deployed();

    //3. Print the address of the deployed contract
    console.log("NFT Contract deployed to: ", deployedContract.address);

}
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });