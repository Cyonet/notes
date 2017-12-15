## Object

- 属性初始化器速记

  > 变量名就是属性名 `let a = 1;obj={a};obj.a;//1`

- 对象方法简写

  > `obj = { text:'厉害word哥', print(){console.info(this.text)}}`

- 计算属性名

  方括号允许你将变量或字符串字面量指定为属性名

  ```javascript
  let varible = "hello";
  const obj = {
     [varible]:"你好！",
     print(){
       console.info(this.hello);//'你好！'
     }
  }
  ```

- `Object.is()`
  > 和`===`大致相同，不同的是它会认为 +0 与 -0 不相等，而且 NaN 等于 NaN

- `Object.assign()`
 > 对象浅复制,Object.assign() 并未在接收者上创建访问器属性，即使供应者拥有访问器属性,供应者的访问器属性就会转变成接收者的数据属性。

- 取消重复属性检查，es6中最后一个属性为实际值
- 自有属性的枚举顺序
 >es6严格定义了对象自有属性在被枚举时返回的顺序,这对 `Object.getOwnPropertyNames()`与`Reflect.ownKeys`如何返回属性造成了影响，还同样影响了`Object.assign()`处理属性的顺序

自有属性枚举时基本顺序如下:
1. 所有的数字类型键，按升序排列。2. 所有的字符串类型键，按被添加到对象的顺序排列。3. 所有的符号类型键，也按添加顺序排列。

``` javascript
var obj = {    a: 1,    0: 1,    c: 1,    2: 1,    b: 1,    1: 1};
obj.d = 1;console.log(Object.getOwnPropertyNames(obj).join(""));// "012acbd"
```

- 修改原型

 > 一般来说，对象的原型会在通过构造器或 Object.create() 方法创建该对象时被指定。直到 ES5 为止， JS 编程最重要的假定之一就是对象的原型在初始化完成后会保持不变。尽管 ES5 添加了 Object.getPrototypeOf() 方法来从任意指定对象中获取其原型，但仍然缺少在 初始化之后更改对象原型的标准方法。ES6 通过添加 Object.setPrototypeOf() 方法而改变了这种假定，此方法允许你修改任意指 定对象的原型。它接受两个参数:需要被修改原型的对象，以及将会成为前者原型的对象。

```javascript
let person = {    getGreeting() {        return "Hello";    }};let dog = {    getGreeting() {        return "Woof";    }};// 原型为 personlet friend = Object.create(person);console.log(friend.getGreeting());console.log(Object.getPrototypeOf(friend) === person);  // true// 将原型设置为 dogObject.setPrototypeOf(friend, dog);console.log(friend.getGreeting());                      // "Woof"console.log(Object.getPrototypeOf(friend) === dog);     // true
```

- super指向原型
- 正式的“方法”定义

 >在 ES6 之前，“方法”的概念从未被正式定义，它此前仅指对象的函数属性(而非数据属 性)。 ES6 则正式做出了定义:方法是一个拥有 [[HomeObject]] 内部属性的函数，此内部 属性指向该方法所属的对象

## Class

> - 类声明不会被提升，这与函数定义不同。类声明的行为与 let 相似，因此在程序的执行 到达声明处之前，类会存在于暂时性死区内。
> - 类声明中的所有代码会自动运行在严格模式下，并且也无法退出严格模式。
> - 类的所有方法都是不可枚举的，这是对于自定义类型的显著变化，后者必须用 `Object.defineProperty()` 才能将方法改变为不可枚举。
> - 类的所有方法内部都没有 [[Construct]] ，因此使用 new 来调用它们会抛出错误。
> - 调用类构造器时不使用 new ，会抛出错误。
> - 试图在类的方法内部重写类名，会抛出错误。


- 类表达式

  类和函数一样有两种形式:声明与表达式。

  - 匿名表达式

      ~~~javascript
      className = class {}
      ~~~
      匿名类表达式的name是个空字符串。

  - 具名表达式

      ~~~
      className = class 标识符{}
      ~~~

      标识符只用于类内部，外部无法使用。

## 数组

