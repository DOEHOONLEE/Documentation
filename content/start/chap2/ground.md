---
title: 시작하기 - 챕터 2 - 그라운드
image: 
description: 씬에 평면을 추가하며 Babylon.js 를 배워봅시다.
keywords: 시작하기, 시작, 챕터 2, 그라운드, 평면
further-reading: 
video-overview:
video-content:
---

<!-- # Getting Started - Ground -->
# 시작하기 - 그라운드

<!-- ## Grounding the World -->
# 세계에 지면 만들기
<!-- At the moment we have a box floating in space. To make the scene more world like let's add ground and think of our box as a building set on the ground. -->
지금은 상자가 그저 허공에 떠있습니다. 씬을 좀 더 진짜 세상같이 만들기위해 지표면을 추가하고 상자를 땅 위에 세워진 건물이라고 생각해봅시다.

<!-- Adding a ground is simple using -->
아래의 코드를 이용해 쉽게 그라운드를 추가 할 수 있습니다.

```javascript
const ground = BABYLON.MeshBuilder.CreateGround("ground", {width:10, height:10});
```
<!-- As we need to create a ground large enough, to put some buildings (boxes) on, the options parameter has two properties set, width in the x direction and height in the z direction. (Yes, we agree, since y is vertical it would make more sense for the properties to be width and depth.) -->


<Playground id="#KBS9I5#67" title="Adding a Ground Playground" description="A playground showing how to add a basic ground plane to your scene." image="/img/playgroundsAndNMEs/gettingStartedGround.jpg"/>

<!-- The immediate thing to note is that  the ground cuts through the middle of the box. This is because when they are created meshes are positioned at the origin. -->
지면이 상자의 중간을 뚫고 뻗어져 나가있는 것을 금방 알아차릴 수 있습니다. 이것은 메쉬가 생성되면 원점에 위치하기 때문입니다.

![ground](/img/getstarted/ground.png)

<!-- We need to move the box up half its height using -->
우리는 아래의 코드를 이용해 상자를 높이의 반만큼 위로 이동시켜야 합니다

```javascript
box.position.y = 0.5;  // 상자는 기본 크기인 1로 생성되어졌습니다
```

<Playground id="#KBS9I5#66" title="Adjusting the Box position." description="A playground showing how to adjust the position of the box." image="/img/playgroundsAndNMEs/gettingStartedGround.jpg"/>

![house 0](/img/getstarted/house0.png)

<!-- Currently our world is silent. Let's add some sound. -->
현재 우리의 세계는 고요합니다. 소리를 추가해봅시다.