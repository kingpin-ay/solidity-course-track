# solidity-course-track


deployed contract address on seploia etherscan - 0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d
https://sepolia.etherscan.io/address/0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d#code




```
[⠊] Compiling...
No files changed, compilation skipped
Traces:
  [1056089] DeployFundMe::run()
    ├─ [508818] → new HelperConfig@0xC7f2Cf4845C6db0e1a1e91ED41Bcd0FcC1b0E141
    │   └─ ← 2209 bytes of code
    ├─ [381] HelperConfig::activeNetworkConfig() [staticcall]
    │   └─ ← 0x694AA1769357215DE4FAC081bf1f309aDC325306
    ├─ [0] VM::startBroadcast()
    │   └─ ← ()
    ├─ [456730] → new FundMe@0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d
    │   └─ ← 2059 bytes of code
    ├─ [0] VM::stopBroadcast()
    │   └─ ← ()
    └─ ← FundMe: [0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d]


Script ran successfully.

== Return ==
0: contract FundMe 0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d

## Setting up (1) EVMs.
==========================
Simulated On-chain Traces:

  [544334] → new FundMe@0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d
    └─ ← 2059 bytes of code


==========================

Chain 11155111

Estimated gas price: 3.000000018 gwei

Estimated total gas used for script: 707634

Estimated amount required: 0.002122902012737412 ETH

==========================

###
Finding wallets for all the necessary addresses...
##
Sending transactions [0 - 0].
⠁ [00:00:00] [#############################################################################################################################] 1/1 txes (0.0s)
Transactions saved to: /home/ayush/solidity-course-track/broadcast/DeployFundMe.s.sol/11155111/run-latest.json

Sensitive values saved to: /home/ayush/solidity-course-track/cache/DeployFundMe.s.sol/11155111/run-latest.json

##
Waiting for receipts.
⠉ [00:00:13] [#########################################################################################################################] 1/1 receipts (0.0s)
##### sepolia
✅ Hash: 0x117f5d107a97a8d879ab2e21ec16c9c7cc019a0008613443912c5bf4b09776f2
Contract Address: 0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d
Block: 3885747
Paid: 0.001633428004355808 ETH (544476 gas * 3.000000008 gwei)


Transactions saved to: /home/ayush/solidity-course-track/broadcast/DeployFundMe.s.sol/11155111/run-latest.json

Sensitive values saved to: /home/ayush/solidity-course-track/cache/DeployFundMe.s.sol/11155111/run-latest.json



==========================

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL.
Total Paid: 0.001633428004355808 ETH (544476 gas * avg 3.000000008 gwei)
##
Start verification for (1) contracts
Start verifying contract `0xeb5eb21a7e375c8076e14d195034d9b1acccd89d` deployed on sepolia

Submitting verification for [src/FundMe.sol:FundMe] "0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d".

Submitting verification for [src/FundMe.sol:FundMe] "0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d".

Submitting verification for [src/FundMe.sol:FundMe] "0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d".

Submitting verification for [src/FundMe.sol:FundMe] "0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d".

Submitting verification for [src/FundMe.sol:FundMe] "0xEB5EB21A7e375c8076e14D195034d9b1AcCCD89d".
Submitted contract for verification:
        Response: `OK`
        GUID: `q6ysbyei3d8c2qiiatlqyw2jvqlxt3kasfe3ebhfjvdtqnnbvq`
        URL:
        https://sepolia.etherscan.io/address/0xeb5eb21a7e375c8076e14d195034d9b1acccd89d
Contract verification status:
Response: `NOTOK`
Details: `Pending in queue`
Contract verification status:
Response: `NOTOK`
Details: `Already Verified`
Contract source code already verified
All (1) contracts were verified!

Transactions saved to: /home/ayush/solidity-course-track/broadcast/DeployFundMe.s.sol/11155111/run-latest.json

Sensitive values saved to: /home/ayush/solidity-course-track/cache/DeployFundMe.s.sol/11155111/run-latest.json

```

