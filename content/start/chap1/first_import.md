---
title: Getting Started - Chapter 1 - Working with Models
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
해당 페이지의 플레이그라운드는 예를 들어 

<!-- ## Importing a Scene or Model -->
## 씬 또는 모델 불러오기

When you put a model into a scene you are, in fact, loading it into a browser. As you will already know when you load anything into a website it is asynchronous. Before you can do anything with your models you need to know they have loaded. You can do this using the _ImportMeshAsync_ method of the _SceneLoader_, which has the form

```javascript
BABYLON.SceneLoader.ImportMeshAsync(model name, folder path, file name, scene);
```

The scene parameter is optional and will default to the current scene. The first parameter can be of three types depending whether you want to load all the models, just one model or a list of models.

```javascript
BABYLON.SceneLoader.ImportMeshAsync("", "/relative path/", "myFile"); //empty string all meshes
BABYLON.SceneLoader.ImportMeshAsync("model1", "/relative path/", "myFile"); //Name of model for one model
BABYLON.SceneLoader.ImportMeshAsync(["model1", "model2"], "/relative path/", "myFile"); //Array of model names
```

<!-- All of the above will only load the models and you will not be able to manipulate them in any way. You have set up a Promise object but not given any way to act after the Promise is fulfilled and it provides a result. Examples of this are in the following two playground which **only** import the named models.  -->
위의 코드는 그저 모델을 로드 할 뿐이며 어떠한 방법으로도 모델들을 조작 할 수는 없습니다. You have set up a Promise object but not given any way to act after the Promise is fulfilled and it provides a result. 이름이 있는 모델들만을 불러오는 이에 대한 예시들이 아래에 있습니다.

<Playground id="#YNEAUL#11" title="Loading Your First Model" description="Load a model into a scene." image="/img/playgroundsAndNMEs/gettingStartedFirstModel.jpg"/>

<Playground id="#YNEAUL#12" title="Loading Multiple Models at Once" description="Load multiple models into a scene." image="/img/playgroundsAndNMEs/gettingStartedFirstModelwGrass.jpg"/>

To then act on the result we follow the Promise with the _then_ method to call a function with the _result_ of the _Promise_. The _result_ is an object containing, among others, the property _meshes_ which contains all the loaded models. We can use this array, or their names, to manipulate each mesh.

```javascript
BABYLON.SceneLoader.ImportMeshAsync("", "/relative path/", "myFile").then((result) => {
    result.meshes[1].position.x = 20;
    const myMesh1 = scene.getMeshByName("myMesh_1");
    myMesh1.rotation.y = Math.PI / 2;
});
```

<!-- This playground imports all the models and their positions are changed. -->
아래의 Playground 는 모든 모델들을 불러오고 이들의 위치들은 수정되었습니다.

<Playground id="#YNEAUL#13" title="Modifying Models After Load" description="Load a model into a scene and modify their position after loading completes." image="/img/playgroundsAndNMEs/gettingStartedFirstModelLoadSuccess.jpg"/>

## Moving On

Having a working scene in the playground is one thing but you will want your game or app to work on your own website. So we will give you an HTML template to do just this.

## Warning

An obvious statement - different file types export models differently.

A less obvious statement - different file types may be changed when importing into Babylon.js.

You need to be aware of how the type you are using affects the outcome. It is not appropriate at this stage to go into detail but the following examples indicate why this is important.

1. Some software saves all meshes with a rotationQuaternion set and you cannot then use the _rotation_ method unless you first add

```javascript
myMesh.rotationQuaternion = null; //Any version of Babylon.js
```

```javascript
myMesh.rotation = BABYLON.Vector3(); //babylon.js versions > 4.00
```

2. The following two types were exported from exactly the same scene and imported into Babylon.js.

**.babylon**
A model is stored as one mesh, i.e. each house body and roof forms one house.

```
detached_house
ground
semi_house
```

**.glb**
A \_root\_ node is added to hold all the models and model parts are stored as sub-meshes.

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
