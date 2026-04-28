import pandas as pd

# 1. 데이터 불러오기
df = pd.read_csv('public_air_quality.csv')

# 2. 데이터의 첫 인상 확인하기
print("▲ [STEP 1] 데이터 상단 5개 출력 (head)")
print(df.head())  

# 3. 데이터의 속성 파악하기
print("\n▲ [STEP 2] 데이터 구조 및 자료형 확인 (info)")
df.info()

# 4. 기초 통계량 확인
print("\n▲ [STEP 3] 수치형 데이터 요약 (describe)")
print(df.describe()) 