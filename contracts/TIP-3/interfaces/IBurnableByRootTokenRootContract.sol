pragma solidity >= 0.6.0;
pragma AbiHeader expire;

interface IBurnableByRootTokenRootContract {
    function proxyBurn(
        uint128 tokens,
        address sender_address,
        address send_gas_to,
        address callback_address,
        TvmCell callback_payload
    ) external;
}
