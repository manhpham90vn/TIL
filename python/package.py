import requests

res = requests.get('https://google.com')
print(res.status_code)
print(res.text)