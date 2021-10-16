---
title: 시작하기 - 챕터 1 - 첫번째 씬
image: /img/getstarted/wireframe.png
description: 첫 씬과 모데을 만들어보며 바빌론을 배워봅시다.
keywords: 시작하기, 시작, 챕터 1, 첫 씬
further-reading: 
video-overview:
video-content:
---

<!-- # Getting Started - Chapter 1 - First Scene -->
# 시작하기 - 챕터 1 - 첫번째 씬

<!-- ## First Scene and Model -->
## First Scene and Model

<!-- Whether you are creating a whole world or just placing one model into a web page you need a [scene](/divingDeeper/scene) to contain the world or model, a [camera](/divingDeeper/cameras) to view it, a [light](/divingDeeper/lights) to illuminate it and, of course, at least one viewable object as a model. All models, whether just a box or a complex character, are made from a [mesh](/divingDeeper/mesh) of triangles or facets. -->
우리가 한 세계의 모든 것을 만들던 웹페이지에 하나의 모델을 위치시키던 우리는 세계나 모델을 들고있는 [씬](/divingDeeper/scene), 이것을 볼 수 있도록 해주는 [카메라](/divingDeeper/cameras), 이를 밝혀주는 [조명](/divingDeeper/lights), 그리고 당연히 보여지는 최소한 하나의 물체가 필요합니다. 모든 모델들은, 그저 하나의 상자이던 복잡한 캐릭터이던, 삼각형 또는 면으로 이루어진 [메쉬](/divingDeeper/mesh)로 이루어져 있습니다.

<!-- ![wireframe](/img/getstarted/wireframe.png)  
Wireframe View Showing Mesh Triangles -->
![와이어프레임](/img/getstarted/wireframe.png)  
삼각 메쉬를 보여주는 와이어프레임 뷰

<!-- A large number of meshes can be created directly within Babylon.js using code, or, as you will shortly see, imported as models from meshes created with other software. Let us start simply with a box. -->


<!-- Examples on these pages can be viewed in the playground, the place to try out Babylon.js live on the web, by clicking on their titles. To edit the code open them with ![open pg](/img/getstarted/openpg.png) -->
해당 페이지들의 예제들은 타이틀을 클릭하여 바빌론.js 를 라이브로 테스트 할 수 있는 플레이그라운드에서 볼 수 있습니다. 코드를 수정하시려면 ![플레이그라운드 열기](/img/getstarted/openpg.png)를 열어주세요.

<!-- ## Say Hello to Your First World -->
당신의 첫번째 세계에 인사하세요

<!-- All projects using the Babylon.js Engine need a scene with a camera and a light added. Then we can create our box. -->
Babylon.js 엔진을 사용하는 모든 프로젝트는 카메라와 빛이 추가된 씬이 필요합니다. 그 다음에 우리는 상자를 만들 수 있습니다.

```javascript
const scene = new BABYLON.Scene(engine);

const camera = new BABYLON.ArcRotateCamera("camera", -Math.PI / 2, Math.PI / 2.5, 3, new BABYLON.Vector3(0, 0, 0), scene);
camera.attachControl(canvas, true);

const light = new BABYLON.HemisphericLight("light", new BABYLON.Vector3(0, 1, 0), scene);

const box = BABYLON.MeshBuilder.CreateBox("box", {}, scene);
```

<!-- Like most meshes created with MeshBuilder the box is created positioned with its center at the origin and needs three parameters. These are a name, *a string*,  options, *a JavaScript object*, and a scene. By leaving the options as an empty object *{}* with no properties the box defaults to one of unit size for its width, height and depth.  -->

<!-- To be usable in a playground we need to place these within a function called **createScene** which has to return a scene. The playground app takes care of the rest. -->

```javascript
const createScene =  () => {
    const scene = new BABYLON.Scene(engine);

    const camera = new BABYLON.ArcRotateCamera("camera", -Math.PI / 2, Math.PI / 2.5, 3, new BABYLON.Vector3(0, 0, 0));
    camera.attachControl(canvas, true);

    const light = new BABYLON.HemisphericLight("light", new BABYLON.Vector3(0, 1, 0));

    const box = BABYLON.MeshBuilder.CreateBox("box", {});

    return scene;
}
```

Since at this point there is only one scene you may notice that this parameter can be dropped from the camera, light and box as the default is for them to be placed in the current scene.

<Playground id="#KBS9I5" title="Getting Started First Scene Playground" description="Getting Started First Scene Playground." image="/img/playgroundsAndNMEs/gettingStartedFirstScene.jpg"/>

![box](/img/getstarted/house0.png)

Having created our box we can save, or export, the scene from within the playground by selecting the *Inspector*  
![inspector](/img/getstarted/pgpartmenu.png)    

followed by *Tools* and choose which type to export, the *.babylon* format or the *GLB* format.  
![Tools](/img/getstarted/export.png)

Now we have a file we can use it to demonstrate how to view it in a web page.

