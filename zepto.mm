<?xml version="1.0" encoding="UTF-8" standalone="no"?><map version="0.8.1"><node CREATED="1479477671394" ID="7fsslrtf14c4q6ba3qms4u97kk" MODIFIED="1479477671394" TEXT="zepto"><hook NAME="accessories/plugins/NodeNote.properties"><text>Zepto内部对象</text></hook><node CREATED="1479477671394" ID="254tnu7n8f6ad39m4hr8d67nuh" MODIFIED="1479477671394" POSITION="right" TEXT="z"><arrowlink DESTINATION="57ros38tantr2rth9ojhl2ph2h" ENDARROW="Default" ID="536ninob5oqdc8tli3oksh13ik" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>返回Z对象</text></hook></node><node CREATED="1479477671394" ID="0483diaqhirfr6kgbevqtmjkrv" MODIFIED="1479477671394" POSITION="right" TEXT="init"><arrowlink DESTINATION="254tnu7n8f6ad39m4hr8d67nuh" ENDARROW="Default" ID="1a8puo7bqvm65uslru9jmj0tph" STARTARROW="None" STARTINCLINATION="134;-92"/><hook NAME="accessories/plugins/NodeNote.properties"><text>Zepto初始化方法，选中命中dom调用z方法初始化成Z对象

selector:
    函数：直接调用ready
    字符串：代码片段，或者选择器、
    dom集合：修正，转换为数组
    Z对象
    纯对象</text></hook><node CREATED="1479477671394" ID="65pl3kf10ek11mfe8itmmbug01" MODIFIED="1479477671394" TEXT="$"><hook NAME="accessories/plugins/NodeNote.properties"><text>Zepto暴露给外包的对象
   其实质调用zepto.init方法返回Z对象</text></hook><node CREATED="1479477671395" ID="4qikra18pd0loft43tu1mdilqn" MODIFIED="1479477671395" TEXT="extend"><hook NAME="accessories/plugins/NodeNote.properties"><text>对象扩展
区别于jquery的extend方法，zepto的方法统一用for in遍历。</text></hook></node><node CREATED="1479477671395" ID="5kp7bc85lpbv9bu0nivfqb8ao1" MODIFIED="1479477671395" TEXT="type"><hook NAME="accessories/plugins/NodeNote.properties"><text>调用toString来判断类型</text></hook></node><node CREATED="1479477671395" ID="1813vjalqp954qi8639ngsfg2q" MODIFIED="1479477671395" TEXT="isFunction"><hook NAME="accessories/plugins/NodeNote.properties"><text>function isFunction(value) { return type(value) == "function" }</text></hook></node><node CREATED="1479477671395" ID="707hgqtp0bej3liptpc9o6f07u" MODIFIED="1479477671395" TEXT="isWindow"><hook NAME="accessories/plugins/NodeNote.properties"><text> function isWindow(obj)     { return obj != null &amp;&amp; obj == obj.window }</text></hook></node><node CREATED="1479477671395" ID="7m3kt41vcagkb7k138lnbvvgvs" MODIFIED="1479477671395" TEXT="isArray"><hook NAME="accessories/plugins/NodeNote.properties"><text> Array.isArray ||
      function(object){ return object instanceof Array }</text></hook></node><node CREATED="1479477671395" ID="24j65tfb7dr8i7n47bdvpdrk9m" MODIFIED="1479477671395" TEXT="isPlainObject"><hook NAME="accessories/plugins/NodeNote.properties"><text>function isObject(obj)     { 
return type(obj) == "object" }
  function isPlainObject(obj) {
    return isObject(obj) &amp;&amp; !isWindow(obj) &amp;&amp; Object.getPrototypeOf(obj) == Object.prototype
  }</text></hook></node><node CREATED="1479477671395" ID="1r0sc301e4isi86brehsh6vags" MODIFIED="1479477671395" TEXT="isEmptyObject"><hook NAME="accessories/plugins/NodeNote.properties"><text>function(obj) {
    var name
    for (name in obj) return false
    return true
  }</text></hook></node><node CREATED="1479477671395" ID="44kslgv8mou5s4gqmk3rt1q6ne" MODIFIED="1479477671395" TEXT="isNumeric"><hook NAME="accessories/plugins/NodeNote.properties"><text>  $.isNumeric = function(val) {
    var num = Number(val), type = typeof val
    return val != null &amp;&amp; type != 'boolean' &amp;&amp;
      (type != 'string' || val.length) &amp;&amp;
      !isNaN(num) &amp;&amp; isFinite(num) || false
  }</text></hook></node><node CREATED="1479477671395" ID="4jg9jj4cbeauefj9lvm64fuk42" MODIFIED="1479477671395" TEXT="inArray"><hook NAME="accessories/plugins/NodeNote.properties"><text>$.inArray = function(elem, array, i){
    return emptyArray.indexOf.call(array, elem, i)
  }
