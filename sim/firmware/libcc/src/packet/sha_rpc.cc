
#include <stdlib.h>
#include <packet.h>

uint32_t sha_rpc(sha_cmd_t * sha_command, uint32_t *result){
  const char cmdFmt[] = "sha(%08x,%08x)";
  const int CMD_LEN = 4+8*2+1+1+1;  //based off the format string 2 8 char words, a comma, a ) and a \0
  const int RES_LEN = 8+1;            //+1 for \0 at end of string
  char rpcCmd[CMD_LEN];
  char errorsStr[RES_LEN];
  uint32_t errors = 0;

  //format the call and call the rpc
  psprintf(rpcCmd, 
	   cmdFmt, 
	   (uint32_t)sha_command,
	   result
	   );
  callRpc(rpcCmd,errorsStr,sizeof(errorsStr));

  //Deal with the return values
  errors = ConvertHexString2Int(errorsStr,8);

  return errors;
}
