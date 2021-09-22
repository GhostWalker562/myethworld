import { ParaSwap, APIError } from "paraswap";
import { Web3Provider } from "@ethersproject/providers";

declare var window: any;

async function psAllowance(address: string, token: string) {
  const paraSwap = new ParaSwap().setWeb3Provider(
    new Web3Provider(window.ethereum)
  );
  console.log("Retrieving allowance from " + address + " with token " + token);
  const allowance = await paraSwap.getAllowance(address, token);
  if ("message" in allowance) {
    console.log("An error has occured.");
    throw allowance;
  }
  return allowance;
}

async function psApprove(amount: string, address: string, token: string) {
  try {
    const paraSwap = new ParaSwap().setWeb3Provider(
      new Web3Provider(window.ethereum)
    );
    console.log("Approving " + address + " with token " + token);
    const approval = await paraSwap.approveToken(amount, address, token);
    // if ("message" in approval) {
    //   console.log("An error has occured.");
    //   throw allowance;
    // }
    return approval;
  } catch (e) {
    throw e;
  }
}

window.psAllowance = psAllowance;
window.psApprove = psApprove;

console.log("Paraswap has been added to window");
// console.log('window is using "window.superFluidUser" and "window.superFluid"');

function isAPIError(obj: any): obj is APIError {
  return obj.bar !== undefined;
}
