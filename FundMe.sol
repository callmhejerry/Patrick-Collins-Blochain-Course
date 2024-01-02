//SPDX-License-Identifier:MIT

pragma solidity 0.8.19;
// import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    uint public minimumUsd = 5;
    function fund() public payable{
        require(msg.value >= minimumUsd, "Didnt send enough ETH");

    }

    function getPrice()public view returns (uint256){
        // AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA17693572215DE4FAC081BF1F309ADC325306);
        // (, int256 price,,, ) = priceFeed.latestRoundData();
        // return uint256(price) * 1e10;
    }

    function getConversionRate(uint256 _ethAmount)public view returns (uint256){
        
        uint ethPrice = getPrice();
        uint ethAmountInUsd = (ethPrice * _ethAmount)/1e18;
        return ethAmountInUsd;
    }
}