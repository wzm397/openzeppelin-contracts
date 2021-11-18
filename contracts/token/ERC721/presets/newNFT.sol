pragma solidity ^0.8.0;
import "https://github.com/wzm397/openzeppelin-contracts/blob/master/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

//合约继承了ERC721PresetMinterPauserAutoId合约
contract newNFT is ERC721PresetMinterPauserAutoId {
    //初始化构造函数并设置名称及代币符号以及TokenURI
    constructor(string memory _name,string memory _symbol,string memory _baseTokenURI) public
    ERC721PresetMinterPauserAutoId(_name,_symbol,_baseTokenURI)  
    {}
    // This allows the minter to update the tokenURI after it's been minted.
    // To disable this, delete this function.
    function setTokenURI(uint256 tokenId, string memory tokenURI) public {
        require(hasRole(MINTER_ROLE, _msgSender()), "web3 CLI: must have minter role to update tokenURI");
        setTokenURI(tokenId, tokenURI);
    }
}
