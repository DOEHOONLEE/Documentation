---
title: 시작하기 - 챕터 1 - 첫 웹앱 세팅
image: 
description: 첫 모델을 로드하거나 Babylon.js 씬에 코드로 모델을 만들어 넣기 위한 HTML 템플릿
keywords: 시작하기, 시작, 챕터 1, 첫 모델, 불러오기
further-reading: 
  - title: npm 으로 셋업하기
    url: /divingDeeper/developWithBjs/npmSupport
  - title: 트리쉐이킹으로 셋업하기
    url: /divingDeeper/developWithBjs/treeShaking
video-overview:
video-content:
---

# 웹앱 템플릿

Playground 에서 코딩을 하기 위해서 필요한 템플릿을 보셨을겁니다.

```javascript
var createScene = function() {
    var scene = new BABYLON.Scene(engine);

    // 씬에 카메라를 생성하고 이를 캔버스에 연결시켜
    // 씬에 조명을 추가해주세요

    //코드

  return scene;
};
```

이 구성대로 당신의 프로젝트의 HTML 페이지에 아래와 같은 템플릿을 넣어 적용시킬 수 있습니다.

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Babylon Template</title>

        <style>
            html, body {
                overflow: hidden;
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
            }

            #renderCanvas {
                width: 100%;
                height: 100%;
                touch-action: none;
            }
        </style>

        <script src="https://cdn.babylonjs.com/babylon.js"></script>
        <script src="https://cdn.babylonjs.com/loaders/babylonjs.loaders.min.js"></script>
        <script src="https://code.jquery.com/pep/0.4.3/pep.js"></script>
    </head>

   <body>

	<canvas id="renderCanvas" touch-action="none"></canvas> <!-- touch-action="none" for best results from PEP -->

	<script>
        const canvas = document.getElementById("renderCanvas"); // 캔버스 엘레먼트
        const engine = new BABYLON.Engine(canvas, true); // Babylon 3D 엔진 생성

        // 여기에 Playground 포맷에 맞게 당신의 코드를 추가해주세요
        const scene = createScene(); // createScene 함수 호출

        // 씬을 반복적으로 렌더하기 위해 렌더 루프를 등록해주세요
        engine.runRenderLoop(function () {
                scene.render();
        });

        // 브라우저/캔버스 리사이즈 이벤트
        window.addEventListener("resize", function () {
                engine.resize();
        });
	</script>

   </body>

</html>
```

이 라인은
```javascript
<script src="https://cdn.babylonjs.com/loaders/babylonjs.loaders.min.js"></script>
```
씬에 모델을 불러올 수 있도록 해줍니다.

이 라인은
```javascript
<script src="https://code.jquery.com/pep/0.4.3/pep.js"></script>
```
터치 스크린을 사용 할 수 있도로고 해줍니다.

## 예시들

### 모델 셋업 불러오기
아래는 앱에 박스 모델을 로드해줍니다.

[First App](/webpages/app1.html)

불러온 모델에 대한 예시 셋업
```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Babylon Template</title>

        <style>
            html, body {
                overflow: hidden;
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
            }

            #renderCanvas {
                width: 100%;
                height: 100%;
                touch-action: none;
            }
        </style>

        <script src="https://cdn.babylonjs.com/babylon.js"></script>
        <script src="https://cdn.babylonjs.com/loaders/babylonjs.loaders.min.js"></script>
        <script src="https://code.jquery.com/pep/0.4.3/pep.js"></script>
    </head>

   <body>

	<canvas id="renderCanvas" touch-action="none"></canvas> <!-- touch-action="none" for best results from PEP -->

	<script>
        const canvas = document.getElementById("renderCanvas"); // 캔버스 엘레먼트
        const engine = new BABYLON.Engine(canvas, true); // Babylon 3D 엔진 생성

        // 여기에 Playground 포맷에 맞게 당신의 코드를 추가해주세요
        const createScene = function () {
    
            const scene = new BABYLON.Scene(engine);  

            BABYLON.SceneLoader.ImportMeshAsync("", "https://assets.babylonjs.com/meshes/", "box.babylon");

            const camera = new BABYLON.ArcRotateCamera("camera", -Math.PI / 2, Math.PI / 2.5, 15, new BABYLON.Vector3(0, 0, 0));
            camera.attachControl(canvas, true);
            const light = new BABYLON.HemisphericLight("light", new BABYLON.Vector3(1, 1, 0));

            return scene;
        };

        const scene = createScene(); // createScene 함수 호출

        // 씬을 반복적으로 렌더하기 위해 렌더 루프를 등록해주세요
        engine.runRenderLoop(function () {
                scene.render();
        });

        // 브라우저/캔버스 리사이즈 이벤트
        window.addEventListener("resize", function () {
                engine.resize();
        });
	</script>

   </body>

</html>
```

### 코드로 모델 세팅하기

아래는 앱에 박스 모델을 생성합니다.

[First Coded App](/webpages/app2.html)

모델 셋업 예시

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Babylon Template</title>

        <style>
            html, body {
                overflow: hidden;
                width: 100%;
                height: 100%;
                margin: 0;
                padding: 0;
            }

            #renderCanvas {
                width: 100%;
                height: 100%;
                touch-action: none;
            }
        </style>

        <script src="https://cdn.babylonjs.com/babylon.js"></script>
        <script src="https://cdn.babylonjs.com/loaders/babylonjs.loaders.min.js"></script>
        <script src="https://code.jquery.com/pep/0.4.3/pep.js"></script>
    </head>

   <body>

	<canvas id="renderCanvas" touch-action="none"></canvas> <!-- touch-action="none" for best results from PEP -->

	<script>
        const canvas = document.getElementById("renderCanvas"); // 캔버스 엘레먼트
        const engine = new BABYLON.Engine(canvas, true); // Babylon 3D 엔진 생성

        // 여기에 Playground 포맷에 맞게 당신의 코드를 추가해주세요
        const createScene = function () {
    
            const scene = new BABYLON.Scene(engine);  

            BABYLON.MeshBuilder.CreateBox("box", {})

            const camera = new BABYLON.ArcRotateCamera("camera", -Math.PI / 2, Math.PI / 2.5, 15, new BABYLON.Vector3(0, 0, 0));
            camera.attachControl(canvas, true);
            const light = new BABYLON.HemisphericLight("light", new BABYLON.Vector3(1, 1, 0));

            return scene;
        };

        const scene = createScene(); // createScene 함수 호출

        // 씬을 반복적으로 렌더하기 위해 렌더 루프를 등록해주세요
        engine.runRenderLoop(function () {
                scene.render();
        });

        // 브라우저/캔버스 리사이즈 이벤트
        window.addEventListener("resize", function () {
                engine.resize();
        });
	</script>

   </body>

</html>
```

더 많은 Babylon.js 사용법을 알아보고 더 흥미로운 모델들을 빌드하는 법을 배우러 가봅시다. 세계에 빌드를 할 수 있는 땅을 만드는 것부터 시작해보겠습니다.