</text></hook></node><node CREATED="1479477671395" ID="64523p5djkb7ifdfuijntsc181" MODIFIED="1479477671395" STYLE="bubble" TEXT="fn"><arrowlink DESTINATION="2rtfeem84fo6l7kn1e893ifsbb" ENDARROW="Default" ID="6mhmk3arvmkvpklbm365utu5qb" STARTARROW="None"/></node><node CREATED="1479477671395" ID="1f5h3f0is49vj443c8ftu9f4a4" MODIFIED="1479477671395" TEXT="camelCase"><hook NAME="accessories/plugins/NodeNote.properties"><text>function(str){ return str.replace(/-+(.)?/g, function(match, chr){ return chr ? chr.toUpperCase() : '' }) }</text></hook></node><node CREATED="1479477671395" ID="6tfcq6pve4oq7edfskt3prdkut" MODIFIED="1479477671395" TEXT="trim"><hook NAME="accessories/plugins/NodeNote.properties"><text>  $.trim = function(str) {
    return str == null ? "" : String.prototype.trim.call(str)
  }</text></hook></node><node CREATED="1479477671395" ID="7huav1seked92lr2v3e4je5dse" MODIFIED="1479477671395" TEXT="uuid"/><node CREATED="1479477671395" ID="0vgib3vnn3e3qnt2aab0abovet" MODIFIED="1479477671395" TEXT="support"/><node CREATED="1479477671395" ID="2ho1gqvs7tbpmnlj43g9fgh0qh" MODIFIED="1479477671395" TEXT="expr"/><node CREATED="1479477671395" ID="5qfipls9vnmd0gohakmppmf5in" MODIFIED="1479477671395" TEXT="noop"/><node CREATED="1479477671395" ID="7vpgkp1dakcjrct0or3qsbglv1" MODIFIED="1479477671395" TEXT="map"><hook NAME="accessories/plugins/NodeNote.properties"><text>对集合遍历并执行回调，过滤掉回调结果为null的项</text></hook></node><node CREATED="1479477671395" ID="6dskfgfji3sbdabknc2g89afns" MODIFIED="1479477671395" TEXT="grep"><hook NAME="accessories/plugins/NodeNote.properties"><text>过滤集合调用
Array.prototype.filter</text></hook></node><node CREATED="1479477671395" ID="2ccngsdtmt4359n3hfs9qhbs78" MODIFIED="1479477671395" TEXT="each"><hook NAME="accessories/plugins/NodeNote.properties"><text>遍历每项
回调参数：
   1. value
   2. index
   3.value
回调结果为false中断遍历</text></hook></node><node CREATED="1479477671395" ID="0sai611t808oik884plu7soh3p" MODIFIED="1479477671395" TEXT="contains"><hook NAME="accessories/plugins/NodeNote.properties"><text>$.contains = document.documentElement.contains ?
    function(parent, node) {
      return parent !== node &amp;&amp; parent.contains(node)
    } :
    function(parent, node) {
      while (node &amp;&amp; (node = node.parentNode))
        if (node === parent) return true
      return false
    }</text></hook></node></node></node><node CREATED="1479477671395" ID="0vjg6a44fg1b5rcn62f9qidu3h" MODIFIED="1479477671395" POSITION="right" TEXT="fragment"><hook NAME="accessories/plugins/NodeNote.properties"><text>将字符串转化为dom节点
