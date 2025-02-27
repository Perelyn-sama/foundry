struct Log { bytes32[] topics; bytes data; }
struct Rpc { string name; string url; }
struct EthGetLogs { address emitter; bytes32[] topics; bytes data; uint256 blockNumber; bytes32 transactionHash; uint256 transactionIndex; bytes32 blockHash; uint256 logIndex; bool removed; }
struct DirEntry { string errorMessage; string path; uint64 depth; bool isDir; bool isSymlink; }
struct FsMetadata { bool isDir; bool isSymlink; uint256 length; bool readOnly; uint256 modified; uint256 accessed; uint256 created; }
struct Wallet { address addr; uint256 publicKeyX; uint256 publicKeyY; uint256 privateKey; }
struct FfiResult { int32 exitCode; bytes stdout; bytes stderr; }

allowCheatcodes(address)

tryFfi(string[])(FfiResult)
ffi(string[])(bytes)

breakpoint(string)
breakpoint(string,bool)

roll(uint256)
warp(uint256)
difficulty(uint256)
prevrandao(bytes32)
fee(uint256)
coinbase(address)
store(address,bytes32,bytes32)
load(address,bytes32)(bytes32)
cool(address)

setEnv(string,string)
envBool(string)(bool)
envUint(string)(uint256)
envInt(string)(int256)
envAddress(string)(address)
envBytes32(string)(bytes32)
envString(string)(string)
envBytes(string)(bytes)
envBool(string,string)(bool[])
envUint(string,string)(uint256[])
envInt(string,string)(int256[])
envAddress(string,string)(address[])
envBytes32(string,string)(bytes32[])
envString(string,string)(string[])
envBytes(string,string)(bytes[])
envOr(string,bool)(bool)
envOr(string,uint256)(uint256)
envOr(string,int256)(int256)
envOr(string,address)(address)
envOr(string,bytes32)(bytes32)
envOr(string,string)(string)
envOr(string,bytes)(bytes)
envOr(string,string,bool[])(bool[])
envOr(string,string,uint256[])(uint256[])
envOr(string,string,int256[])(int256[])
envOr(string,string,address[])(address[])
envOr(string,string,bytes32[])(bytes32[])
envOr(string,string,string[])(string[])
envOr(string,string,bytes[])(bytes[])

addr(uint256)(address)
sign(uint256,bytes32)(uint8,bytes32,bytes32)
deriveKey(string,uint32)(uint256)
deriveKey(string,string,uint32)(uint256)
deriveKey(string,uint32,string)(uint256)
deriveKey(string,string,uint32,string)(uint256)
rememberKey(uint256)(address)

createWallet(string)(Wallet)
createWallet(uint256)(Wallet)
createWallet(uint256,string)(Wallet)
sign(Wallet,bytes32)(uint8,bytes32,bytes32)
getNonce(Wallet)(uint64)

prank(address)
prank(address,address)
readCallers()(uint256,address,address)
startPrank(address)
startPrank(address,address)
stopPrank()

deal(address,uint256)
etch(address,bytes)
expectRevert()
expectRevert(bytes)
expectRevert(bytes4)
record()
accesses(address)(bytes32[],bytes32[])
skip(bool)

recordLogs()
getRecordedLogs()(Log[])

expectEmit()
expectEmit(address)
expectEmit(bool,bool,bool,bool)
expectEmit(bool,bool,bool,bool,address)

mockCall(address,bytes,bytes)
mockCall(address,uint256,bytes,bytes)
mockCallRevert(address,bytes,bytes)
mockCallRevert(address,uint256,bytes,bytes)
clearMockedCalls()

expectCall(address,bytes)
expectCall(address,bytes,uint64)
expectCall(address,uint256,bytes)
expectCall(address,uint256,bytes,uint64)
expectCall(address,uint256,uint64,bytes)
expectCall(address,uint256,uint64,bytes,uint64)
expectCallMinGas(address,uint256,uint64,bytes)
expectCallMinGas(address,uint256,uint64,bytes,uint64)
expectSafeMemory(uint64,uint64)
expectSafeMemoryCall(uint64,uint64)

