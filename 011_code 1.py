from textblob import TextBlob

# 분석할 문장들
texts = [
    "I love this data analysis class!", # 긍정
    "I am so confused and sad.",         # 부정
    "This is a blue pen."                # 중립
]

print("=== AI 감정 분석 결과 ===")

for text in texts:
    # AI 모델(TextBlob)이 문장을 분석함
    analysis = TextBlob(text)
    
    # 결과 수치 (1에 가까우면 긍정, -1에 가까우면 부정)
    score = analysis.sentiment.polarity
    
    # 점수에 따라 사람이 읽기 편하게 변환
    if score > 0:
        result = "긍정 😊"
    elif score < 0:
        result = "부정 ☹️"
    else:
        result = "중립 😐"
        
    print(f"문장: {text}")
    print(f"결과: {result} (점수: {score})")
    print("-" * 30)