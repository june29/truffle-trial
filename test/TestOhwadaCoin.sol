pragma solidity ^0.4.15;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/OhwadaCoin.sol";

contract TestOhwadaCoin {

  function testInitialBalanceUsingDeployedContract() {
    OhwadaCoin ohwada = OhwadaCoin(DeployedAddresses.OhwadaCoin());

    uint expected = 10000;

    Assert.equal(ohwada.getBalance(tx.origin), expected, "Owner should have 10000 OhwadaCoin initially");
  }

  function testInitialBalanceWithNewOhwadaCoin() {
    OhwadaCoin ohwada = new OhwadaCoin();

    uint expected = 10000;

    Assert.equal(ohwada.getBalance(tx.origin), expected, "Owner should have 10000 OhwadaCoin initially");
  }
}
