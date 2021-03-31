pragma ton-solidity >= 0.6.0;

pragma AbiHeader expire;
pragma AbiHeader time;
pragma AbiHeader pubkey;

import './ISwapPairInformation.sol';
import './IServiceInformation.sol';

interface IRootSwapPairContract is ISwapPairInformation, IServiceInformation {
    
    function deploySwapPair(address tokenRootContract1, address tokenRootContract2) external returns (address);
    
    function checkIfPairExists(address tokenRootContract1, address tokenRootContract2) external view returns (bool);

    function getServiceInformation() external view returns (ServiceInfo);

    function getPairInfo(address tokenRootContract1, address tokenRootContract2) external view returns(SwapPairInfo);


    event DeploySwapPair(address swapPairAddress, address tokenRootContract1, address tokenRootContract2);
}