arguments：
     html：html字符串
     name, 标签名称（主要用于区分table标签）
     properties：属性

 </text></hook></node><node CREATED="1479477671395" ID="5f31gpbmpa305ouk8g0gj3crm0" MODIFIED="1479477671395" POSITION="right" TEXT="matches"><hook NAME="accessories/plugins/NodeNote.properties"><text>匹配选择器
核心 matchesSelector
       zepto.qsa查找节点在判断是否在中</text></hook></node><node CREATED="1479477671395" ID="051fogtd3414t6fkrvuciondc6" MODIFIED="1479477671395" POSITION="right" TEXT="isZ"><hook NAME="accessories/plugins/NodeNote.properties"><text>判断是否为Z对象</text></hook></node><node CREATED="1479477671395" ID="030dlk8anl5nsi07gojaki47lv" MODIFIED="1479477671395" POSITION="left" TEXT="qsa"><hook NAME="accessories/plugins/NodeNote.properties"><text>css匹配器
   核心:
        getElementById
        getElementsByClassName
        getElementsByTagName
        querySelectorAll</text></hook></node><node CREATED="1479477671395" ID="57ros38tantr2rth9ojhl2ph2h" MODIFIED="1479477671395" POSITION="left" TEXT="Z"><icon BUILTIN="flag"/><hook NAME="accessories/plugins/NodeNote.properties"><text>Z函数，维护一个类数组，多dom集合的包装
  function Z(dom, selector) {
    var i, len = dom ? dom.length : 0
    for (i = 0; i &lt; len; i++) this[i] = dom[i]
    this.length = len
    this.selector = selector || ''
  }</text></hook></node><node COLOR="#FF0303" CREATED="1479477671395" ID="2rtfeem84fo6l7kn1e893ifsbb" MODIFIED="1479477671395" POSITION="left" STYLE="bubble" TEXT="fn"><font BOLD="true" NAME="SansSerif" SIZE="18"/><icon BUILTIN="bookmark"/><node CREATED="1479477671395" ID="4rhpunqhcf5dkrsmcdtvuo25dt" MODIFIED="1479477671395" TEXT="forEach"><hook NAME="accessories/plugins/NodeNote.properties"><text>[].forEach</text></hook></node><node CREATED="1479477671395" ID="5qo4equpnqpl1ogqmi4j01k7ur" MODIFIED="1479477671395" TEXT="reduce"><hook NAME="accessories/plugins/NodeNote.properties"><text>[].reduce</text></hook></node><node CREATED="1479477671395" ID="4ttd73mjl2bvem8tqnhismaql2" MODIFIED="1479477671395" TEXT="push"/><node CREATED="1479477671395" ID="3im96hhovkhjvofheqd9mpqnfj" MODIFIED="1479477671395" TEXT="sort"/><node CREATED="1479477671395" ID="4ikaoo8ombnfc3svnmslnlpui9" MODIFIED="1479477671395" TEXT="splice"/><node CREATED="1479477671395" ID="3ban3ubvmvn9kbhj9m535sl476" MODIFIED="1479477671395" TEXT="indexOf"/><node CREATED="1479477671395" ID="41o57oitohvjctnlp42jg1gn75" MODIFIED="1479477671395" TEXT="concat"/><node CREATED="1479477671395" ID="6q1rcnkdgj97ldl9hkv3rf6m25" MODIFIED="1479477671395" TEXT="slice"/><node CREATED="1479477671395" ID="37amt48srcilnqgfoiacv6h2rf" MODIFIED="1479477671395" TEXT="map"/><node CREATED="1479477671395" ID="1e16giei37e1qiomlldhlqf9fu" MODIFIED="1479477671395" TEXT="ready"><hook NAME="accessories/plugins/NodeNote.properties"><text>function ready(callback){
   if (/complete|loaded|interactive/.test(document.readyState) &amp;&amp; document.body) callback($)
      else document.addEventListener('DOMContentLoaded', function(){ callback($) }, false)
      return this
}</text></hook></node><node CREATED="1479477671395" ID="39bpn8jm1md77brsvjp1td13eg" MODIFIED="1479477671395" TEXT="get"><hook NAME="accessories/plugins/NodeNote.properties"><text>获取Z对象对应index的dom对象;
idx为undefined,通过调用slice将Z对象转换为数组
为负值和length相加
get: function(idx){
      return idx === undefined ? slice.call(this) : this[idx &gt;= 0 ? idx : idx + this.length]
    },</text></hook></node><node CREATED="1479477671395" ID="0b582rsdbui80qobj9jj8m6llj" MODIFIED="1479477671395" TEXT="toArray"><hook NAME="accessories/plugins/NodeNote.properties"><text>调用get()方法</text></hook></node><node CREATED="1479477671395" ID="2vq34d1bmm1hprp1dl64i2buu1" MODIFIED="1479477671395" TEXT="size"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回Z对象的length</text></hook></node><node CREATED="1479477671395" ID="1vgsbgnc65eihc25k7gchphnh7" MODIFIED="1479477671395" TEXT="remove"><hook NAME="accessories/plugins/NodeNote.properties"><text>移除Z对象中dom节点
