library(keyring)

# Set your password for Human Mortality Database (HMD)
keyring::key_set(service = "human-mortality-database",
                 username = "[YOUR HMD USERNAME HERE]")
# Enter your HMD password in the prompt

# Set your password for Human Fertility Database (HFD)
keyring::key_set(service = "human-fertility-database",
                 username = "[YOUR HFD USERNAME HERE]")
# Enter your HFD password in the prompt
