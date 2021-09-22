/**  
Initialize Superfluid
*/
async function sfInit() {
  return new Promise(async (resolve, reject) => {
    try {
      await window.sfInit();
      resolve();
    } catch (error) {
      reject(error);
    }
  });
}

/**  
Retrieve the flows associated to the user.
*/
async function sfUser(address, token) {
  return new Promise(async (resolve, reject) => {
    try {
      resolve(await window.sfUser(address, token));
    } catch (error) {
      reject(error);
    }
  });
}

/**  
Create any outgoing subscriptions. 

sfUser must be called before using this function.
*/
async function sfFlow(address, token) {
  return new Promise(async (resolve, reject) => {
    try {
      await window.sfFlow(address, token)
      resolve();
    } catch (error) {
      reject(error);
    }
  });
}

/**  
Cancel any outgoing or incoming subscriptions with the address.

sfUser must be called before using this function.
*/
async function sfCancelFlow(address, token) {
  return new Promise(async (resolve, reject) => {
    try {
      await window.sfCancelFlow(address);
      resolve();
    } catch (error) {
      reject(error);
    }
  });
}
