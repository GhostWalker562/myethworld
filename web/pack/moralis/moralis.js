const Moralis = window.Moralis;

// connect to Moralis server
Moralis.initialize("Sex97Qg6q69yyseRaCSkNSwBm19C1srJpFOzYn3P");
Moralis.serverURL = "https://l4oytiimfg2e.grandmoralis.com:2053/server";

let dex;

(async function () {
  await Moralis.initPlugins();
  dex = Moralis.Plugins.oneInch;

  await Moralis.enable();
  // let user = Moralis.User.current();
  // if (!user) {
  //   await Moralis.authenticate();
  // }
  // console.log("Logged in user:", user);
})();

async function swap(inputToken, outputToken, amount) {
  try {
    if (!user) {
      user = await Moralis.Web3.authenticate();
    }
  } catch (error) {
    throw error;
  }

  const options = {
    chain: "polygon",
    fromTokenAddress: inputToken,
    toTokenAddress: outputToken,
    amount: amount,
    fromAddress: Moralis.User.current().get("ethAddress"),
    slippage: 1,
  };

  var receipt = await dex.swap(options);
  console.log(receipt);
}

async function swapTokens() {
  const result = await dex.getSupportedTokens({ chain: "polygon" });
  return result;
}

async function swapAllowance(inputToken, amount) {
  try {
    if (!user) {
      user = await Moralis.Web3.authenticate();
    }
  } catch (error) {
    throw error;
  }

  const allowance = await Moralis.Plugins.oneInch.hasAllowance({
    chain: "polygon",
    fromTokenAddress: inputToken,
    fromAddress: Moralis.User.current().get("ethAddress"),
    amount: amount,
  });
  console.log(`The user has enough allowance: ${allowance}`);
}

async function swapApprove(inputToken) {
  try {
    if (!user) {
      user = await Moralis.Web3.authenticate();
    }
  } catch (error) {
    throw error;
  }

  await Moralis.Plugins.oneInch.approve({
    chain: "polygon", // The blockchain you want to use (eth/bsc/polygon)
    tokenAddress: inputToken, // The token you want to swap
    fromAddress: Moralis.User.current().get("ethAddress"), // Your wallet address
  });
}
