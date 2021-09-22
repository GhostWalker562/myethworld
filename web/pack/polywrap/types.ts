import { tokenList } from "./token-list";

export const ensUri = "ens/v2.uniswap.web3api.eth";

export const UNISWAP_ROUTER_CONTRACT =
  "0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D";

// NOTE: All types are identical to the Web3API's schema:
//       https://ipfs.io/ipfs/bafybeiariqcaxwjlcft6cmqvv3cweafl4beq6kykvj3hbywkoqjjvr5ady/schema.graphql

export enum ChainId {
  MAINNET="MAINNET",
  ROPSTEN="ROPSTEN",
  RINKEBY="RINKEBY",
  GOERLI="GOERLI",
  KOVAN="KOVAN"
}

export interface Token {
  chainId: ChainId;
  address: string;
  currency: Currency;
}

export interface Currency {
  decimals: number;
  symbol: string | null
  name: string | null
}

export interface TokenAmount {
  token: Token;
  amount: string;
}

export interface Pair {
  tokenAmount0: TokenAmount;
  tokenAmount1: TokenAmount;
}

function getChainId(chainId: number): ChainId {
  switch (chainId) {
    case 1:  return ChainId.MAINNET;
    case 3:  return ChainId.ROPSTEN;
    case 4:  return ChainId.RINKEBY;
    case 5:  return ChainId.GOERLI;
    case 42: return ChainId.KOVAN;
    default: throw Error(`Unknown ChainId: ${chainId}`);
  }
}

let schemaTokenList: Token[] | undefined;

export function getTokenList(): Token[] {
  if (!schemaTokenList) {
    schemaTokenList = tokenList.map((token) => ({
      chainId: getChainId(token.chainId),
      address: token.address,
      currency: {
        decimals: token.decimals,
        symbol: token.symbol,
        name: token.name
      }
    }));
  }
  return schemaTokenList;
}
