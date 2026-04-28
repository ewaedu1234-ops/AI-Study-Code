import pandas as pd

# 1. 데이터 불러오기 (앞서 만든 공공데이터 사용)
df = pd.read_csv('public_air_quality.csv')

print("=== [STEP 1] 원본 데이터 확인 ===")
print(df.head())
print("-" * 50)

# 2. 특성(Feature)과 정답(Label) 나누기
# AI에게 줄 공부 재료 (원인): 미세먼지와 초미세먼지 농도
features = df[['미세먼지(PM10)', '초미세먼지(PM2.5)']]

# AI가 맞춰야 할 과녁 (결과): 오존농도
label = df['오존농도']

# 3. 분리된 데이터 확인 (시각적 대조)
print("▲ [STEP 2] AI가 공부할 재료 (Feature) - '원인'")
print(features.head())
print("\n▲ [STEP 3] AI가 맞혀야 할 정답 (Label) - '결과'")
print(label.head())

# 4. AI 학습 구조의 이해 (도식적 설명용 출력)
print("-" * 50)
print(f"학습 구조: {list(features.columns)} 데이터를 입력하면 -> [{label.name}]을 예측합니다.")