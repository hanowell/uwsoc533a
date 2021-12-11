library(keyring)

# Set your password (in RStudio, you will get a pop-up asking for password)
keyring::key_set(service = "human-mortality-database",
                 username = "[YOUR HMD USERNAME HERE]")