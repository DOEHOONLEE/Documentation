<!-- # Babylon.js documentation website -->
# Babylon.js 문서 사이트

<!-- The page is written using Next.js (Server-side react framework). -->
해당 사이트는 Next.js (서버 사이드 리액트 프레임워크)로 만들어졌습니다.

<!-- ## Requirements -->
## 필요한 것들

<!-- * Node 12 and up -->
<!-- * yarn -->
* Node 12 또는 그 후의 버전
* yarn

<!-- ## Getting Started -->
## 시작하기

<!-- Install dependencies -->
설치 디펜던시

<!-- ```bash
yarn install
``` -->
```bash
yarn install
```

<!-- Run the development server: -->
개발 서버 실행하기:

<!-- ```bash
yarn dev
``` -->
```bash
yarn dev
```

<!-- Open [http://localhost:3000](http://localhost:3000) with your browser to see the result. -->
브라우저로 열어 [http://localhost:3000](http://localhost:3000) 결과물을 확인해보세요.

<!-- You can start editing the page by modifying `pages/index.js`. The page auto-updates as you edit the file. -->
`pages/index.js` 파일을 수정하여 페이지를 편집할 수 있습니다. 페이지는 파일을 편집하면 자동 업데이트 됩니다.

<!-- ## Custom markdown components -->
## 커스텀 마크다운 컴포넌트

Markdowns can now be augmented with special components. For example, adding:

<!-- ```html
<Playground id="#Y642I8" title="Tinted Shadows Example" description="A Playground example of tinted shadows."/>
``` -->
```html
<Playground id="#Y642I8" title="그림자 예시" description="그림자 플레이그라운드 예시"/>
```

<!-- will add a playground to the examples pane, allow to show its preview, add a styled link and add it to the search index for the playground. This will also generate images for this playground's preview when needed. Please make sure to commit those images. -->
예시 패널에 플레이그라운드를 추가하면 미리보기를 보여주며 styled link 를 넣거나 플레이그라운드 검색 인덱스에 넣을 수 있도록 해줍니다. 또한 이는 플레이그라운드 미리보기 이미지를 제공합니다. 해당 이미지들을 꼭 커밋해주세요.

<!-- Documentation for all markdown components is coming soon. -->
마크다운 컴포넌트에 대한 모든 문서들이 곧 나올 예정입니다.

[![Powered by vercel](public/powered-by-vercel.svg?raw=true)](https://vercel.com/?utm_source=babylonjs&utm_campaign=oss)
