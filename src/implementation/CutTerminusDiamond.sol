// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {CutDiamond} from "../../lib/cu-osc-diamond-template/src/diamond/CutDiamond.sol";
import {IERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {AccessBadgeDiamond} from "../../lib/cu-osc-common/src/implementations/AccessBadgeDiamond.sol";
import {ResourceLocatorGetterDiamond} from "../../lib/cu-osc-common/src/implementations/ResourceLocatorGetterDiamond.sol";

// import {IERC165} from '../../lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol';

/// @title Dummy "implementation" contract for LG Diamond interface for ERC-1967 compatibility
/// @dev adapted from https://github.com/zdenham/diamond-etherscan?tab=readme-ov-file
/// @dev This interface is used internally to call endpoints on a deployed diamond cluster.
contract CutTerminusDiamond is
    CutDiamond,
    AccessBadgeDiamond,
    ResourceLocatorGetterDiamond
{
    /// @notice This function sets the controller of LibTerminus
    /// @dev Only the contract owner can call this function
    function initializeTerminusDiamond() external {}

    /// @notice Create a new token pool
    /// @dev Only the controller can call this function
    /// @param capacity The maximum number of tokens that can be minted
    /// @param transferable Whether the tokens can be transferred
    /// @param burnable Whether the tokens can be burned
    /// @param poolURI The URI of the pool
    /// @return poolId The ID of the new pool
    function createPool(
        uint256 capacity,
        bool transferable,
        bool burnable,
        string calldata poolURI
    ) external returns (uint256 poolId) {}

    function setController(address newController) external {}

    function poolMintBatch(
        uint256 id,
        address[] memory toAddresses,
        uint256[] memory amounts
    ) external {}

    function terminusController() external view returns (address) {}

    function paymentToken() external view returns (address) {}

    function setPaymentToken(address newPaymentToken) external {}

    function poolBasePrice() external view returns (uint256) {}

    function setPoolBasePrice(uint256 newBasePrice) external {}

    function withdrawPayments(address toAddress, uint256 amount) external {}

    function contractURI() external view returns (string memory) {}

    function setContractURI(string memory _contractURI) external {}

    function setURI(uint256 poolID, string memory poolURI) external {}

    function totalPools() external view returns (uint256) {}

    function setPoolController(
        uint256 poolID,
        address newController
    ) external {}

    function terminusPoolController(
        uint256 poolID
    ) external view returns (address) {}

    function terminusPoolCapacity(
        uint256 poolID
    ) external view returns (uint256) {}

    function terminusPoolSupply(
        uint256 poolID
    ) external view returns (uint256) {}

    function poolIsTransferable(uint256 poolID) external view returns (bool) {}

    function poolIsBurnable(uint256 poolID) external view returns (bool) {}

    function setPoolTransferable(uint256 poolID, bool transferable) external {}

    function setPoolBurnable(uint256 poolID, bool burnable) external {}

    function createSimplePool(uint256 _capacity) external returns (uint256) {}

    function createPoolV1(
        uint256 _capacity,
        bool _transferable,
        bool _burnable
    ) external returns (uint256) {}

    function createPoolV2(
        uint256 _capacity,
        bool _transferable,
        bool _burnable,
        string memory poolURI
    ) external returns (uint256) {}

    function mint(
        address to,
        uint256 poolID,
        uint256 amount,
        bytes memory data
    ) external {}

    function mintBatch(
        address to,
        uint256[] memory poolIDs,
        uint256[] memory amounts,
        bytes memory data
    ) external {}

    function burn(address from, uint256 poolID, uint256 amount) external {}

    function uri(uint256 poolID) external view returns (string memory) {}

    /**
     * @dev See {IERC1155-balanceOf}.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(
        address account,
        uint256 id
    ) external view returns (uint256) {}

    /**
     * @dev See {IERC1155-balanceOfBatch}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(
        address[] memory accounts,
        uint256[] memory ids
    ) external view returns (uint256[] memory) {}

    /**
     * @dev See {IERC1155-setApprovalForAll}.
     */
    function setApprovalForAll(address operator, bool approved) external {}

    /**
     * @dev See {IERC1155-isApprovedForAll}.
     */
    function isApprovedForAll(
        address account,
        address operator
    ) external view returns (bool) {}

    function isApprovedForPool(
        uint256 poolID,
        address operator
    ) external view returns (bool) {}

    function approveForPool(uint256 poolID, address operator) external {}

    function unapproveForPool(uint256 poolID, address operator) external {}

    /**
     * @dev See {IERC1155-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) external {}

    /**
     * @dev See {IERC1155-safeBatchTransferFrom}.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) external {}
}