遍历Z对象，调用父节点的removeChild方法
核心:dom.parentNode.removeChild(dom)</text></hook></node><node CREATED="1479477671395" ID="2nav0hogcjljvub8vf69lg7cis" MODIFIED="1479477671395" TEXT="each"><hook NAME="accessories/plugins/NodeNote.properties"><text>回调返回false中断遍历
核心:[].every</text></hook></node><node CREATED="1479477671395" ID="19cg3gjubunovbm5osr2lh7h0p" MODIFIED="1479477671395" TEXT="add"><hook NAME="accessories/plugins/NodeNote.properties"><text>向Z对象中添加匹配的集合，并确保唯一性</text></hook></node><node CREATED="1479477671396" ID="064lao1im2rshj4vjv1fhcfh77" MODIFIED="1479477671396" TEXT="is"><hook NAME="accessories/plugins/NodeNote.properties"><text>Z对像集合中第一一个dom对象是否匹配选择器</text></hook></node><node CREATED="1479477671396" ID="25pkhhghf4ve97c72ng7jhv1an" MODIFIED="1479477671396" TEXT="not"><hook NAME="accessories/plugins/NodeNote.properties"><text>过滤满足条件的项，返回集合不包含满足条件的项

function(selector){
      var nodes=[]
      if (isFunction(selector) &amp;&amp; selector.call !== undefined)
        this.each(function(idx){
          if (!selector.call(this,idx)) nodes.push(this)
        })
      else {
        var excludes = typeof selector == 'string' ? this.filter(selector) :
          (likeArray(selector) &amp;&amp; isFunction(selector.item)) ? slice.call(selector) : $(selector)
        this.forEach(function(el){
          if (excludes.indexOf(el) &lt; 0) nodes.push(el)
        })
      }
      return $(nodes)
    }</text></hook></node><node CREATED="1479477671396" ID="0kianqmp94iji9m35855ph772c" MODIFIED="1479477671396" TEXT="has"><hook NAME="accessories/plugins/NodeNote.properties"><text>调用filter返回包含选择器的项
callback:
function(){
 return isObject(selector) ?
          $.contains(this, selector) :
          $(this).find(selector).size()
      }) 
}
</text></hook></node><node COLOR="#660366" CREATED="1479477671396" ID="7ntsbg2gvjb759bfd8j1poa701" MODIFIED="1479477671396" STYLE="bubble" TEXT="filter"><icon BUILTIN="bookmark"/><hook NAME="accessories/plugins/NodeNote.properties"><text>过滤集合
args为function或css选择器

