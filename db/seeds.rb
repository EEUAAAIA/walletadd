# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



blockchain1 = Blockchain.create(name:"Bitcoin", description: "La blockchain de Bitcoin est une base de données distribuée qui contient toutes les transactions jamais effectuées sur le réseau Bitcoin.")
blockchain2 = Blockchain.create(name:"Ethereum", description: "La blockchain Ethereum est une plateforme open-source qui permet le développement de contrats intelligents (smart contracts) et d'applications décentralisées (dApps). Elle utilise une technologie de blockchain similaire à celle de Bitcoin, mais avec des fonctionnalités supplémentaires qui lui permettent de prendre en charge des contrats intelligents, des jetons non fongibles (NFT) et des applications décentralisées.")
blockchain3 = Blockchain.create(name:"Ripple", description: "Ripple est une blockchain conçue pour faciliter les transactions financières internationales. Contrairement à Bitcoin, qui est conçue pour être décentralisée et sans autorité centrale, Ripple est contrôlée par une entreprise privée qui travaille en collaboration avec des banques et d'autres institutions financières.")

blockchain4 = Blockchain.create(name:"Blockchain Admin 1", description: "Description Blockchain Admin 1")
blockchain5 = Blockchain.create(name:"Blockchain Admin 2", description: "Description Blockchain Admin 2")
blockchain6 = Blockchain.create(name:"Blockchain Admin 3", description: "Description Blockchain Admin 3")

blockchain7 = Blockchain.create(name:"Blockchain visitor1 1", description: "Description Blockchain visitor1 1")
blockchain8 = Blockchain.create(name:"Blockchain visitor1 2", description: "Description Blockchain visitor1 2")
blockchain9 = Blockchain.create(name:"Blockchain visitor1 3", description: "Description Blockchain visitor1 3")

blockchain10 = Blockchain.create(name:"Blockchain visitor2 1", description: "Description Blockchain visitor2 1")
blockchain11 = Blockchain.create(name:"Blockchain visitor2 2", description: "Description Blockchain visitor2 2")
blockchain12 = Blockchain.create(name:"Blockchain visitor2 3", description: "Description Blockchain visitor2 3")

wallet1 = Wallet.create(name: "Coinbase", blockchain_id: blockchain1.id)
wallet2 = Wallet.create(name: "Metamask", blockchain_id: blockchain2.id)
wallet3 = Wallet.create(name: " Toast Wallet", blockchain_id: blockchain3.id)

wallet4 = Wallet.create(name: "Wallet admin 1", blockchain_id: blockchain4.id)
wallet5 = Wallet.create(name: "Wallet admin 2", blockchain_id: blockchain5.id)
wallet6 = Wallet.create(name: "Wallet admin 3", blockchain_id: blockchain6.id)

wallet7 = Wallet.create(name: "Wallet visitor1 1", blockchain_id: blockchain7.id)
wallet8 = Wallet.create(name: "Wallet visitor1 2", blockchain_id: blockchain8.id)
wallet9 = Wallet.create(name: "Wallet visitor1 3", blockchain_id: blockchain9.id)

wallet10 = Wallet.create(name: "Wallet visitor2 1", blockchain_id: blockchain10.id)
wallet11 = Wallet.create(name: "Wallet visitor2 2", blockchain_id: blockchain11.id)
wallet12 = Wallet.create(name: "Wallet visitor2 3", blockchain_id: blockchain12.id)

address1 = Address.create(username: "Bernard", address: "1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2", wallet_id: wallet1.id)
address2 = Address.create(username: "Max", address: "0xAb5801a7D398351b8bE11C439e05C5B3259aeC9", wallet_id: wallet2.id)
address3 = Address.create(username: "Xavier", address: "rLW9gnQo7BQhU6igk5keqYnH3TVrCxGRzm", wallet_id: wallet3.id)

