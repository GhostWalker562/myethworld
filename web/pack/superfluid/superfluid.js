import { Framework } from "@superfluid-finance/js-sdk";
import { Web3Provider } from "@ethersproject/providers";

async function sfInit() {
  // Under the expectation that this is called, the user should have connected a wallet.
  try {
    console.log("Inititalizing Superfluid");
    if (window.ethereum == null) {
      console.log("Could not find ethereum.");
      return;
    }
    window.superFluid = new Framework({
      ethers: new Web3Provider(window.ethereum),
    });
    console.log("Finished setting up Ether.js");
    await window.superFluid.initialize();
    console.log("Superfluid has been initialized");
  } catch (e) {
    console.log(e);
  }
}

async function sfUser(address, token) {
  try {
    let details;
   
    window.superFluidUser = await window.superFluid.user({
      address: address,
      token: token,
    });
    console.log("Retrieving data from " + token);
    details = await window.superFluidUser.details();

    return details;
  } catch (e) {
    console.log(e);
    throw(e);
  }
}

async function sfFlow(recipient, flowRate) {
  try {
    await window.superFluidUser.flow({
      recipient: recipient,
      flowRate: flowRate,
    });
  } catch (e) {
    console.log(e);
    throw(e);
  }
}

async function sfCancelFlow(recipient) {
  try {
    await window.superFluidUser.flow({
      recipient: recipient,
      flowRate: 0,
    });
  } catch (e) {
    console.log(e);
    throw(e);
  }
  
}

window.sfInit = sfInit;
window.sfUser = sfUser;
window.sfFlow = sfFlow;
window.sfCancelFlow = sfCancelFlow;

console.log("Superfluid has been added to window");
console.log('window is using "window.superFluidUser" and "window.superFluid"');
