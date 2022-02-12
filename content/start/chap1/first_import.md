---
title: 시작하기 - 챕터 1 - 모델과 작업하기
image:
description: 첫 모델을 Babylon.js 씬에 로드하는 법을 배웁니다.
keywords: 시작하기, 시작, 챕터 1, 첫 모델, 불러오기
further-reading:
video-overview:
video-content:
---

<!-- # Getting Started - Working with Models -->
# 시작하기 - 

<!-- The playgrounds on this page contain, for example, houses which are be positioned and rotated. Once we have introduced you to the basics of importing and putting your project on a web page we will give you details on how to do this with Babylon.js code. -->
예시로, 해당 페이지의 Playground는 회전되고 위치가 잡혀 있는 집을 보여주고 있습니다. 여러분들께 기초적인 "가져오기"와 웹 페이지에 프로젝트를 올리는 법을 알려드린 후에 이것들을 Babylon.js 코드로 어떻게 하는지에 대한 자세한 설명을 드리겠습니다.

<!-- ## Importing a Scene or Model -->
## 씬 또는 모델 불러오기

<!-- When you put a model into a scene you are, in fact, loading it into a browser. As you will already know when you load anything into a website it is asynchronous. Before you can do anything with your models you need to know they have loaded. You can do this using the _ImportMeshAsync_ method of the _SceneLoader_, which has the form -->
씬 안에 모델을 집어넣는 것은 사실 브라우저 내에 로드를 시키는 것과 같습니다. 이미 아실테지만, 웹사이트에 무엇인가를 로드할 때 비동기로 이루어집니다. 모델로 무엇인가 하기 전에 모델이 로드되었는지 확인이 되어야 합니다. `_SceneLoader_`의 메서드인 `_ImportMeshAsync_` 를 사용하여 로드가 되었는지 확인할 수 있으며, 아래와 같은 형식을 가지고 있습니다.

```javascript
BABYLON.SceneLoader.ImportMeshAsync(model name, folder path, file name, scene);
```

<!-- The scene parameter is optional and will default to the current scene. The first parameter can be of three types depending whether you want to load all the models, just one model or a list of models. -->
씬 파라미터는 선택사항이며 현재 씬이 디폴트로 되어있습니다. 첫번째 파라미터에는 세 가지의 유형이 올 수 있는데, 모든 모델을 불러올지, 하나 또는 여러가지의 모델을 불러올지에 따라 달라집니다.

```javascript
BABYLON.SceneLoader.ImportMeshAsync("", "/relative path/", "myFile"); //empty string all meshes
BABYLON.SceneLoader.ImportMeshAsync("model1", "/relative path/", "myFile"); //Name of model for one model
BABYLON.SceneLoader.ImportMeshAsync(["model1", "model2"], "/relative path/", "myFile"); //Array of model names
```

<!-- All of the above will only load the models and you will not be able to manipulate them in any way. You have set up a Promise object but not given any way to act after the Promise is fulfilled and it provides a result. Examples of this are in the following two playground which **only** import the named models.  -->
<!-- 재검토 필요 -->
위의 코드는 그저 모델을 로드 할 뿐이며 아직 모델들을 조작할 수는 없습니다. 프로미스 객체를 셋업했으며, 성공적으로 이행된 후에 대한 행동이 아닌 결과값만을 받아옵니다. 명시된 이름으로 모델을 불러오는 예시들을 아래의 Playground 에서 확인할 수 있습니다.

<Playground id="#YNEAUL#11" title="Loading Your First Model" description="Load a model into a scene." image="/img/playgroundsAndNMEs/gettingStartedFirstModel.jpg"/>

<Playground id="#YNEAUL#12" title="Loading Multiple Models at Once" description="Load multiple models into a scene." image="/img/playgroundsAndNMEs/gettingStartedFirstModelwGrass.jpg"/>