为function时；调用两次调用not()方法，第一次调用不包含匹配的结合，再次调用not剩下匹配的集合
为css选择器:调用array.filter ,callback为
function(element){
        return zepto.matches(element, selector)
  }</text></hook></node><node CREATED="1479477671396" ID="7g20agknioablvfn399a8eufdb" MODIFIED="1479477671396" TEXT="eq"><hook NAME="accessories/plugins/NodeNote.properties"><text> return idx === -1 ? this.slice(idx) : this.slice(idx, + idx + 1)</text></hook></node><node CREATED="1479477671396" ID="7fhup2t90ev9a99rmciu0j1tvm" MODIFIED="1479477671396" TEXT="first"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回Z对象的第一项</text></hook></node><node CREATED="1479477671396" ID="5vmrps56m401b2urne8qql6tpo" MODIFIED="1479477671396" TEXT="last"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回Z对象的最后一项</text></hook></node><node CREATED="1479477671396" ID="5g306namllul86ktdfortgrpk7" MODIFIED="1479477671396" TEXT="find"><hook NAME="accessories/plugins/NodeNote.properties"><text>向下查找匹配的dom
selector：为css选择器，dom对象或Z对象
核心：
    selector为object时 利用contains过滤
    其他情况用qsa匹配</text></hook></node><node CREATED="1479477671396" ID="2l3gn9ahdeku7iqk4ard3ecj7q" MODIFIED="1479477671396" TEXT="closest"><hook NAME="accessories/plugins/NodeNote.properties"><text>向上遍历parentNode直到匹配选择器终止</text></hook></node><node CREATED="1479477671396" ID="2ncq5aqi03ib49b58rf680qkg6" MODIFIED="1479477671396" TEXT="parents"><hook NAME="accessories/plugins/NodeNote.properties"><text>向上遍历parentNode，直到document或context为止
核心:
    nodes
    while nodes
             nodes.each
                     parent =   node.parentNode 
                     parent !document !context match
                     nodes.push(parent)</text></hook></node><node CREATED="1479477671396" ID="45jk704o83do0ion3fpbt51rl1" MODIFIED="1479477671396" TEXT="parent"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回匹配的父节点
核心:
   返回操作节点的父节点在其filter过滤</text></hook></node><node CREATED="1479477671396" ID="5icbf5lsu46i01o76fs0lj46q6" MODIFIED="1479477671396" TEXT="children"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回满足条件的孩子节点
核心，操作节点的childNodes或者children集合上调用filter过滤
childNodes需要过滤掉非html节点</text></hook></node><node CREATED="1479477671396" ID="2mbvembn1nllnv7okcfr7fismv" MODIFIED="1479477671396" TEXT="contents"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回contentDocument或者childeNode集合</text></hook></node><node CREATED="1479477671396" ID="2orsp7v0v37i8htbckfdb8rhtl" MODIFIED="1479477671396" TEXT="siblings"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回当前节点的满足条件的兄弟节点

核心：取当前节点的parentNode的children过滤掉当前节点，在此集合上帅选选择器</text></hook></node><node CREATED="1479477671396" ID="6srsu06epjnemava3432inkpv6" MODIFIED="1479477671396" TEXT="pluck"><hook NAME="accessories/plugins/NodeNote.properties"><text>返回指定属性</text></hook></node><node CREATED="1479477671396" ID="2ndcouimi2uevuj5a78p54ps64" MODIFIED="1479477671396" TEXT="empty"><hook NAME="accessories/plugins/NodeNote.properties"><text>清空节点的context

innerHTML= ‘’</text></hook></node><node CREATED="1479477671396" ID="46lcll3hlhipqnknlpah1oab6v" MODIFIED="1479477671396" TEXT="show"><hook NAME="accessories/plugins/NodeNote.properties"><text>显示当前节点
主要判断display属性，有列外

