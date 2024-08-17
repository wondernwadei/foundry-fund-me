-include .env

.PHONY: all test clean deploy fund help install snapshot format anvil

test :; forge test

deploy-sepolia: forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL)
 --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv