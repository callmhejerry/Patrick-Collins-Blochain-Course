// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

library PriceConverter {

function getPrice()public view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA17693572215DE4FAC081BF1F309ADC325306);
        (, int256 price,,, ) = priceFeed.latestRoundData();
        return uint256(price) * 1e10;
    }

    function getConversionRate(uint256 _ethAmount)public view returns (uint256){
        
        uint ethPrice = getPrice();
        uint ethAmountInUsd = (ethPrice * _ethAmounth)/1e18;
        return ethAmountInUsd;
    }
}
