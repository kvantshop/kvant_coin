/// SPDX-License-Identifier: MIT
/**
/// KvantCoin (KTC)
/// https://t.me/kvantcoin
/// https://twitter.com/kvantshop
/// https://kvant.shop/
*/
pragma solidity >=0.8.25;
/// 
import "./LiquidityBlock.sol";
import "./SafeMath.sol";
import "./ERC20.sol";
/// 
contract KvantCoin is ERC20, LiquidityBlock {
    using SafeMath for uint256;

    ///
    IUniswapV2Router02 public uniswapV2Router;
    address public uniswapV2Pair;
    ///
    constructor(uint256 _totalSupply) ERC20("KvantCoin", "KTC") {
        _mint(msg.sender, _totalSupply);
    }
    ///
    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }
    
}