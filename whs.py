import requests

webhook_url = input("Enter your Discord webhook URL: ")
message = input("Enter the message to spam: ")
count = int(input("How many times to send the message? "))

for i in range(count):
    data = {"content": message}
    response = requests.post(webhook_url, json=data)
    if response.status_code == 204:
        print(f"[{i+1}/{count}] Message sent successfully")
    else:
        print(f"[{i+1}/{count}] Failed to send message: {response.status_code}")

print("Done!")
