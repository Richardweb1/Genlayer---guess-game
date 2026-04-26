const hre = require("hardhat");

async function main() {
  const Game = await hre.ethers.getContractFactory("GuessTheNumber");

  const secretNumber = 7;
  const game = await Game.deploy(secretNumber);

  await game.waitForDeployment();

  console.log("GuessTheNumber deployed to:", await game.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
