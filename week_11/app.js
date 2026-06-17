const vault = require("node-vault")({
  apiVersion: "v1",
  endpoint: "http://127.0.0.1:8200",
  token: "I remove my token" 
});

async function getCredentials() {
  try {
    console.log("Connecting to Vault...");
    // In Vault's dev mode, the KV engine uses the /data/ path for reading
    const response = await vault.read("secret/data/database");
    const credentials = response.data.data;
    
    console.log("✅ Credentials retrieved successfully!");
    console.log(`Username: ${credentials.username}`);
    console.log(`Password: ${credentials.password}`);
  } catch (error) {
    console.error("❌ Failed to read from Vault:", error.message);
  }
}

getCredentials();
