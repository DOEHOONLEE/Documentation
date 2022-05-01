---
title: 시작하기 - 챕터 2 - 메쉬 합치기
image: 
description: Continue your Babylon.js learning by combining meshes in your scene.
keywords: 시작하기, 시작, 챕터 2, 합치기, 메쉬 합치기, 머지
further-reading:
    - title: 메쉬 합치기에 더 알아보기
      url: /divingDeeper/mesh/mergeMeshes
video-overview:
video-content:
---

<!-- # Getting Started - Combining Meshes -->
# 시작하기 - 메쉬 합치기

<!-- ## Combining Meshes Using Merge Meshes -->
## Merge Meshes 를 통해 메쉬 합치기
<!-- This is a straight forwarded way of combining two or more meshes. -->
두 개 또는 그 이상의 메쉬들을 합치기 위한 가장 단순한 방법.

```javascript
const combined = BABYLON.Mesh.MergeMeshes(Array_of_Meshes_to_Combine)
```
우리의 경우,
```javascript
const house = BABYLON.Mesh.MergeMeshes([box, roof])
```
<Playground id="#KBS9I5#75" title="씬 안의 메쉬들 합치기" description="씬 안의 메쉬들이 어떻게 합쳐지는지 보여주는 데모 Playground." image="/img/playgroundsAndNMEs/gettingStartedCombineMeshes.jpg"/>

<!-- ![house 5](/img/getstarted/house5.png) -->
![집 5](/img/getstarted/house5.png)

<!-- The first thing we note is that the whole house is covered in only one of the materials used. Fortunately this can be corrected using the multiMultiMaterial parameter of *MergeMeshes*, unfortunately this is the final parameter of a long list. The code now looks like -->
<!-- 재검토 필요 -->
The first thing we note is that the whole house is covered in only one of the materials used. 다행이도 이것은 `mergeMeshes`의 `multiMultiMaterial` 파라미터로 수정할 수 있습니다, unfortunately this is the final parameter of a long list. The code now looks like

```javascript
const house = BABYLON.Mesh.MergeMeshes([box, roof], true, false, null, false, true);
```
<!-- At this stage it is important to note that the second parameter being true disposes of the original meshes and the last parameter being true allows the original material to be applied separately to the parts matching the original meshes. -->
이 단계에서 주목해야할 것은, 두번째 파라미터의 `true`가 본래의 메쉬를 없애고 마지막 파라미터인 `true`가 

<Playground id="#KBS9I5#76" title="Combining Meshes And Preserving Material Assignments" description="A playground demonstrating how to combine meshes while preserving material assignments." image="/img/playgroundsAndNMEs/gettingStartedCombineMeshes2.jpg"/>

![house 3](/img/getstarted/house3.png)

Before considering how to make multiple copies of our house we will first: find out the basics of [exporting](/extensions/glTFExporter) our models; how to [import](/divingDeeper/importers) models made with Babylon.js or other software; and how to display your scene or models on your own website.