获取显示的属性
  function defaultDisplay(nodeName) {
    var element, display
    if (!elementDisplay[nodeName]) {
      element = document.createElement(nodeName)
      document.body.appendChild(element)
      display = getComputedStyle(element, '').getPropertyValue("display")
      element.parentNode.removeChild(element)
      display == "none" &amp;&amp; (display = "block")
      elementDisplay[nodeName] = display
    }
    return elementDisplay[nodeName]
  }</text></hook></node><node CREATED="1479477671396" ID="64k5n28mvdjc5g95ekp8djo30b" MODIFIED="1479477671396" TEXT="hide"><hook NAME="accessories/plugins/NodeNote.properties"><text>通过设置css的属性display 为 none来将对象集合中的元素隐藏。</text></hook></node><node CREATED="1479477671396" ID="07ulmm3368frlo9qkbi3g8n942" MODIFIED="1479477671396" TEXT="toggle"><hook NAME="accessories/plugins/NodeNote.properties"><text>显示或隐藏匹配元素。如果 setting为true，相当于show 法。如果setting为false。相当于 hide方法。</text></hook></node><node CREATED="1479477671396" ID="02gb6umis3pbn88pbjn867j72l" MODIFIED="1479477671396" TEXT="replaceWith"><hook NAME="accessories/plugins/NodeNote.properties"><text>指定节点替换当前节点
当前节点insertBefore给定节点并移除当前节点</text></hook></node><node CREATED="1479477671396" ID="1i0grr4pjvgq5dh95q7lurgarn" MODIFIED="1479477671396" TEXT="wrap"><hook NAME="accessories/plugins/NodeNote.properties"><text>在每个匹配的元素外层包上一个html元素。structure参数可以是一个单独的元素或者一些嵌套的元素。也可以是一个html字符串片段或者dom节点。还可以是一个生成用来包元素的回调函数，这个函数返回前两种类型的包裹片段。

需要提醒的是：该方法对于dom中的节点有着很好的支持。如果将wrap() 用在一个新的元素上，然后再将结果插入到document中，此时该方法无效。

在每项上调用wrapAll</text></hook></node><node CREATED="1479477671396" ID="7ebl22nsbtse43s3tr54t972jg" MODIFIED="1479477671396" TEXT="wrapAll"><hook NAME="accessories/plugins/NodeNote.properties"><text>在所有匹配元素外面包一个单独的结构。结构可以是单个元素或 几个嵌套的元素，并且可以通过在作为HTML字符串或DOM节点

核心:将structure插入到匹配的第一项前，再把匹配元素用append插入到structure后代节点没有孩子节点处</text></hook></node><node CREATED="1479477671396" ID="4sdom30q7e7fq4o18go75mf5s5" MODIFIED="1479477671396" TEXT="wrapInner"><hook NAME="accessories/plugins/NodeNote.properties"><text>将每个元素中的内容包裹在一个单独的结构中。结构可以是单个元件或多个嵌套元件，并且可以通过在作为HTML字符串或DOM节点，或者是一个生成用来包元素的回调函数，这个函数返回前两种类型的包裹片段。
</text></hook></node><node CREATED="1479477671396" ID="7trd90dd7bg8eso4d7m4bf61fs" MODIFIED="1479477671396" TEXT="unwrap"><hook NAME="accessories/plugins/NodeNote.properties"><text>移除集合中每个元素的直接父节点，并把他们的子元素保留在原来的位置。 基本上，这种方法删除上一的祖先元素，同时保持DOM中的当前元素。

