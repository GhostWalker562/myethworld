import { ensUri, Pair, TokenAmount } from "./types";
import { Web3ApiClient } from "@web3api/client-js";

export async function fetchSwapOutputAmount(
  client: Web3ApiClient,
  pair: Pair,
  inputAmount: TokenAmount
): Promise<string> {

  const { data, errors } = await client.query<{
    pairOutputAmount: TokenAmount
  }>({
    uri: ensUri, // ENS -> IPFS -> Wasm downloaded & run right inside your app
    query: `query{
      pairOutputAmount(
        pair: $pair
        inputAmount: $input
      )
    }`,
    variables: {
      pair: pair,
      input: inputAmount
    }
  });

  if (errors) {
    throw errors;
  }

  if (!data) {
    throw Error("pairOutputAmount returned undefined, this should never happen");
  }

  return data.pairOutputAmount.amount;
}