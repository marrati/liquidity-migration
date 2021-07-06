// SPDX-License-Identifier: WTFPL

pragma solidity ^0.8.0;

import "../access/AccessControlEnumerable.sol";

contract AccessControlEnumerableMock is AccessControlEnumerable {
    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function setRoleAdmin(bytes32 roleId, bytes32 adminRoleId) public {
        _setRoleAdmin(roleId, adminRoleId);
    }
}