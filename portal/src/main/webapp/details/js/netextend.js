!function(t){function e(i){if(n[i])return n[i].exports;var o=n[i]={exports:{},id:i,loaded:!1};return t[i].call(o.exports,o,o.exports,e),o.loaded=!0,o.exports}var n={};return e.m=t,e.c=n,e.p="",e(0)}([function(t,e,n){function i(t,e,n){for(var i in t)try{e.call(n,t[i],i,t)}catch(t){}}function o(t,e,n){for(var i=0;i<t.length;i++)e.call(n,t[i],i)}function r(t){return"[object function]"==Object.prototype.toString.call(t).toLowerCase()}function s(){if(a)return new a;for(var t=["Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.3.0","Msxml2.XMLHTTP.4.0","Msxml2.XMLHTTP.5.0","MSXML2.XMLHTTP","Microsoft.XMLHTTP"],e=0;e<t.length;e++)try{return new ActiveXObject(t[e])}catch(t){}}n(1);var a=window.XMLHttpRequest,c=/^on[a-z]+$/,d=/^[A-Z]+$/,h={config:1,status:2,method:3,callback:4,constant:5},p={timeout:h.config,withCredentials:h.config,readyState:h.status,response:h.status,responseText:h.status,responseBody:h.status,responseType:h.status,responseURL:h.status,responseXML:h.status,status:h.status,statusText:h.status,abort:h.method,getAllResponseHeaders:h.method,getResponseHeader:h.method,open:h.method,send:h.method,setRequestHeader:h.method,onreadystatechange:h.callback,ontimeout:h.callback},u=window.XMLHttpRequest=function(t){this.xhr=s(),this.propertyClone(t)};u.prototype.propertyClone=function(t){var e=this.xhr,n=[],s=[],a={};this.constructor=u;for(var f in p)p.hasOwnProperty(f)&&(a[f]=p[f]);i(e,function(t,e){this[e]||(d.test(e)&&"undefined"!=typeof t?this[e]=h.constant:r(t)&&!c.test(e)?this[e]=h.method:c.test(e)&&null===t?this[e]=h.callback:this[e]=h.config)},a),i(a,function(t,e){t===h.config?n.push(e):t===h.status&&s.push(e)}),i(t,function(t,e){r(t)&&(this[e]=t)},this),i(a,function(t,i){try{var a=e[i]}catch(t){}if(!(void 0===a&&!i in p))switch(t){case h.constant:this[i]=a;break;case h.method:if(this[i]||("setRequestHeader"===i?this.setRequestHeader=function(t,n){return e.setRequestHeader(t,n)}:"send"===i?this.send=function(t){return e.send(t)}:"open"===i?this.open=function(t,n,i,o,r){return e.open(t,n,i,o,r)}:i in p?this[i]=function(){var t=Array.prototype.slice.call(arguments);return e[i].apply(e,t)}:this[i]=function(){var t=Array.prototype.slice.call(arguments);return e[i].apply(e,t)}),"send"===i){var c=this.send;this.send=function(){return o(n,function(t){try{e[t]=this[t]}catch(t){}},this),this._startTime=+new Date,this._httpBody=arguments[0]||"",c.apply(this,arguments)}}break;case h.callback:var d=this;e[i]=function(t){return function(){o(s,function(t){try{d[t]=e[t]}catch(t){}}),"onreadystatechange"==t&&d.handleStateChange.bind(d)(),r(d[t])&&d[t]()}}(i)}},this)},u.prototype.handleStateChange=function(){var t=this.xhr,e=this.readyState;if(4==e){var n=this.status,i=/^(4\d{2})|(5\d{2})$/,o=this.responseURL,r=/\?([^#]*)/,s=o&&o.match(r),a=this._httpBody&&JSON.stringify(this._httpBody)||"",c=this._httpMethod;s=s&&s[1],this._endTime=+new Date,this._requestTime=this._endTime-this._startTime,i.test(n)?analytics.getInstance().dispatch("xhr",{dataLen:(a&&a.length)+(s&&s.length||""),httpMethod:c,exception:!0,requestTime:this._requestTime,url:o,httpBody:a,httpStatusCode:n,queryStr:s&&window.encodeURIComponent(s)||"",responseHeader:window.encodeURIComponent(t.getAllResponseHeaders()),responseStr:window.encodeURIComponent(t.responseText&&t.responseText.substring(0,2e3))}):analytics.getInstance().dispatch("xhr",{dataLen:a&&a.length+(s&&s.length),httpMethod:c,exception:!1,requestTime:this._requestTime,url:o})}},u.prototype.open=function(t){var e=Array.prototype.slice.call(arguments);this._httpMethod=t.toLowerCase(),this.xhr.open.apply(this.xhr,e)},u.prototype.setRequestHeader=function(){var t=Array.prototype.slice.call(arguments);this.xhr.setRequestHeader.apply(this.xhr,t)},document.addEventListener("DOMNodeInserted",function(t){var e=t.target;if("SCRIPT"==e.tagName){var n=+new Date,i=e.getAttribute("src");if(!i)return;/^\/\//.test(i)&&(i=location.protocol+i);var o=/\?([^#]*)/,r=i.match(o);r=r&&r[1],e.addEventListener("load",function(){var t=+new Date;analytics.getInstance().dispatch("script",{query:r||"",dataLen:r&&r.length||"",exception:!1,url:i,requestTime:t-n})},!1),e.addEventListener("error",function(t){var e=+new Date;analytics.getInstance().dispatch("script",{query:r||"",dataLen:r&&r.length||"",url:i,requestTime:e-n,exception:!0})},!1)}},!0)},function(t,e,n){function i(t){if(t){var e=arguments.length;if(1==e)return t;for(var n=1;n<e;n++){var i=arguments[n];for(var o in i)i.hasOwnProperty(o)&&(t[o]=i[o])}return t}}function o(t){if(t&&"object"==typeof t){var e="";for(var n in t)t.hasOwnProperty(n)&&(e+="&"+n+"="+encodeURIComponent(t[n]));return e.substring(1)}}function r(t){var e=/^\s*|\s*$/;return t.replace(e,"")}var s=n(2),a=function(t,e,n){if("undefined"==typeof e){var i=null;if(document.cookie&&""!=document.cookie)for(var o=document.cookie.split(";"),s=0;s<o.length;s++){var a=r(o[s]);if(a.substring(0,t.length+1)==t+"="){i=decodeURIComponent(a.substring(t.length+1));break}}return i}n=n||{},null===e&&(e="",n.expires=-1);var c="";if(n.expires&&("number"==typeof n.expires||n.expires.toUTCString)){var d;"number"==typeof n.expires?(d=new Date,d.setTime(d.getTime()+24*n.expires*60*60*1e3)):d=n.expires,c="; expires="+d.toUTCString()}var h=n.path?"; path="+n.path:"",p=n.domain?"; domain="+n.domain:"",u=n.secure?"; secure":"";document.cookie=[t,"=",encodeURIComponent(e),c,h,p,u].join("")},c=function(t){this.win_=t||window,this.ua=navigator.userAgent,this.data={cookieId:"",channel:"",userAgent:"",screen:screen?screen.width+"*"+screen.height:""},this.setDefaults(),this.bindEvents()};c.COOKIE_COOKIEID="H5CookieId",c.COOKIE_UNIID="uid",c.ANALYSIS_URL=window.location.protocol+"//fireeye1.elong.com/h5/log",c.COOKIE_CHANNLE="businessLine",c.prototype.bindEvents=function(t,e){var n=this;document.addEventListener("DOMContentLoaded",function(t){}),window.addEventListener("load",function(t){var e,i;if(window.performance&&window.performance.timing){var o=window.performance.timing,r=o.domContentLoadedEventStart-o.navigationStart;e=o.domComplete-o.navigationStart,i=o.responseEnd-o.navigationStart,n.dispatch("pageTime",{domContentLoaded:r,domComplete:e,responseEnd:i})}else window.__startTime?(e=+new Date-window.__startTime,n.dispatch("pageTime",{domComplete:e})):(e="only get endtime"+ +new Date,n.dispatch("pageTime",{domComplete:e}))})},c.prototype.setData=function(t,e){this.data[t]=e},c.prototype.setDefaults=function(){this.setChannel(),this.setUserAgent()},c.prototype.getDeviceType=function(){return s.isMobile()?"h5":s.isPC()?"pc":void 0},c.prototype.isAppByUa=function(){var t=this.ua;if(t.match(/ewiphone/i)||t.match(/ewandroid/i))return!0},c.prototype.isWeiXin=function(){if(this.ua.match(/micromessenger/i))return!0},c.prototype.isChrome=function(){var t=this.ua;if(t.indexOf("AppleWebKit")>-1)return!0},c.prototype.isFireFox=function(){var t=this.ua;if(t.indexOf("Gecko")>-1&&t.indexOf("KHTML")==-1)return!0},c.prototype.isIe=function(){var t=this.ua;if(t.indexOf("Trident")>-1)return!0},c.prototype.isOpera=function(){var t=this.ua;if(t.indexOf("Presto")>-1)return!0},c.prototype.setKernel=function(){this.ua;this.isChrome()&&this.setData("browers","chrome"),this.isFireFox()&&this.setData("browers","firefox"),this.isOpera()&&this.setData("browers","opera"),this.isIe()&&this.setData("browers","ie")},c.prototype.isQqWallet=function(){if(window.mqq&&"0"!=mqq.QQVersion)return!0},c.prototype.setChannel=function(){this.setData("channel",a(c.COOKIE_CHANNLE)||"")},c.prototype.setOs=function(){s.isIos()&&this.setData("os","ios"),s.isAndroid()&&this.setData("os","android"),s.isWinphone()&&this.setData("os","winphone")},c.prototype.setOsv=function(t){var e=this.ua;if(s.isIos()){var n=e.match(/\(.*?((\d+_?)+)+.*?\)/);n&&n[1]&&(n=n[1]),this.setData("osv",n)}if(s.isAndroid()){var n=e.match(/\(.*?((\d+\.?)+)+.*?\)/);n&&n[1]&&(n=n[1]),this.setData("osv",n)}if(s.isWinphone()){var n=e.match(/\(.*?((\d+\.?)+)+.*?\)/);n&&n[1]&&(n=n[1]),this.setData("osv",n)}},c.prototype.setV=function(t){var e=this.ua,n=e.match(/micromessenger\/((\d+\.?)+)/i);if(n&&n[1])return void this.setData("v",n[1]);var i=e.match(/ewiphone\/((\d+\.?)+)/);return i&&i[1]?void this.setData("v",i[1]):void 0},c.prototype.setUserAgent=function(){this.setData("userAgent",this.ua)},c.getUniId=function(){var t=a(c.COOKIE_UNIID);return t||(t=(new Date).getTime().toString()+Math.random().toString(),a(c.COOKIE_UNIID,t,{expires:365,path:"/",domain:this.domain_})),t},c.prototype.getUrlString=function(t){var e=this.win_.location.href.toString(),n=new RegExp(""+t+"=([^#&?]*)","ig"),i=e.match(n)?decodeURIComponent(e.match(n)[0].substr(t.length+1)):"";return i},c.prototype.getDomain=function(t){return(t||"").replace(/^.+\.(.+?\..+)$/,"$1")},c.prototype.dispatch=function(t,e){if(t){var n=i({},this.data,e||{},this.session_),r=a(c.COOKIE_COOKIEID);n.type=t,r&&(n.cookieId=r),n.time=+new Date,n.pageUrl=location.href;var s=o(n),d=new Image;d.src=c.ANALYSIS_URL+"?"+s}};var d=new c;window.analytics=t.exports={getInstance:function(){return d}}},function(t,e){var n={versions:function(){var t=navigator.userAgent;navigator.appVersion;return{trident:t.indexOf("Trident")>-1,presto:t.indexOf("Presto")>-1,webKit:t.indexOf("AppleWebKit")>-1,gecko:t.indexOf("Gecko")>-1&&t.indexOf("KHTML")==-1,mobile:t.match(/Mobile/),ios:!!t.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),android:t.indexOf("Android")>-1||t.indexOf("Linux")>-1,iPhone:t.indexOf("iPhone")>-1||t.indexOf("Mac")>-1,iPad:t.indexOf("iPad")>-1,webApp:t.indexOf("Safari")==-1,mi2S:t.indexOf("MI 2S")>-1}}()},i={type:{},isMobile:function(){if(n.versions.mobile||n.versions.android)return!0},isPC:function(){return!n.versions.mobile&&!n.versions.android},isMi2s:function(){var t=n.versions.mi2S;return t},isIos:function(){var t=navigator.userAgent,e=t.match(/(iPad).*OS\s([\d_]+)/),n=t.match(/(iPod)(.*OS\s([\d_]+))?/),i=!e&&t.match(/(iPhone\sOS)\s([\d_]+)/),o=t.match(/.*(Mac OS).*Version\/([\w.]+).*(Safari).*/);if(e||i||n||o)return!0},isWinphone:function(){var t=navigator.userAgent,e=t.match(/Windows Phone/);if(e)return!0},isAndroid:function(){var t=navigator.userAgent,e=t.match(/(Android);?[\s\/]+([\d.]+)?/);if(e)return!0},getUrlRef:function(){var t=decodeURIComponent(location.href),e=i.type={ref:"",activityName:"",of:"",ifs:"",ch:"",chids:"",dref:""};return i.type.ifs=i.ifmarking,t.indexOf("ref")!==-1&&t.match(/(\?|\&)ref=(\w+)/)?e.ref=t.match(/(\?|\&)ref=(\w+)/)[2]:e.ref="ewhtml5",t.indexOf("of")!==-1&&t.match(/(\?|\&)of=(\w+)/)&&(e.of=t.match(/(\?|\&)of=(\w+)/)[2]),t.indexOf("if")!==-1&&t.match(/(\?|\&)if=(\w+)/)&&(e.ifs=t.match(/(\?|\&)if=(\w+)/)[2]),t.indexOf("chid")!==-1&&t.match(/(\?|\&)chid=(\w+)/)&&(e.chids=t.match(/(\?|\&)chid=(\w+)/)[2]),t.indexOf("ch")!==-1&&t.match(/(\?|\&)ch=(\w+)/)&&(e.ch=t.match(/(\?|\&)ch=(\w+)/)[2]),t.indexOf("dref")!==-1&&t.match(/(\?|\&)dref=(\w+)/)&&(e.dref=t.match(/(\?|\&)dref=(\w+)/)[2]),t.indexOf("index.html")!==-1&&t.match(/\/((\w+)|(\w+-\w+))\/index.html/)&&(e.activityName=t.match(/\/((\w+)|(\w+-\w+))\/index.html/)[1]),e},isIphAnd:function(){var t=navigator.userAgent,e=t.match(/Windows Phone/);if(e)html.addClass("winphone");else{var n=t.match(/(Android);?[\s\/]+([\d.]+)?/),i=!t.match(/Mobile/),o=t.match(/(iPad).*OS\s([\d_]+)/),r=t.match(/(iPod)(.*OS\s([\d_]+))?/),s=!o&&t.match(/(iPhone\sOS)\s([\d_]+)/),a=t.match(/.*(Mac OS).*Version\/([\w.]+).*(Safari).*/);n&&html.addClass("android"+(i?" pad":"")),(o||s||r||a)&&html.addClass("ios"),(s||r)&&html.addClass("iphone"),o&&html.addClass("ipad"),n||o||s||r||html.addClass("android")}var c=!1,d="undefined"!=typeof devicePixelRatio?devicePixelRatio:1,h=screen.width/document.body.clientWidth!==1&&screen.height/document.body.clientHeight!==1,p=h?screen.width/d:screen.width,u=h?screen.height/d:screen.height;c=p>=600&&u>=600,c&&html.addClass("pad")}};t.exports=i}]);