address4 = Address.create(username: "NFT Admin", address: "1B#NFTAdmin#4GFg7xJaNVN2", wallet_id: wallet4.id)
address5 = Address.create(username: "Crypto Admin", address: "0x#CryptoAdmin#bE11C439e05C5B3259aeC9", wallet_id: wallet5.id)
address6 = Address.create(username: "Shitcoin Admin", address: "rL#ShitcoinAdmin#W9U6igk5keqYnH3TVrCxGRzm", wallet_id: wallet6.id)

address7 = Address.create(username: "NFT Visitor1", address: "1B#NFTVisitor1#4GFg7xJaNVN2", wallet_id: wallet7.id)
address8 = Address.create(username: "Crypto Visitor1", address: "0x#CryptoVisitor1#bE11C439e05C5B3259aeC9", wallet_id: wallet8.id)
address9 = Address.create(username: "Shitcoin Visitor1", address: "rL#ShitcoinVisitor1#W9U6igk5keqYnH3TVrCxGRzm", wallet_id: wallet9.id)

address10 = Address.create(username: "NFT Visitor2", address: "1B#NFTVisitor2#4GFg7xJaNVN2", wallet_id: wallet10.id)
address11 = Address.create(username: "Crypto Visitor2", address: "0x#CryptoVisitor2#bE11C439e05C5B3259aeC9", wallet_id: wallet11.id)
address12 = Address.create(username: "Shitcoin Visitor2", address: "rL#ShitcoinVisitor2#W9U6igk5keqYnH3TVrCxGRzm", wallet_id: wallet12.id)

user1 = User.create(email: "admin@walletadd.fr", password: "admin_password")
user2 = User.create(email: "visitor1@walletadd.fr", password: "visitor1_password")
user3 = User.create(email: "visitor2@walletadd.fr", password: "visitor2_password")

user_blockchain1 = UserBlockchain.create(user: user1, blockchain: blockchain4)
user_blockchain2 = UserBlockchain.create(user: user1, blockchain: blockchain5)
user_blockchain3 = UserBlockchain.create(user: user1, blockchain: blockchain6)

user_blockchain4 = UserBlockchain.create(user: user2, blockchain: blockchain7)
user_blockchain5 = UserBlockchain.create(user: user2, blockchain: blockchain8)
user_blockchain6 = UserBlockchain.create(user: user2, blockchain: blockchain9)

user_blockchain7 = UserBlockchain.create(user: user3, blockchain: blockchain10)
user_blockchain8 = UserBlockchain.create(user: user3, blockchain: blockchain11)
user_blockchain9 = UserBlockchain.create(user: user3, blockchain: blockchain12)

user_wallet1 = UserWallet.create(user: user1, wallet: wallet4)
user_wallet2 = UserWallet.create(user: user1, wallet: wallet5)
user_wallet3 = UserWallet.create(user: user1, wallet: wallet6)

user_wallet4 = UserWallet.create(user: user2, wallet: wallet7)
user_wallet5 = UserWallet.create(user: user2, wallet: wallet8)
user_wallet6 = UserWallet.create(user: user2, wallet: wallet9)

user_wallet7 = UserWallet.create(user: user3, wallet: wallet10)
user_wallet8 = UserWallet.create(user: user3, wallet: wallet11)
user_wallet9 = UserWallet.create(user: user3, wallet: wallet12)

user_address1 = UserAddress.create(user: user1, address: address4)
user_address2 = UserAddress.create(user: user1, address: address5)
user_address3 = UserAddress.create(user: user1, address: address6)

user_address4 = UserAddress.create(user: user2, address: address7)
user_address5 = UserAddress.create(user: user2, address: address8)
user_address6 = UserAddress.create(user: user2, address: address9)

user_address7 = UserAddress.create(user: user3, address: address10)
user_address8 = UserAddress.create(user: user3, address: address11)
user_address9 = UserAddress.create(user: user3, address: address12)