- `Array.of()`

  > ES6 为数组新增创建方法的目的之一，是帮助开发者在使用 Array 构造器时避开 JS 语言的 一个怪异点。调用 new Array() 构造器时，根据传入参数的类型与数量的不同，实际上会导 致一些不同的结果

  ~~~javascript
  let items = new Array(2);console.log(items.length);console.log(items[0]);console.log(items[1]);items = new Array("2");console.log(items.length);console.log(items[0]);items = new Array(1, 2);console.log(items.length);console.log(items[0]);console.log(items[1]);items = new Array(3, "2");console.log(items.length);console.log(items[0]);console.log(items[1]);//2// undefined // undefined//1 // "2"//2 //1 //2//2 //3 // "2"
  ~~~

 > 当使用单个数值参数来调用 Array 构造器时，数组的长度属性会被设置为该参数;而如果使 用单个的非数值型参数来调用，该参数就会成为目标数组的唯一项;如果使用多个参数(无 论是否为数值类型)来调用，这些参数也会成为目标数组的项。数组的这种行为既混乱又有 风险，因为有时可能不会留意所传参数的类型。

 **Array.of() 方法总会创建一个包含所有传 入参数的数组，而不管参数的数量与类型。**  

- `Array.from()`

 > 将可迭代对象或者类数组对象作为第一个参数传入， Array.from() 就能返回一个数组。

 ~~~javascript
 function doSomething() {       var args = Array.from(arguments);       // 使用 args }
 ~~~

 - 映射转换

     传入函数作为第二个参数，对每项进行映射。可以传入第三个参数对象作为第二个映射函数内部的this的指向。

     ~~~
     function translate() {        return Array.from(arguments, (value) => value + 1);     }     let numbers = translate(1, 2, 3);     console.log(numbers);

     let helper = {         diff: 1,         add(value) {            return value + this.diff;         }
      };     function translate() {          return Array.from(arguments, helper.add, helper);     }     let numbers = translate(1, 2, 3);     console.log(numbers);   
     ~~~

  - **Array.from() 方法不仅可用于类数组对象，也可用于可迭代对象，这意味着该方法可以将任 意包含 Symbol.iterator 属性的对象转换为数组。**

- `find()` 与 `findIndex() `
  > find() 与 findIndex() 方法均接受两个参数:一个回调函数、一个可选值用于指定回调函 数内部的 this 。该回调函数可接收三个参数:**数组的某个元素、该元素对应的索引位置、 以及该数组自身，这与 map() 和 forEach() 方法的回调函数所用的参数一致。**该回调函数 应当在给定的元素满足你定义的条件时返回 true ，而 find() 与 findIndex() 方法均会在 回调函数第一次返回 true 时停止查找。***find() 方法会返回匹配的值，而 findIndex() 方法则会返回匹配位置 的索引***。
- `fill()`

        @param first 填充特定值
        @param start 可选值 起始位置 默认0 为负值加上长度
        @param end 可选值 结束位置 默认数组长度 为负值加上长度

        使用特定值填充数组一个或多个元素。只有一个参数时，用改参数填充整个数组。

       ~~~javascript
       let numbers = [1,2,3,4];
       numbers.fill(1);
       console.info(numbers.toString()); //1,1,1,1
       ~~~
- `copyWithin()`


        @param number 开始粘贴位置
        @param number 开始复制位置
        @param number 结束复制位置 可选 默认数组长度

        负值加上数组长度定位

## 数组缓存区

> 数组缓冲区(array buffer)是内存中包含一定数量字节的区域，而所有的类型化数组都基于数组缓冲区。创建数组缓存区用`ArrayBuffer`构造器,只需要传入单个数值用于指定缓冲区包含的字节数
>
> 数组缓冲区总是保持创建时指定的字节数，你可以修改其内部的数据，但永远不能修改它的容量。  


#### 使用视图操作数组缓冲区   

数组缓冲区代表了一块内存区域，而视图(views)则是你操作这块区域的接口。视图工作在 数组缓冲区或其子集上，可以读写某种数值数据类型的数据。 DataView 类型是数组缓冲区 的通用视图，允许你对前述所有八种数值数据类型进行操作。 使用 DataView ，首先需要创建 ArrayBuffer 的一个实例，再在上面创建一个新的 ArrayBuffer 视图。这里有个例子:

~~~
let buffer = new ArrayBuffer(10),    view = new DataView(buffer);
    view2 = new DataView(buffer, 5, 2);//字节偏移量、以及所要包含的字节数
~~~
 - buffer :该视图所绑定的数组缓冲区; - byteOffset :传给 DataView 构造器的第二个参数，如果当时提供了的话(默认值为 0); - byteLength :传给 DataView 构造器的第三个参数，如果当时提供了的话(默认值为该 缓冲区的 byteLength 属性)。

 DataView 视图的原型分别提供了在数组缓冲区上写入数 据的一个方法、以及读取 数据的一个方法。所有方法名都以“set”或“get”开始，其后跟随着对 应数据类型的缩写。例如:
  - getInt8(byteOffset, littleEndian) :从 byteOffset 处开始读取一个 int8 值。  - setInt8(byteOffset, value, littleEndian):从 byteOffset 处开始写入一个 int8 值。



