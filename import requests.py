import requests

# 1. 아까 브라우저에 넣었던 그 주소를 통째로 넣으세요
url = "https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=4ae57fd056a83f59e7561791b26b4d3a&units=metric&lang=kr"

# 2. 데이터 가져오기
response = requests.get(url)
data = response.json()

# 3. 필요한 정보만 쏙쏙 뽑기 (JSON 구조 분석)
city = data['name']
temp = data['main']['temp']
desc = data['weather'][0]['description']

# 4. 결과 출력
print(f"도시: {city} / 현재 기온: {temp}도 / 날씨: {desc}")