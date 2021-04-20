// SPDX-License-Identifier: WTFPL
pragma solidity >=0.8.0;

import "./Erc20Interface.sol";
import "./Erc20RecoverStorage.sol";

abstract contract Erc20RecoverInterface is Erc20RecoverStorage {
    /// NON-CONSTANT FUNCTIONS ///
    function _recover(Erc20Interface token, uint256 recoverAmount) external virtual;

    function _setNonRecoverableTokens(Erc20Interface[] calldata tokens) external virtual;

    /// EVENTS ///
    event Recover(address indexed admin, Erc20Interface token, uint256 recoverAmount);
    event SetNonRecoverableTokens(address indexed admin, Erc20Interface[] nonRecoverableTokens);
}
