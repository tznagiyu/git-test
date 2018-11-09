//驾校微服务地址,默认到代理服务器的根地址
var webUrl = "http://localhost:60099";
//文件微服务地址
var fileServiceUrl = "http://192.168.3.42:9902/ERP-FILE-SERVICE";

//文件上传和显示地址
var fileUploadUrl = fileServiceUrl + "/file/upload"
var fileShowUrl = fileServiceUrl + "/file/show";

var SystemId = "school-web";

//正则表达式，获取地址中的参数
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

function getRootPath() {
    var scripts = document.getElementsByTagName("script")
    var script = scripts[scripts.length - 1];
    strJsPath = document.querySelector ? script.src : script.getAttribute("src")//IE8直接.src
    return strJsPath.substr(0, strJsPath.lastIndexOf("/static"));
}


var sysRootPath = getRootPath();


function dynamicLoadJs(url, callback) {
    var head = document.getElementsByTagName('head')[0];
    var script = document.createElement('script');

    script.type = 'text/javascript';
    script.src = url;
    if (typeof(callback) == 'function') {
        script.onload = script.onreadystatechange = function () {
            if (!this.readyState || this.readyState === "loaded" || this.readyState === "complete") {
                callback();
                script.onload = script.onreadystatechange = null;
            }
        };
    }
    head.appendChild(script);
}


function GetHttpRequest() {
    if (window.XMLHttpRequest) // Gecko
        return new XMLHttpRequest();
    else if (window.ActiveXObject) // IE
        return new ActiveXObject("MsXml2.XmlHttp");
}


function AjaxPage(sId, url) {
    var oXmlHttp = GetHttpRequest();
    oXmlHttp.onload = function () {
        if (oXmlHttp.readyState == 4) {
            if (oXmlHttp.status == 200 || oXmlHttp.status == 304) {
                IncludeJS(sId, url, oXmlHttp.responseText);
            }
            else {
                alert('XML request error: ' + oXmlHttp.statusText + ' (' + oXmlHttp.status + ')');
            }
        }
    }
    oXmlHttp.open('GET', url, false);
    oXmlHttp.send(null);
}


function IncludeJS(sId, fileUrl, source) {
    if ((source != null) && (!document.getElementById(sId))) {
        var oHead = document.getElementsByTagName('HEAD').item(0);
        var oScript = document.createElement("script");
        oScript.language = "javascript";
        oScript.type = "text/javascript";
        oScript.id = sId;
        oScript.defer = true;
        oScript.text = source;
        oHead.appendChild(oScript);
    }
}

function loadBaseJS() {
    AjaxPage("jquery.min", sysRootPath + "/static/js/jquery.min.js");
    AjaxPage("jquery.cookie", sysRootPath + "/static/js/jquery.cookie.js");
    AjaxPage("ax", sysRootPath + "/static/js/ax.js");
}
