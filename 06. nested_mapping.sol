/*

A nested mapping is a mapping inside another mapping — a 2D structure, which allows to access data via two keys.

SYNTAX ->
mapping(KeyType1 => mapping(KeyType2 => ValueType)) public nestedMap;

EXAMPLE ->
mapping(address => mapping(address => uint)) public userTokenBalances;
userTokenBalances[userAddress][tokenContractAddress] = balance;

        ** Outer mapping uses the user's wallet address as the key, this represents each unique user
        ** The value of that outer mapping is another inner mapping
        ** The inner mapping stores how much of each token this user owns
        ** 1st Line - A public nested mapping that tracks how much of each token (by address) every user (by address) owns
        ** 2nd Line - Storing the balance of a specific token (tokenContractAddress) for a specific user (userAddress) in a nested mapping
        
*/
