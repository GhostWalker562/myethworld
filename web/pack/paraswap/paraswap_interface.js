/**  
Initialize Superfluid
*/
async function psAllowance(address, token) {
  return new Promise(async (resolve, reject) => {
    console.log("psAllowance");
    let val = await window.psAllowance(address, token);
    resolve();
  });
}
