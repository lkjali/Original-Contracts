/* SPDX-License-Identifier: MIT */
pragma solidity ^0.7.3;

import "./AdminStorage.sol";

/**
 * @title AdminInterface
 * @author Paul Razvan Berg
 */
abstract contract AdminInterface is AdminStorage {
    /**
     * NON-CONSTANT FUNCTIONS
     */
    function renounceAdmin() external virtual;

    function transferAdmin(address newAdmin) external virtual;

    /**
     * EVENTS
     */
    event TransferAdmin(address indexed oldAdmin, address indexed newAdmin);
}