<!-- To then act on the result we follow the Promise with the _then_ method to call a function with the _result_ of the _Promise_. The _result_ is an object containing, among others, the property _meshes_ which contains all the loaded models. We can use this array, or their names, to manipulate each mesh. -->
<!-- 재검토 필요 -->
결과값에 대한 행동을 취하기 위해 `_then_` 메소드를 사용하여 함수를 호출합니다. `_result_`는 `_meshes_`의 프로퍼티와 같은 것들을 포함하고 있는 객체의 형태로 되어있습니다. 우리는 배열이나 모델의 이름을 사용하여 각 메쉬를 조작할 수 있습니다.

```javascript
BABYLON.SceneLoader.ImportMeshAsync("", "/relative path/", "myFile").then((result) => {
    result.meshes[1].position.x = 20;
    const myMesh1 = scene.getMeshByName("myMesh_1");
    myMesh1.rotation.y = Math.PI / 2;
});
```

<!-- This playground imports all the models and their positions are changed. -->
아래의 Playground 는 모든 모델들을 불러오고 이들의 위치들은 변경되었습니다.

<Playground id="#YNEAUL#13" title="Modifying Models After Load" description="Load a model into a scene and modify their position after loading completes." image="/img/playgroundsAndNMEs/gettingStartedFirstModelLoadSuccess.jpg"/>

<!-- ## Moving On -->
## 이어서 다음으로

<!-- Having a working scene in the playground is one thing but you will want your game or app to work on your own website. So we will give you an HTML template to do just this. -->
Playground 안에서 동작하는 씬도 있어야겠지만 게임이나 앱이 자신만의 웹사이트에서도 동작하기를 원하실테지요. 이를 위해 HTML 템플릿을 제공해드리겠습니다.

<!-- ## Warning -->
## 경고

<!-- An obvious statement - different file types export models differently. -->
당연한 사실이지만 - 다른 파일 형식은 모델을 다른 방식으로 내보냅니다.

<!-- A less obvious statement - different file types may be changed when importing into Babylon.js. -->
<!-- 재검토 필요 -->
덜 분명한 사실 - 다른 파일 형식은 Babylon.js 로 불러올 때 변환할 수 있습니다.

<!-- You need to be aware of how the type you are using affects the outcome. It is not appropriate at this stage to go into detail but the following examples indicate why this is important. -->
다른 파일 형식을 사용할 때에 어떤 결과에 어떤 영향을 끼칠지에 대해 알고 있어야 합니다. 현 시점에서 더 자세하게 들어가는 것은 적절하지 않겠지만, 아래의 예시들을 통해 이것이 왜 중요한지 알 수 있습니다.

<!-- 1. Some software saves all meshes with a rotationQuaternion set and you cannot then use the _rotation_ method unless you first add -->
1. 어떤 소프트웨어는 모든 메쉬들을 `rotationQuaternion`이 적용된 채로 저장해두며, 우선 아래와 같이 추가하기 전에는 `_rotation_` 을 사용할 수 없습니다.

```javascript
myMesh.rotationQuaternion = null; //Any version of Babylon.js
```

```javascript
myMesh.rotation = BABYLON.Vector3(); //babylon.js versions > 4.00
```

<!-- 2. The following two types were exported from exactly the same scene and imported into Babylon.js. -->
2. 이어 나오는 두 형식들은 같은 씬에서 추출되어 Babylon.js 에서 가져왔습니다.

<!-- **.babylon** -->
<!-- A model is stored as one mesh, i.e. each house body and roof forms one house. -->
**.babylon**
모델은 하나의 메쉬로 저장되며, 예시로 집의 몸통과 지붕이 하나의 집을 이룹니다.

```
detached_house
ground
semi_house
```

<!-- **.glb** -->
<!-- A \_root\_ node is added to hold all the models and model parts are stored as sub-meshes. -->
**.glb**
\_root\_ 노드는 모든 모델과 모델의 부속들을 서브-메쉬로 들고 있습니다.

```
_root_
    detached_house
        detached_house primitive0
        detached_house primitive1
    ground
    semi_house
        semi_house primitive0
        semi_house primitive1
```
