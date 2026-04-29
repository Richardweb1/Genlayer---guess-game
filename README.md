# 🎮 Base Guess Game — Onchain Mini Game

A simple onchain mini-game built on **Base Sepolia**, inspired by early community projects like *Guess the Picture*.

This project demonstrates how lightweight, interactive games can be deployed onchain with minimal logic while still creating engaging user experiences.

---

## 🚀 Overview

**Base Guess Game** is a smart contract game where players attempt to guess a hidden number

* Players pay a small fee to participate
* If they guess correctly, they win the contract balance
* The game runs fully onchain

This project is designed as a **starter example for builders**, similar in spirit to early experimental games in emerging ecosystems like GenLayer.

---

## 🧠 Concept

The goal is to explore:

* Simple onchain game mechanics
* Player interaction through transactions
* Minimal but functional game design


---

## ⚙️ Tech Stack

* **Solidity** — Smart contract logic
* **Hardhat** — Development & deployment
* **Base Sepolia** — Testnet deployment
* **Node.js** — Scripting

---

## 🌐 Network Details

* Network: Base Sepolia
* Chain ID: `84532`
* Environment: Testnet

---

## 📦 Project Structure

```
base-guess-game/
├── contracts/
│   └── GuessTheNumber.sol
├── scripts/
│   └── deploy.js
├── hardhat.config.js
└── README.md
```

---

## 🛠️ Installation

```bash
npm install
```

---

## 🔑 Setup Environment

Create a `.env` file:

```env
BASE_SEPOLIA_RPC_URL=your_rpc_url

```

---

## 🚀 Deploy Contract

```bash
npx hardhat run scripts/deploy.js --network baseSepolia
```

---

## 🎮 How to Play

1. Connect your wallet
2. Call the `guess(number)` function
3. Pay the required fee
4. If your guess is correct → 🎉 you win the contract balance

---

## 📜 Smart Contract Features

* Pay-to-play mechanic
* Winner-takes-all reward system
* Owner-controlled secret number
* Event emission for tracking gameplay


## 📌 Notes

* This project is for education
* Deployed on testnet no real funds required



