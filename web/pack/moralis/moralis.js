const Moralis = window.Moralis;

// connect to Moralis server
Moralis.initialize("Sex97Qg6q69yyseRaCSkNSwBm19C1srJpFOzYn3P");
Moralis.serverURL = "https://l4oytiimfg2e.grandmoralis.com:2053/server";

let dex;

(async function () {
  await Moralis.initPlugins();
  dex = Moralis.Plugins.oneInch;

  await Moralis.enable();
  // if (!user) {
  //   await Moralis.authenticate();
  // }
  // console.log("Logged in user:", user);
})();

async function swap(inputToken, outputToken, amount) {
  const options = {
    chain: "polygon",
    fromTokenAddress: inputToken,
    toTokenAddress: outputToken,
    amount: amount,
    fromAddress: Moralis.User.current().get("ethAddress"),
    slippage: 1,
  };

  try {
    console.log(options);
    var receipt = await dex.swap(options);
    console.log(receipt);
    return receipt;
  } catch (e) {
    console.log(e);
    throw e;
  }
}

async function swapTokens() {
  const result = await dex.getSupportedTokens({ chain: "polygon" });
  console.log(result);
  return result;
}

async function swapAllowance(inputToken, amount) {
  const allowance = await dex.hasAllowance({
    chain: "polygon",
    fromTokenAddress: inputToken,
    fromAddress: Moralis.User.current().get("ethAddress"),
    amount: amount,
  });

  if (allowance.toString() == "false") {
    throw "Not enough allowance";
  }
  console.log(`The user has enough allowance: ${allowance}`);
}

async function swapApprove(inputToken) {
  await Moralis.Plugins.oneInch.approve({
    chain: "polygon", // The blockchain you want to use (eth/bsc/polygon)
    tokenAddress: inputToken, // The token you want to swap
    fromAddress: Moralis.User.current().get("ethAddress"), // Your wallet address
  });
}

async function getNativeBalance() {
  const options = { chain: "polygon" };
  const balance = await Moralis.Web3API.account.getNativeBalance(options);
  return balance;
}

async function getTokenBalances() {
  const options = { chain: "polygon" };
  const balances = await Moralis.Web3API.account.getTokenBalances(options);

  return balances;
}

async function authenticate() {
  let user = Moralis.User.current();
  try {
    if (!user) {
      user = await Moralis.Web3.authenticate();
    }
    console.log("Logged in user:", user);
    return user;
  } catch (error) {
    throw error;
  }
}

async function user() {
  return Moralis.User.current();
}

async function logOut() {
  return Moralis.User.logOut();
}

async function quote(inputToken, outputToken, amount) {
  const quote = await dex.quote({
    chain: "polygon", // The blockchain you want to use (eth/bsc/polygon)
    fromTokenAddress: inputToken, // The token you want to swap
    toTokenAddress: outputToken, // The token you want to receive
    amount: amount,
  });

  return quote;
}
