import os

SECRET_KEY = os.getenv("SECRET_KEY", "NoSecretFound")

print("Hello from my DevOps CI app!")
print(f"My secret key is: {SECRET_KEY}")
