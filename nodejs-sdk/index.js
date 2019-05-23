import * as msRestNodeAuth from "@azure/ms-rest-nodeauth";

import { Environment } from "@azure/ms-rest-azure-env";

import { StorageManagementClient, StorageManagementModels, StorageManagementMappers } from "@azure/arm-storage";

const subscriptionId = process.env["AZURE_SUBSCRIPTION_ID"];

const mooncake = Environment.ChinaCloud;

msRestNodeAuth.interactiveLogin({
    environment: mooncake
}).then((creds) => {
  const client = new StorageManagementClient(creds, subscriptionId);
  client.operations.list().then((result) => {
    console.log("The result is:");
    console.log(result);
  });
}).catch((err) => {
  console.error(err);
});