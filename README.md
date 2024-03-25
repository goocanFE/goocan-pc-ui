<p align="center">
  谷瞰 vue 2.0 pc端组件库
</p>


> A Vue.js 2.0 UI Toolkit for Web.

## Links
- Homepage and documentation
  - [Chinese users](http://element.eleme.io/#/zh-CN)
- [awesome-element](https://github.com/ElementUI/awesome-element)
- [FAQ](./FAQ.md)
- [Customize theme](http://element.eleme.io/#/en-US/component/custom-theme)
- [Preview and generate theme online](https://elementui.github.io/theme-chalk-preview)
- [Visual Studio Code helper](https://github.com/ElemeFE/vscode-element-helper)
- Starter kit
  - [element-starter](https://github.com/ElementUI/element-starter)
  - [element-in-laravel-starter](https://github.com/ElementUI/element-in-laravel-starter)
- [Design resources](https://github.com/ElementUI/Resources)
- Gitter
  - [International users](https://gitter.im/element-en/Lobby)
  - [Chinese users](https://gitter.im/ElemeFE/element)

## Install
```shell
npm install element-ui -S
```

## Quick Start
``` javascript
import Vue from 'vue'
import Element from 'element-ui'

Vue.use(Element)

// or
import {
  Select,
  Button
  // ...
} from 'element-ui'

Vue.component(Select.name, Select)
Vue.component(Button.name, Button)
```
For more information, please refer to [Quick Start](https://goocan-pc-ui.goocan.net/#/zh-CN/component/quickstart) in our documentation.

## Browser Support
Modern browsers and Internet Explorer 10+.

## Development
Skip this part if you just want to use Element.

### 开发环境

启动开发环境
`npm run dev`

> **提示**：可以运行 `npm run dev:play`，修改 `examples/play/index.vue` 文件，调用你修改后的组件，仍然访问 [http://localhost:8085](http://localhost:8085/)，查看修改效果，更快更方便。


### 打包发布

打包
`npm run dist`

发布
`npm run pub`

## 组件开发规范

- 通过 `make new` 创建组件目录结构，包含测试代码、入口文件、文档
- 如果包含父子组件，需要更改目录结构，参考 `Button`
- 组件内如果依赖了其他组件，需要在当前组件内引入，参考 `Select`


### 文档

`npm run deploy:build`
构建文档，在examples/element-ui下生成文档

`npm run deploy:docs`
发布文档，文档发布在github上的gh-pages分支上

文档地址：
https://goocan-pc-ui.goocan.net/#/

## Changelog
Detailed changes for each release are documented in the [release notes](https://github.com/goocanFE/goocan-pc-ui/releases).

## FAQ
We have collected some [frequently asked questions](https://github.com/goocanFE/goocan-pc-ui/blob/main/FAQ.md). Before reporting an issue, please search if the FAQ has the answer to your problem.

## LICENSE
[MIT](LICENSE)
