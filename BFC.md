## BFC（`Block formatting contexts`）

 >会为浮动元素、绝对定位元素、非块级盒子的块级容器（inline-blocks,tabel-cells,和table-captions）、overflow值不为visiable的块级盒子的内容创建新的BFC

 它是一个独立的渲染区域，只有Block-level box参与， 它规定了内部的Block-level Box如何布局，并且与这个区域外部毫不相干。


 BFC布局规则：

 - 内部的Box会在垂直方向，一个接一个地放置。
 - Box垂直方向的距离由margin决定。属于同一个BFC的两个相邻Box的margin会发生重叠
 - 每个元素的margin box的左边， 与包含块border box的左边相接触(对于从左往右的格式化，否则相反)。即使存在浮动也是如此。
 - BFC的区域不会与float box重叠。
 - BFC就是页面上的一个隔离的独立容器，容器里面的子元素不会影响到外面的元素。反之也如此。
计算BFC的高度时，浮动元素也参与计算