核心：匹配元素的父节点用匹配元素替换</text></hook></node><node CREATED="1479477671396" ID="4v4vi5tic42a2u0g0omkfklssg" MODIFIED="1479477671396" TEXT="clone"><hook NAME="accessories/plugins/NodeNote.properties"><text>通过深度克隆来复制集合中的所有元素。
cloneNode</text></hook></node><node CREATED="1479477671396" ID="1bdukpog38dna845hbgo7ijgun" MODIFIED="1479477671396" TEXT="prev"><hook NAME="accessories/plugins/NodeNote.properties"><text>获取对象集合中每一个元素的前一个兄弟节点，通过选择器来进行过滤。
核心：通过previousElementSibling获得前一个兄弟节点后filter过滤</text></hook></node><node CREATED="1479477671396" ID="5ptce2dvjovljrto37j5ck5ias" MODIFIED="1479477671396" TEXT="next"><hook NAME="accessories/plugins/NodeNote.properties"><text>获取对象集合中每一个元素的下一个兄弟节点(可以选择性的带上过滤选择器)。

核心：通过nextElementSibling获得后一个兄弟节点后filter过滤</text></hook></node><node CREATED="1479477671396" ID="7mqfrbvm89mt7pn0mlvhavvufu" MODIFIED="1479477671396" TEXT="html"><hook NAME="accessories/plugins/NodeNote.properties"><text>获取或设置对象集合中元素的HTML内容。当没有给定content参数时，返回对象集合中第一个元素的innerHtml。当给定content参数时，用其替换对象集合中每个元素的内容。content可以是append中描述的所有类型。

content不为空时，先empty再append(content)</text></hook></node><node CREATED="1479477671396" ID="3hk4na4s895dfcg59rl2pqeu34" MODIFIED="1479477671397" TEXT="text"><hook NAME="accessories/plugins/NodeNote.properties"><text>获取或者设置所有对象集合中元素的文本内容。当没有给定content参数时，返回当前对象集合中第一个元素的文本内容（包含子节点中的文本内容）。当给定content参数时，使用它替换对象集合中所有元素的文本内容。它有待点似 html，与它不同的是它不能用来获取或设置 HTML。因为调用textContent方法，只能插入文本信息</text></hook></node><node CREATED="1479477671397" ID="75nvj8ua27fcvp11jr676p2lm7" MODIFIED="1479477671397" TEXT="attr"><hook NAME="accessories/plugins/NodeNote.properties"><text>attr(name)   ⇒ string
attr(name, value)   ⇒ self
attr(name, function(index, oldValue){ ... })   ⇒ self
attr({ name: value, name2: value2, ... })   ⇒ self
读取或设置dom的属性。如果没有给定value参数，则读取对象集合中第一个元素的属性值。当给定了value参数。则设置对象集合中所有元素的该属性的值。当value参数为null，那么这个属性将被移除(类似removeAttr)，多个属性可以通过对象键值对的方式进行设置。

要读取DOM的属性如 checked和selected, 使用 prop。

核心:
 限制：匹配元素必须有element
  获取属性：getAttribute
  设置属性:setAttribute
  移除属性:removeAttribute</text></hook></node><node CREATED="1479477671397" ID="6bhh40k991j5sg4thstqe7cshb" MODIFIED="1479477671397" TEXT="removeAttr"><hook NAME="accessories/plugins/NodeNote.properties"><text>移除当前对象集合中所有元素的指定属性。多个属性空格分隔</text></hook></node><node CREATED="1479477671397" ID="1j5agud860clnu9ujkomhd32qi" MODIFIED="1479477671397" TEXT="prop"><hook NAME="accessories/plugins/NodeNote.properties"><text>prop(name)   ⇒ value
prop(name, value)   ⇒ self
prop(name, function(index, oldValue){ ... })   ⇒ self
读取或设置dom元素的属性值。它在读取属性值的情况下优先于 attr，因为这些属性值会因为用户的交互发生改变，如checked 和 selected。

简写或小写名称，比如for, class, readonly及类似的属性，将被映射到实际的属性上，比如htmlFor, className, readOnly, 等等。


