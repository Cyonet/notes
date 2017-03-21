## 什么阻塞DOM渲染

### 什么是DOM

>DOM是Document Object Model（文档对象模型）的缩写。它是为HTML和XML定义的一个编程接口，提供了文档的结构化表示（节点树状结构），同时也规定了使用脚本编程语言（例如JavaScript）应该如何访问以及操作DOM。

### 阻塞渲染的资源

html,css(font),js都是阻塞的资源，而DOM可以增量构建，因而是从css,js入手优化

  通过优化关键渲染路径来避免CSS和JavaScript阻塞DOM
  
  - 非渲染阻塞的css
  
   > 完全无阻塞的css,唯一途径：内嵌css,将初始化渲染的css放在`head`里的`style`中，剩余部分放在`</body>`之前。可通过gulp插件 grunt-critical-css来完成内嵌。js动态加载重绘。
    
   - 正确位置放置css文件
   - 使用 media queries (媒体查询) 来标记某些CSS为非阻塞资源 （译者注： 比如 `<link href="other.css" rel="stylesheet" media="(min-width: 40em)"> `这样可以在其他屏幕尺寸加载时就不用加载这个css了）
     
   - 减少css数量（尽可能放在一个文件中）
   - Minify CSS文件（删除空格，字符，注释）
   - 尽可能减少样式数目(样式高效代码)
   
 - 非渲染阻塞js
   
   > 1.脚本放在`</body>`之前
     2.使用async或defer指令来避免阻塞渲染
   
   
   - 异步加载js
    
    `async` 允许后台加载，加载完成执行会阻塞渲染，脚本执行完成恢复渲染。
    
   - 延迟加载js
     `defer`指令做的事情和`async`基本一样。`defer`严格要求脚本的执行顺序和html标记顺序一致。
   
   - 其他方案
     1. 减少js数量
     2. Minify Js
     3. js很小，内嵌
 
- web font
  
  1. 使用Web Font加载器或者字体加载API
  2. 使用内联嵌入优化字体加载
  3. 使用例如localStorage等存储方法

    

