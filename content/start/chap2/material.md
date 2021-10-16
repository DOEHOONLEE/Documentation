---
title: 시작하기 - 챕터 2 - 텍스처
image: 
description: 씬 안의 물체에 재료를 추가해봅시다
keywords: 시작하기, 시작, 챕터 2, 재료
further-reading:
    - title: More on Materials
      url: /divingDeeper/materials
video-overview:
video-content:
---

<!-- # Getting Started - Texture -->
# 시작하기 - 텍스처

<!-- ## Add Texture -->
## 텍스처 추가하기
<!-- In order to add color and texture to our meshes we apply a material to them. The basic material is the standard material created like this -->
메쉬에 색상이나 텍스처를 추가하기 위해서는 우선 재료를 적용시켜야 합니다. 기본적인 재료는 이렇게 생성된 standar material 입니다.

```javascript
const material = new BABYLON.StandardMaterial("name", scene);
```
Let's make the ground color green for grass

```javascript
const groundMat = new BABYLON.StandardMaterial("groundMat");
groundMat.diffuseColor = new BABYLON.Color3(0, 1, 0);
ground.material = groundMat; //Place the material property of the ground
```
<!-- Since there is only one scene we can drop that parameter and let it default to the current scene. -->


<!-- Setting a color requires three parameters, red, green, blue (r, g, b) each 0 - 1 inclusive (0, 0, 0) is black and (1, 1, 1) is white.  
For these colors you can use -->
색상을 세팅 할 때에는 세가지의 파라미터가 필요합니다. 빨강, 초록, 파랑 (r, b, b) 각각 0 ~ 1 (0과 1을 포함한 숫자), (0, 0, 0) 은 검정 그리고 (1, 1, 1) 은 하얀색입니다.

```javascript
new BABYLON.Color3.Red();
new BABYLON.Color3.Green();
new BABYLON.Color3.Blue();
new BABYLON.Color3.Black();
new BABYLON.Color3.White();
new BABYLON.Color3.Purple();
new BABYLON.Color3.Magenta();
new BABYLON.Color3.Yellow();
new BABYLON.Color3.Gray(),
new BABYLON.Color3.Teal();
```
<!-- Now some texture for the box and roof -->
자, 상자와 지붕에 텍스처를 입혀보겠습니다.
```javascript
const roofMat = new BABYLON.StandardMaterial("roofMat");
roofMat.diffuseTexture = new BABYLON.Texture("https://assets.babylonjs.com/environments/roof.jpg", scene);
const boxMat = new BABYLON.StandardMaterial("boxMat");
boxMat.diffuseTexture = new BABYLON.Texture("https://www.babylonjs-playground.com/textures/floor.png");
```
<!-- The first parameter for a texture is a relative or absolute url to the image to be used. As usual the scene parameter is optional and will default to the current scene. -->
텍스처의 첫번째 파라미터는 이미지의 상대 또는 절대 경로 url 입니다. 

<!-- Finally of course set their material properties -->
마지막으로, 당연히, 재료들의 프로퍼티를 세팅하여야 합니다.
```
roof.material = roofMat;
box.material = boxMat;
```

<Playground id="#KBS9I5#71" title="Adding Materials To Your Objects'" description="A playground demonstrating how to add materials to the objects in your scene." image="/img/playgroundsAndNMEs/gettingStartedMaterials.jpg"/>

![house 2](/img/getstarted/house2.png)

<!-- Having stone walls with no doors or windows is not an interesting look for a house. Also when you look closely you can see that each side uses the same image and on some sides it is rotated.  -->
문과 창문이 없는 돌로 된 벽을 가진 집은 그다지 끌리는 모습은 아닙니다. 또한, 자세히 들여다보면 각 사이드가 같은 이미지로 구성되어있고 어떠한 사이드는 회전된 이미지로 되어있는 것을 보실 수 있습니다.