核心:
  直接读取dom属性</text></hook></node><node CREATED="1479477671397" ID="6n5bsc0n2mse1ufvbil44tmkcp" MODIFIED="1479477671397" TEXT="removeProp"><hook NAME="accessories/plugins/NodeNote.properties"><text>从集合的每个DOM节点中删除一个属性。这是用JavaScript的delete操作符完成。值得注意的是如果尝试删除DOM的一些内置属性，如className或maxLength，将不会有任何效果，因为浏览器禁止删除这些属性。</text></hook></node><node CREATED="1479477671397" ID="3ddde62t8rjts1p9atmg680pfe" MODIFIED="1479477671397" TEXT="data"><hook NAME="accessories/plugins/NodeNote.properties"><text>data(name)   ⇒ value
data(name, value)   ⇒ self
读取或写入dom的 data-* 属性。行为有点像 attr ，但是属性名称前面加上 data-。

当读取属性值时，会有下列转换：v1.0+

“true”, “false”, and “null” 被转换为相应的类型；
数字值转换为实际的数字类型；
JSON值将会被解析，如果它是有效的JSON；
其它的一切作为字符串返回

核心：
  补全data-,通过attr设置或获取</text></hook></node><node CREATED="1479477671397" ID="1slka62moqmh3ad0leqqbfrlp1" MODIFIED="1479477671397" TEXT="val"><hook NAME="accessories/plugins/NodeNote.properties"><text>val()   ⇒ string
val(value)   ⇒ self
val(function(index, oldValue){ ... })   ⇒ self

获取或设置匹配元素的值。当没有给定value参数，返回第一个元素的值。如果是&lt;select multiple&gt;标签，则返回一个数组。当给定value参数，那么将设置所有元素的值。

核心：
  直接操作dom对象的value属性</text></hook></node><node CREATED="1479477671397" ID="7iomj8i7g48fsr2uk230k029no" MODIFIED="1479477671397" TEXT="offset"><hook NAME="accessories/plugins/NodeNote.properties"><text>offset()   ⇒ object
offset(coordinates)   ⇒ self v1.0+
offset(function(index, oldOffset){ ... })   ⇒ self v1.0+
获得当前元素相对于document的位置。返回一个对象含有： top, left, width和height

当给定一个含有left和top属性对象时，使用这些值来对集合中每一个元素进行相对于document的定位。

核心：
   getBoundingClientRect
   pageXOffset
   pageYOffset</text></hook></node><node CREATED="1479477671397" ID="5kf20p7qsl7flq551usvvn6ia1" MODIFIED="1479477671397" TEXT="offsetParent"><hook NAME="accessories/plugins/NodeNote.properties"><text>offsetParent()   ⇒ collection
找到第一个定位过的祖先元素，意味着它的css中的position 属性值为“relative”, “absolute” or “fixed”

核心：向上遍历offsetParent 直到position不为static或根节点</text></hook></node><node CREATED="1479477671397" ID="3l9h175lii31mouaokh1ql8ul1" MODIFIED="1479477671397" TEXT="position"><hook NAME="accessories/plugins/NodeNote.properties"><text>获取对象集合中第一个元素的位置。相对于 offsetParent。当绝对定位的一个元素靠近另一个元素的时候，这个方法是有用的。

</text></hook></node><node CREATED="1479477671397" ID="5gpi3p5qm4rkk13ioh1rpb7t51" MODIFIED="1479477671397" TEXT="数组操作"/><node CREATED="1479477671397" ID="1rq7hf8p0tikmrfn6qfu7tcbos" MODIFIED="1479477671397" TEXT="特殊处理"><hook NAME="accessories/plugins/NodeNote.properties"><text>map调用$.map，将返回结果包装成Z对象
slice调用数组slice方法，并将结果包装成Z对象</text></hook></node><node CREATED="1479477671397" ID="00de32ut7c04tj0ipaoneudlc0" MODIFIED="1479477671397" TEXT="帅选"/><node CREATED="1479477671397" ID="69tjb31r90a0vdh8g7l6lk1uej" MODIFIED="1479477671397" TEXT="显示隐藏操作"/><node CREATED="1479477671397" ID="1ec41jchaml71vd7jielip7096" MODIFIED="1479477671397" TEXT="dom增删"/></node></node></map>