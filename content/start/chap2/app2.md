---
title: 시작하기 - 챕터 2 - 웹앱 레이아웃
image: 
description: 지금까지의 과정을 웹앱으로 변신시킴으로써 Babylon.js 공부를 이어나가 봅시다.
keywords: 시작하기, 시작, 챕터 2, 웹앱, 앱
further-reading:
video-overview:
video-content:
---

<!-- # Getting Started - Web App Layout -->
# 시작하기 - 웹앱 레이아웃

<!-- ## Varying Web App Layout -->
## 웹앱 레이아웃 바꾸기
<!-- Whilst you probably want your game or app to take up most of the page you might want some space for instructions as an example. Just place your *&lt;canvas&gt;* element in a *&lt;div&gt;* and arrange the elements as you need. -->
게임이나 앱이 페이지의 상당 부분을 차지하기를 원하시겠지만 아마 설명을 위해 어느정도의 공간을 남겨두어야 할 것입니다. 단순히 *&lt;canvas&gt;* Element를 *&lt;div&gt;* 안에 넣어 워하시는 대로 요소들을 구성하시면 됩니다.

```html
<div id = "holder">
        <canvas id="renderCanvas" touch-action="none"></canvas> <!-- touch-action="none" for best results from PEP -->
</div>
<div id = "instructions">
    <br/>
    <h2>설명</h2>
    <br/>
    설명 설명 설명 설명 설명 
    설명 설명 설명 설명 설명 
</div>
```
<!-- with additional styles -->
추가 스타일
```html
<style>
    #holder {
        width: 80%;
        height: 100%;
        float: left;
    }

    #instructions {
        width: 20%;
        height: 100%;
        float: left;
        background-color: grey;
    }
</style>
```

<!-- [Example App and Instructions](/webpages/app3.html) importing the model village -->
[예시 앱과 설명](/webpages/app3.html) 마을 모델 가져오기

<!-- You could of course still build your scene completely from code -->
당연히 코드로 씬을 만들어내는 것도 가능합니다.

<!-- [Example App and Instructions](/webpages/app4.html) building the village from code -->
[예시 앱과 설명](/webpages/app4.html) 코드로 마을 생성하기

<!-- During the next stage in developing the world we are going to add movement by animating a very basic car. A car needs wheels that turn independently of the car body. To see how this is achieved we need to look at parenting the wheels to the body.  -->
다음 단계에서 우리는 단순한 자동차에 애니메이션을 추가하여 움직임을 만들어낼 것입니다. 자동차는 차체와 별개로 독립적으로 움직이는 바퀴들이 필요합니다. 이렇게 만들기 위해 바퀴와 부모인 차체와의 관계를 보아야 합니다.