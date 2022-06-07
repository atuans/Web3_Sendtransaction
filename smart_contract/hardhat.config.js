

require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity : '0.8.0',
  networks:{
    ropsten:{
      url: 'https://eth-ropsten.alchemyapi.io/v2/Agwv6OI0nO5rHs_Euj7e8wUEod1U0y6J',
      accounts:['0b60e842a7780853256c696af8514fb6ec2945d0adb0332eb3d0f935c3236820'] // private on metamask
    }
  }
}