getCode(string)
getDeployedCode(string)
label(address,string)
getLabel(address)(string)
assume(bool)
setNonce(address,uint64)
getNonce(address)
resetNonce(address)
setNonceUnsafe(address,uint64)
chainId(uint256)
txGasPrice(uint256)

broadcast()
broadcast(address)
broadcast(uint256)
startBroadcast()
startBroadcast(address)
startBroadcast(uint256)
stopBroadcast()

projectRoot()(string)
openFile(string)
readFile(string)(string)
readFileBinary(string)(bytes)
readLine(string)(string)
writeFile(string,string)
writeFileBinary(string,bytes)
writeLine(string,string)
copyFile(string,string)
closeFile(string)
removeFile(string)
createDir(string, bool)
removeDir(string, bool)
readDir(string)(DirEntry[])
readDir(string, uint64)(DirEntry[])
readDir(string, uint64, bool)(DirEntry[])
readLink(string)(string)
fsMetadata(string)(FsMetadata)
exists(string)(bool)
isFile(string)(bool)
isDir(string)(bool)

toString(bytes)
toString(address)
toString(uint256)
toString(int256)
toString(bytes32)
toString(bool)
parseBytes(string)(bytes)
parseAddress(string)(address)
parseUint(string)(uint256)
parseInt(string)(int256)
parseBytes32(string)(bytes32)
parseBool(string)(bool)

snapshot()(uint256)
revertTo(uint256)(bool)
createFork(string,uint256)(uint256)
createFork(string,bytes32)(uint256)
createFork(string)(uint256)
createSelectFork(string,uint256)(uint256)
createSelectFork(string,bytes32)(uint256)
createSelectFork(string)(uint256)
selectFork(uint256)
activeFork()(uint256)
transact(bytes32)
transact(uint256,bytes32)
makePersistent(address)
makePersistent(address,address)
makePersistent(address,address,address)
makePersistent(address[])
revokePersistent(address)
revokePersistent(address[])
isPersistent(address)(bool)
rollFork(uint256)
rollFork(bytes32)
rollFork(uint256,uint256)
rollFork(uint256,bytes32)
rpcUrl(string)(string)
rpcUrls()(string[2][])
rpcUrlStructs()(Rpc[])
eth_getLogs(uint256,uint256,address,bytes32[])(EthGetLogs[])
rpc(string,string)(bytes)


writeJson(string, string)
writeJson(string, string, string)
parseJson(string)(bytes)
parseJson(string, string)(bytes)
parseJsonKeys(string, string)(string[])
parseJsonUint(string, string)(uint256)
parseJsonUintArray(string, string)(uint256[])
parseJsonInt(string, string)(int256)
parseJsonIntArray(string, string)(int256[])
parseJsonString(string, string)(string)
parseJsonStringArray(string, string)(string[])
parseJsonAddress(string, string)(address)
parseJsonAddressArray(string, string)(address[])
parseJsonBool(string, string)(bool)
parseJsonBoolArray(string, string)(bool[])
parseJsonBytes(string, string)(bytes)
parseJsonBytesArray(string, string)(bytes[])
parseJsonBytes32(string, string)(bytes32)
parseJsonBytes32Array(string, string)(bytes32[])
serializeJson(string,string)(string)
serializeBool(string,string,bool)(string)
serializeBool(string,string,bool[])(string)
serializeUint(string,string,uint256)(string)
serializeUint(string,string,uint256[])(string)
serializeInt(string,string,int256)(string)
serializeInt(string,string,int256[])(string)
serializeAddress(string,string,address)(string)
serializeAddress(string,string,address[])(string)
serializeBytes32(string,string,bytes32)(string)
serializeBytes32(string,string,bytes32[])(string)
serializeString(string,string,string)(string)
serializeString(string,string,string[])(string)
serializeBytes(string,string,bytes)(string)
serializeBytes(string,string,bytes[])(string)
keyExists(string,string)(bool)

pauseGasMetering()
resumeGasMetering()
startMappingRecording()
stopMappingRecording()
getMappingLength(address,bytes32)
getMappingSlotAt(address,bytes32,uint256)
getMappingKeyAndParentOf(address,bytes32)

sleep(uint256)
