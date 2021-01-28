import requests
import request

complete = int()
success = int()
failed = int()

print(
    "      _   _______ _                 _  \n"
    "     | | | | ___ \ |               | | \n"
    "  ___| | | | |_/ / |     __ _ _   _| |_ ___  \n"
    " / __| | | |    /| |    / _| | | | | __/ _ \ \n"
    "| (__| |_| | |\ \| |___| (_| | |_| | || (_) |\n"
    " \___|\___/\_| \_\_____/\__,_|\__,_|\__\___/ \n"
)
print("v2.0 Python Edition")
print("Developer: Dimon borshch")
print("Enter number of iterarions:")
iterations = int(input())

while (complete < iterations):
    response = requests.post(request.url, headers=request.headers, data=request.data)
    print(response)
    if (response.status_code == 200): success += 1
    else: failed += 1
    complete += 1

print(
    "Total requests: ", complete, "\n"
    "Success: ", success, "\n"
    "Failed: ", failed
)
