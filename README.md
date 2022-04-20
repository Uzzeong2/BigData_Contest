# 2020 T-Commerce Big data Contest
### [홈쇼핑 판매실적 예측 및 최적 편성방안 도출](https://user-images.githubusercontent.com/84368492/164151119-cd83aec4-57e4-4375-8e08-251cd7198922.jpg) :tv:
![image](https://user-images.githubusercontent.com/84368492/164152567-98ea5b41-7931-4f30-82b4-1369ea17417f.png)

* **과거 편성 데이터**를 활용하여 2020년 6월 프로그램 상품판매실적을 **예측**하였습니다.
* 예측한 판매실적을 이용하여 **최적 수익**을 고려한 편성 최적화 방안을 **제시**합니다.
* [**보고서**](https://github.com/tingting919/BigData_Contest/blob/main/2020%EB%B9%85%EC%BD%98_%EB%B3%B4%EA%B3%A0%EC%84%9C.pdf)를 통해 분석 과정을 확인하실 수 있습니다.   



## 1. Goal            
1️⃣: 날씨에 민감한 상품군 분석      
2️⃣: 사회이슈(코로나19, 언택트)에 따른 소비패턴 분석      
3️⃣: 시청률에 따른 상품매출 실적의 변화 분석   
4️⃣: 외부요인을 통해 프로그램 매출 실적 사전 예측 및 대응방안 제시   



## 2. Data   
주어진 데이터는 2019.01 ~ 2019.12 1년 동안의 프로그램별 **매출실적 데이터**와 요일별/시간대별 분단위 **시청률 데이터**(단위 %) 입니다.   
자회사의 홈표핑 카테고리를 참고하여 새로운 **고유코드**를 **부여**하였습니다.   
1년 간의 **날씨 데이터**, **외부 이슈 데이터**, **요일 데이터**를 추가로 수집해 분석하였습니다.   

<img width="800" height="400" src="https://user-images.githubusercontent.com/84368492/164160846-5bff902a-5650-4a1e-aa6c-4085ee82764b.png">
<img width="800" height="400" src="https://user-images.githubusercontent.com/84368492/164160790-f50a2e7f-eee8-467d-8cfc-8b0e4af4258d.png">   


 
## 3. Process   
분석은 다음 순서로 진행됩니다. 화살표를 **클릭**하시면 자세한 설명을 참고하실 수 있습니다.   
<details>
<summary> 1. 변수 생성 </summary>
<div markdown="1">

* **EDA**를 실시해 주어진 데이터의 변수와 판매실적 간의 상관관계와 소비패턴을 파악합니다.
* 범주형 변수 생성
 * 날짜를 **월/일/시간/주차/요일/휴일** 여부로 나누어 변수를 생성합니다.
 * 오분류된 상품이 많아 새로운 **상위/중간/하위** 카테고리를 생성하고 134개의 **고유코드**를 새로 부여합니다.
 * 추가적으로 수집한 날씨데이터를 분석하여 날씨관련 파생변수(**한파주의보/경보, 폭염주의보/경보**)를 데이터에 추가했습니다.
* 연속형 변수 생성
 * 
</div>
</details>


<details>
<summary> 2. 변수 정제 및 결측값 제거 </summary>
<div markdown="1">

|제목|내용|
|--|--|
|1|1|
|2|10|

</div>
</details>


<details>
<summary> 3. Modeling </summary>
<div markdown="1">

|제목|내용|
|--|--|
|1|1|
|2|10|

</div>
</details>   



   
<details>
<summary> 4. 날짜별 최적 편성 방안 </summary>
<div markdown="1">

|제목|내용|
|--|--|
|1|1|
|2|10|

</div>
</details>   


   
## 4. File Directory
