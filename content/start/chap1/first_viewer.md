---
title: 시작하기 - 챕터 1 - 웹사이트 향상 시키기
image: 
description: 첫 웹사이트를 향상시킴으로써 Babylon.js 으로의 발걸음을 이어나갑니다.
keywords: 시작하기, 시작, 챕터 1, 첫번째 사이트
further-reading: 
video-overview:
video-content:
---

<!-- # Getting Started - Enhancing Your Website -->
# 시작하기 - 나의 웹사이트 향상시키기

<!-- ## First Model on a Web Page. -->
## 웹페이지의 첫번째 모델
<!-- Provided the file type is one recognized by Babylon.js then you can use the Babylon.js [Viewer](/extensions/babylonViewer) to display your scene or model on a web page using the *&lt;babylon&gt;* element. Examples of suitable file types are *.babylon*, *.gltf* and *glb* with *.glb* recommended. It makes no difference whether the scene was built with Babylon.js or created with your favorite design software. The *&lt;babylon&gt;* element will be sized to fit its container. -->
파일이 Babylon.js 에서 인식이 되는 경우, Babylon.js [뷰어](/extensions/babylonViewer) 를 통해 *&lt;babylon&gt;* 태그를 사용해 씬 또는 모델을 보여줄 수 있습니다. 맞는 형식의 예시로는 *.babylon*, *.gltf* 그리고 *glb* 와 *.glb* 를 권고합니다. Babylon.js 나 당신이 선호하는 디자인 소프트웨어로 만들어진 씬이나 다른 점은 없습니다. *&lt;babylon&gt;* 태그는 담겨있는 태그의 사이즈에 딱 맞게 들어가도록 되어있습니다.

<!-- In order to use the Viewer you need to add its code to your HTML page in a *&lt;script&gt;* element -->
뷰어를 사용하기  위해서는 HTML 페이지 안에 *&lt;script&gt;* 태그를 사용해 코드를 넣어주어야 합니다.

```javascript
<script src="https://cdn.babylonjs.com/viewer/babylon.viewer.js"></script>
```

<!-- Once this is added you place the *&lt;babylon&gt;* element in an appropriate container and points its *model* attribute to the file source. -->
위의 코드를 추가 한 후, *&lt;babylon&gt;* 태그를 알맞는 공간에 넣고 *model* 속성에 모델의 파일 경로를 바라보도록 해주세요.

```javascript
<babylon model="Path to File"></babylon>
```

<!-- [Example Web Page](/webpages/page1.html) -->
[웹 페이지 예시](/webpages/page1.html)

<!-- ![Page 1](/img/getstarted/view1.png) -->
[페이지 1](/img/getstarted/view1.png)

<!-- When you want to use your models for a game or application on a web page you need first to know how to import them.  -->
웹 페이지의 게임이나 어플리케이션에서 모델을 사용하기 위해서는 우선 모델을 어떻게 불러오는지에 대해 배워야 합니다.