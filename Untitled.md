#6.面向对象

- 属性类型
  
  - 数据属性 
    
     - `[[Configurable]]`: 表示能否通过 delete 删除属性从而重新定义属性，能否修改属性的特性，或者能否把属性修改为访问器属性。像前面例子中那样直接在对象上定义的属性，它们的这个特性默认值为 true。
     - `[[Enumerable]]`:表示能否通过 for-in 循环返回属性。像前面例子中那样直接在对象上定义的属性，它们的这个特性默认值为 true。
     - `[[Writable]]`:表示能否修改属性的值。
     - `[[Value]]`:包含这个属性的数据值。

           可通过es5中`Object.defineProperty()`(>ie8)更改配置属性。
     
           ```javascript
            var person = {};
    
            Object.defineProperty(person, 'name', {
               writable: false,
               value:'nichoes'
            });
    
           person.name;//nichoes
           person.name = 'jack';//严格模式报错，非严格模式忽略
           person.name;//nichoes
           ```
           
  - 访问器属性
    
     - `[[Configurable]]`:表示能否通过 delete 删除属性从而重新定义属性，能否修改属性的特 性，或者能否把属性修改为数据属性。
     - `[[Enumerable]]`:表示能否通过 for-in 循环返回属性。
     - `[[Get]]`:在读取属性时调用的函数。默认值为 undefined。
     - `[[Set]]`:在写入属性时调用的函数。默认值为 undefined。

     
          ```javascript
             var book = {               _year: 2004,               edition: 1 
             };             Object.defineProperty(book, "year", {               get: function(){                   return this._year;               },               set: function(newValue){                 if (newValue > 2004) {                    this._year = newValue;                    this.edition += newValue - 2004;                 } }             });             book.year = 2005; 
             alert(book.edition);
          ```
     
     **在不支持defineProperty方法的浏览器可通过`__defineGetter__`
     、`__definedSetter__`设置get,set方法。**
     
 - 读取属性的特性

     通过es5的`Object.getOwnPropertyDescriptor()`取得给定属性的描述信息对象。
     
 
-  创建对象

  - 工厂方法
  - 
     
     

