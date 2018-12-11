# ERP AOS服务


<a name="overview"></a>
## 概览
ERP AOS服务


### 版本信息
*版本* : 0.0.1


### URI scheme
*域名* : 192.168.3.165:6001  
*基础路径* : /


### 标签

* RPC驾校审核 : Rpc Apply School Controller
* UI接口：公共接口 : Rest Common Controller
* UI接口：导入导出接口 : Rest Student Review Controller
* UI接口：消息接口 : Rest Message Controller
* UI接口：通知公告接口 : Rest Notice Controller
* UI接口：驾校合同接口 : Rest Ds Contract Controller
* tokenAPI : Token Controller
* 傲雄端，首页数据查询 : Index Query Controller
* 后台用户API : User Controller
* 学员管理 : Student Controller
* 岗位API : Position Controller
* 服务接口：通知公告接口 : Rpc Notice Controller
* 角色API : Role Controller
* 车管所接口 : Division Controller
* 车管所用户API : User Controller
* 车管所首页数据展示 : Division Index Controller
* 部门组织API : Department Controller
* 驾校注册申请记录 : Apply School Controller
* 验证码API : Captcha Controller




<a name="paths"></a>
## 资源

<a name="d989c86ec2c7a40945097629d1275885"></a>
### RPC驾校审核
Rpc Apply School Controller


<a name="queryresultusingpost_1"></a>
#### 查询审核结果
```
POST /erp/hl/service/apply/queryResult
```


##### 说明
查询审核结果


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**loginUserRo**  <br>*必填*|loginUserRo|[LoginUserRo](#loginuserro)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[LoginResultRo](#loginresultro)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/service/apply/queryResult
```


###### 请求 body
```
json :
{
  "password" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "id" : 0,
  "remark" : "string",
  "status" : 0
}
```


<a name="f8fc916fd8297c7f5f3fe2d1ea03238a"></a>
### UI接口：公共接口
Rest Common Controller


<a name="listalldriverschoolusingget"></a>
#### 根据城市获取所有驾校列表
```
GET /api/common/queryAllDriverSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCodes**  <br>*可选*|城市列表：cityCode1,cityCode2|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«驾校信息»»](#c3cb6745abcff4aedd3222c8aa50d26b)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/common/queryAllDriverSchool
```


###### 请求 query
```
json :
{
  "cityCodes" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ { } ],
  "message" : "string"
}
```


<a name="listnoticeusingget"></a>
#### 获取城市列表
```
GET /api/common/queryCityList
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«区域信息»»](#3c5e4b6061d3de129739ac9693b0ea7b)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/common/queryCityList
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ {
    "parentCode" : "string"
  } ],
  "message" : "string"
}
```


<a name="listdriverschoolusingget"></a>
#### 根据城市获取驾校列表
```
GET /api/common/queryDriverSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCodes**  <br>*可选*|城市列表：city1,city2|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«驾校信息»»](#c3cb6745abcff4aedd3222c8aa50d26b)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/common/queryDriverSchool
```


###### 请求 query
```
json :
{
  "cityCodes" : "string",
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ { } ],
  "message" : "string"
}
```


<a name="downloadbyidusingget"></a>
#### downloadById
```
GET /test/service/file/download
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|id|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|string (byte)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/test/service/file/download
```


###### 请求 query
```
json :
{
  "id" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
"string"
```


<a name="5fcf79eb76ee09ab93accea65b84fcfe"></a>
### UI接口：导入导出接口
Rest Student Review Controller


<a name="backwriteexportresultusingpost"></a>
#### 导出数据回写
```
POST /api/student/review/backWriteExportResult
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**FormData**|**file**  <br>*必填*|file|file|
|**Body**|**recordId**  <br>*必填*|导出记录ID|[String](#string)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `multipart/form-data`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/backWriteExportResult
```


###### 请求 formData
```
json :
"file"
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deleteexportrecordusingget"></a>
#### 删除导出记录
```
GET /api/student/review/deleteExportRecord
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids**  <br>*必填*|导出记录ID：id1,id2,id3|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/deleteExportRecord
```


###### 请求 query
```
json :
{
  "ids" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deleteimportrecordusingget"></a>
#### 删除导入记录
```
GET /api/student/review/deleteImportRecord
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids**  <br>*必填*|导入记录ID：id1,id2,id3|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/deleteImportRecord
```


###### 请求 query
```
json :
{
  "ids" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getconfigbycitycodeusingget"></a>
#### 根据城市Code获取驾校列表、导出配置、导出字段配置和导出文件配置
```
GET /api/student/review/getConfigByCityCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCode**  <br>*可选*|城市Code|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**provinceCode**  <br>*可选*|省Code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«Map«string,object»»](#0856ad78f52baf3238a0dd6763e38bd9)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/getConfigByCityCode
```


###### 请求 query
```
json :
{
  "cityCode" : "string",
  "currentUserId" : "string",
  "provinceCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getexportfieldusingget"></a>
#### 根据城市Code获取导出字段配置,若城市Code都为空，则返回所有可导出字段
```
GET /api/student/review/getExportField
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCode**  <br>*可选*|城市Code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«ExportField»»](#12c5b5d2ec41e6e80e8a70e02e53792f)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/getExportField
```


###### 请求 query
```
json :
{
  "cityCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ { } ],
  "message" : "string"
}
```


<a name="getexportfileusingget"></a>
#### 根据城市Code获取导出文件配置,若城市Code都为空，则返回所有可导出文件
```
GET /api/student/review/getExportFile
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCode**  <br>*可选*|城市Code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«ExportFile»»](#5aec34896383bcaaee6e4e16fe8fc25f)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/getExportFile
```


###### 请求 query
```
json :
{
  "cityCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ { } ],
  "message" : "string"
}
```


<a name="importcheckresultusingpost"></a>
#### 导入学员信息审核结果
```
POST /api/student/review/importCheckResult
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**FormData**|**file**  <br>*必填*|file|file|
|**Body**|**cityCode**  <br>*必填*|城市编号|[String](#string)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `multipart/form-data`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/importCheckResult
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 formData
```
json :
"file"
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="listexportdetailusingget"></a>
#### 分页查询导出记录明细
```
GET /api/student/review/listExportDetail
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**exportStatus**  <br>*可选*|导出状态：all:所有；exp:导出；imp:导入|string|`"0"`|
|**Query**|**fileType**  <br>*可选*|文件类别：all:所有;normal:无文件; sfz:身份证头像;mqb:互联网面签协议;cxjs:初学驾驶申请表;zjjs:增驾驾驶申请表;zw:指纹;ljz:原驾驶证;zzz:制证照;pxjl:培训记录;xszm:学时证明;zzpermit:居住证照片;idz:身份证正面;idf:身份证反面;healthForm:体检表;scenePhotos:现场照片;zjzo:证件照;tjbtp:提交表图片;sfzdzz:身份证电子照片;zcbmqz:注册表面签照|string|`"0"`|
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**recordId**  <br>*必填*|记录Id|integer (int64)|`0`|
|**Query**|**searchKey**  <br>*可选*|学员姓名或证件号码|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«ExportRecordDetail»»](#1fb4f838a8d3f95e6d38719d21ede679)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/listExportDetail
```


###### 请求 query
```
json :
{
  "exportStatus" : "string",
  "fileType" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "recordId" : 0,
  "searchKey" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "fileTypeName" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="listexportrecordusingget"></a>
#### 分页查询导出记录
```
GET /api/student/review/listExportRecord
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**cityCode**  <br>*可选*|操作城市Code|string||
|**Query**|**fromTime**  <br>*可选*|开始时间|string||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**provinceCode**  <br>*可选*|操作省Code|string||
|**Query**|**serialNumber**  <br>*可选*|流水号|string||
|**Query**|**toTime**  <br>*可选*|结束时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«ExportRecord»»](#937609414cb612d32539d6d327905a0a)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/listExportRecord
```


###### 请求 query
```
json :
{
  "cityCode" : "string",
  "fromTime" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "provinceCode" : "string",
  "serialNumber" : "string",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ { } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="listimportdetailusingget"></a>
#### 分页查询导入记录明细
```
GET /api/student/review/listImportDetail
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**fromTime**  <br>*可选*|开始时间|string||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**searchKey**  <br>*可选*|学员姓名或证件号码|string||
|**Query**|**timeType**  <br>*可选*|时间类型：1为申请时间；2为受理时间|ref||
|**Query**|**toTime**  <br>*可选*|结束时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«CheckResultImportRecordDetail»»](#e32f1b39e2c7aaac278482b2ab83cf52)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/listImportDetail
```


###### 请求 query
```
json :
{
  "fromTime" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "searchKey" : "string",
  "timeType" : "ref",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ { } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="listimportrecordusingget"></a>
#### 分页查询审核结果导入记录
```
GET /api/student/review/listImportRecord
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**cityCode**  <br>*可选*|操作城市Code|string||
|**Query**|**fromTime**  <br>*可选*|开始时间|string||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**provinceCode**  <br>*可选*|操作省Code|string||
|**Query**|**serialNumber**  <br>*可选*|流水号|string||
|**Query**|**toTime**  <br>*可选*|结束时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«CheckResultImportRecord»»](#1fe97135d5cc3132a47ff8fe73e6661a)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/listImportRecord
```


###### 请求 query
```
json :
{
  "cityCode" : "string",
  "fromTime" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "provinceCode" : "string",
  "serialNumber" : "string",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ { } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="produceexportfileusingpost"></a>
#### 生成待审核学员信息文件
```
POST /api/student/review/produceExportFile
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Body**|**cityCode**  <br>*必填*|城市编号|[String](#string)|
|**Body**|**conditionVo**  <br>*必填*|conditionVo|[导出待审核学员查询条件](#44deab73b08d79eb73d953af6f0b5d6f)|
|**Body**|**driverSchoolId**  <br>*可选*|驾校ID|[Long](#long)|
|**Body**|**exportType**  <br>*可选*|导出类型： 1导出Excel;2导出内网加密文件;3导出内网非加密文件|integer (int32)|
|**Body**|**fromTime**  <br>*可选*|开始时间|[String](#string)|
|**Body**|**searchKey**  <br>*可选*|学员姓名或身份证号|[String](#string)|
|**Body**|**timeType**  <br>*可选*|时间类型(1为创建时间，2为提交时间)|[String](#string)|
|**Body**|**toTime**  <br>*可选*|结束时间|[String](#string)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«string»](#d1c8dc2fdbb2d74e2044af57aed6506c)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/produceExportFile
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "string",
  "message" : "string"
}
```


<a name="recordstatisticsusingget"></a>
#### 查询导出统计信息
```
GET /api/student/review/recordStatistics
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**dataId**  <br>*必填*|导入导出记录ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«ExportRecordStatistics»»](#f5e8366d776e0659e17df26db1ef51dc)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/recordStatistics
```


###### 请求 query
```
json :
{
  "dataId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ {
    "dataType" : "string"
  } ],
  "message" : "string"
}
```


<a name="saveexportconfigusingpost"></a>
#### 保存城市可导出字段配置
```
POST /api/student/review/saveExportConfig
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**cityCode**  <br>*可选*|城市Code|[String](#string)|
|**Body**|**exportDataVo**  <br>*必填*|exportDataVo|[城市导出字段配置](#a17491c15bd2c0ecf5dae7b0f86126c9)|
|**Body**|**exportFieldList**  <br>*可选*|可导出字段：[{fieldName:'',fieldDesc:''}]|[List](#list)|
|**Body**|**exportFileList**  <br>*可选*|可导出字段：[{fileType:'',fileDesc:''}]|[List](#list)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/review/saveExportConfig
```


###### 请求 body
```
json :
{
  "exportFieldList" : [ { } ],
  "exportFileList" : [ { } ]
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="exportfileusingget"></a>
#### 下载文件
```
GET /erp/hl/api/student/review/exportFile
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**fileName**  <br>*可选*|文件名|[String](#string)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/student/review/exportFile
```


<a name="69d5ef2d7ce2a6970c74155986068cf7"></a>
### UI接口：消息接口
Rest Message Controller


<a name="queryallusingget"></a>
#### 获取所有模板参数
```
GET /api/message/param/listAll
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«消息模板参数项配置»»](#08d3d84c1ad363a8ecacbe53e2c0b46d)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/param/listAll
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ { } ],
  "message" : "string"
}
```


<a name="deleterecordusingget"></a>
#### 删除消息记录
```
GET /api/message/record/delete
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids**  <br>*必填*|记录ID：id1,id2,id3|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/record/delete
```


###### 请求 query
```
json :
{
  "ids" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="listpushrecordusingget"></a>
#### 查询推送记录
```
GET /api/message/record/listPushRecord
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**fromTime**  <br>*可选*|发送开始时间|string||
|**Query**|**mrContent**  <br>*可选*|推送内容|string||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**pushStatus**  <br>*可选*|推送状态：push_no为未发送；push_yes为已发送；push_stop为暂停发送|ref||
|**Query**|**pushType**  <br>*可选*|推送方式(app:APP；wx_public:微信公众号；wx_applet:微信小程序；)|ref||
|**Query**|**toTime**  <br>*可选*|发送截止时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«消息发送记录»»](#cb1fe8d2d0f6c7dbd8e26069546c5f1e)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/record/listPushRecord
```


###### 请求 query
```
json :
{
  "fromTime" : "string",
  "mrContent" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "pushStatus" : "ref",
  "pushType" : "ref",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "pushStatusName" : "string",
      "pushTypeName" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="listwaitpushrecordusingget"></a>
#### 查询推送记录
```
GET /api/message/record/listWaitPushRecord
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**fromTime**  <br>*可选*|发送开始时间|string||
|**Query**|**mrContent**  <br>*可选*|推送内容|string||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**pushStatus**  <br>*可选*|推送状态：push_no为未发送；push_yes为已发送；push_stop为暂停发送|ref||
|**Query**|**pushType**  <br>*可选*|推送方式(app:APP；wx_public:微信公众号；wx_applet:微信小程序；)|ref||
|**Query**|**toTime**  <br>*可选*|发送截止时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«消息待发记录»»](#d284f34379694931c7b5f7ce60adfda8)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/record/listWaitPushRecord
```


###### 请求 query
```
json :
{
  "fromTime" : "string",
  "mrContent" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "pushStatus" : "ref",
  "pushType" : "ref",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "pushTypeName" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="addtemplateusingpost"></a>
#### 保存消息模板
```
POST /api/message/template/add
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Body**|**mtDriverSchoolList**  <br>*必填*|模板下发驾校数组[{dsId:0,dsCode:'驾校编号',dsDepCode:'驾校组织编号',dsName:'驾校名称',cityCode:'城市Code'}]|[List](#list)|
|**Body**|**mtTitle**  <br>*必填*|模板标题(100字符内)|[String](#string)|
|**Body**|**params**  <br>*可选*|入参|[消息模板配置信息](#d52b9acf7f1942987783b6b835554018)|
|**Body**|**pushTypeList**  <br>*必填*|推送方式数组[{mtContent:'消息模板(1000字符内，APP、短信推送需要)',mtWxTemplateId:'微信模板ID,微信公众号、微信小程序推送需要',mtUrl:'跳转链接,微信公众号、微信小程序推送需要，其中小程序仅限小程序内的页面;可不传,点击后无跳转',pushType:推送方式(app:APP；wx_public:微信公众号；wx_applet:微信小程序；sms:短信),pushParam:[{mtpId:参数项ID,mtpItem:'参数项', mtpDesc:'参数项描述'}] }]|[List](#list)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/template/add
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deletetemplateusingget"></a>
#### 删除消息模板
```
GET /api/message/template/delete
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids**  <br>*必填*|记录ID：id1,id2,id3|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/template/delete
```


###### 请求 query
```
json :
{
  "ids" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="detailtemplateusingget"></a>
#### 查看模板详情
```
GET /api/message/template/detail
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**dataId**  <br>*必填*|模板ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«模板详情»](#91c604b83052efe361db8a16caf7d40b)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/template/detail
```


###### 请求 query
```
json :
{
  "dataId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : { },
  "message" : "string"
}
```


<a name="listtemplateusingget"></a>
#### 分页查询消息模板
```
GET /api/message/template/list
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**fromTime**  <br>*可选*|开始时间|string||
|**Query**|**mtCode**  <br>*可选*|模板编号|string||
|**Query**|**mtTitle**  <br>*可选*|模板标题|string||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**pushType**  <br>*可选*|推送方式(app:APP；wx_public:微信公众号；wx_applet:微信小程序；sms:短信)|ref||
|**Query**|**toTime**  <br>*可选*|截止时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«模板详情»»](#2208c07c5b019bc8fc12cd486cc13e5a)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/template/list
```


###### 请求 query
```
json :
{
  "fromTime" : "string",
  "mtCode" : "string",
  "mtTitle" : "string",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "pushType" : "ref",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ { } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updatetemplateusingpost"></a>
#### 编辑消息模板
```
POST /api/message/template/update
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**id**  <br>*必填*|模板ID|integer (int64)|
|**Body**|**mtDriverSchoolList**  <br>*必填*|模板下发驾校数组[{dsId:0,dsCode:'驾校编号',dsDepCode:'驾校组织编号',dsName:'驾校名称',cityCode:'城市Code'}]|[List](#list)|
|**Body**|**mtTitle**  <br>*必填*|模板标题(100字符内)|[String](#string)|
|**Body**|**params**  <br>*可选*|入参|[消息模板配置信息](#d52b9acf7f1942987783b6b835554018)|
|**Body**|**pushTypeList**  <br>*必填*|推送方式数组[{mtContent:'消息模板(1000字符内，APP、短信推送需要)',mtWxTemplateId:'微信模板ID,微信公众号、微信小程序推送需要',mtUrl:'跳转链接,微信公众号、微信小程序推送需要，其中小程序仅限小程序内的页面;可不传,点击后无跳转',pushType:推送方式(app:APP；wx_public:微信公众号；wx_applet:微信小程序；sms:短信)}]|[List](#list)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/message/template/update
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "id" : 0
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="e9ceadc3974dfd77514c5f0a21e68581"></a>
### UI接口：通知公告接口
Rest Notice Controller


<a name="addnoticeusingpost"></a>
#### 保存通知公告
```
POST /api/notice/add
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Body**|**dispenseOrgList**  <br>*必填*|下发组织数组[{orgType:'jx',orgId:组织ID,orgCode:'组织编号',orgName:'组织名称',orgDepCode:'组织Code',cityCode:'城市编号'}]|[ArrayList](#arraylist)|
|**Body**|**noticeContent**  <br>*必填*|公告内容(5000字符内)|[Integer](#integer)|
|**Body**|**noticeTitle**  <br>*必填*|公告标题(100字符内)|[String](#string)|
|**Body**|**noticeType**  <br>*必填*|公告类型：notice为公告；msg为消息|[NoticeType](#noticetype)|
|**Body**|**params**  <br>*可选*|入参|[通知公告参数](#bff8426e33c754a81f8390a71ceb8809)|
|**Body**|**tipsEndTime**  <br>*可选*|弹窗提示截止时间|[String](#string)|
|**Body**|**tipsStartTime**  <br>*可选*|弹窗提示开始时间|[String](#string)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/notice/add
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deletenoticeusingget"></a>
#### 删除公告
```
GET /api/notice/delete
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids**  <br>*必填*|公告ID：id1,id2,id3|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/notice/delete
```


###### 请求 query
```
json :
{
  "ids" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="detailnoticeusingget_1"></a>
#### 查看公告详情——编辑用
```
GET /api/notice/detail
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**dataId**  <br>*必填*|公告ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«通知公告详情»](#2557cb64142fd37fbe39b100e7cdfaf7)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/notice/detail
```


###### 请求 query
```
json :
{
  "dataId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : { },
  "message" : "string"
}
```


<a name="listnoticeusingget_1"></a>
#### 查询所有公告列表
```
GET /api/notice/list
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**fromTime**  <br>*可选*|发布开始时间|string||
|**Query**|**noticeContent**  <br>*可选*|公告内容|string||
|**Query**|**noticeTitle**  <br>*可选*|公告标题|string||
|**Query**|**orgDepCodeList**  <br>*可选*|组织DepCode(组织查询时传入)|ref||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**publisher**  <br>*可选*|发布人|string||
|**Query**|**toTime**  <br>*可选*|发布截止时间|string||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«通知公告详情»»](#46b63592ef8355e3801ae7efae154315)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/notice/list
```


###### 请求 query
```
json :
{
  "fromTime" : "string",
  "noticeContent" : "string",
  "noticeTitle" : "string",
  "orgDepCodeList" : "ref",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "publisher" : "string",
  "toTime" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ { } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="previewnoticeusingget"></a>
#### 查看公告详情——预览用
```
GET /api/notice/preview
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**dataId**  <br>*必填*|公告ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«通知公告»](#b253f4697dac9a03391a7fa39495f15d)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/notice/preview
```


###### 请求 query
```
json :
{
  "dataId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "createUser" : "string",
    "isDel" : "string",
    "noticeContent" : "string",
    "noticeTitle" : "string",
    "noticeType" : "string",
    "updateUser" : "string"
  },
  "message" : "string"
}
```


<a name="updatenoticeusingpost"></a>
#### 编辑公告信息
```
POST /api/notice/update
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Body**|**dispenseOrgList**  <br>*必填*|下发组织数组[{orgType:'jx',orgId:组织ID,orgCode:'组织编号',orgName:'组织名称',orgDepCode:'组织Code',cityCode:'城市编号'}]|[ArrayList](#arraylist)|
|**Body**|**id**  <br>*必填*|公告ID|[Long](#long)|
|**Body**|**noticeContent**  <br>*必填*|公告内容(5000字符内)|[Integer](#integer)|
|**Body**|**noticeTitle**  <br>*必填*|公告标题(100字符内)|[String](#string)|
|**Body**|**noticeType**  <br>*必填*|公告类型：notice为公告；msg为消息|[NoticeType](#noticetype)|
|**Body**|**params**  <br>*可选*|入参|[通知公告参数](#bff8426e33c754a81f8390a71ceb8809)|
|**Body**|**tipsEndTime**  <br>*可选*|弹窗提示截止时间|[String](#string)|
|**Body**|**tipsStartTime**  <br>*可选*|弹窗提示开始时间|[String](#string)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/notice/update
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="27f36f7fb5d16e7fca5a32500d0ba1d0"></a>
### UI接口：驾校合同接口
Rest Ds Contract Controller


<a name="adddscusingpost"></a>
#### 保存驾校合同
```
POST /api/dsc/add
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Body**|**cityCode**  <br>*可选*|驾校城市|[String](#string)|
|**Body**|**dscBeginTime**  <br>*必填*|合同开始时间|[String](#string)|
|**Body**|**dscContactsName**  <br>*必填*|联系人：100字符内|[String](#string)|
|**Body**|**dscContactsPhone**  <br>*必填*|联系电话|[String](#string)|
|**Body**|**dscCustomerName**  <br>*必填*|客户名称：100字符内|[String](#string)|
|**Body**|**dscDsCode**  <br>*可选*|驾校编号|[String](#string)|
|**Body**|**dscDsDepCode**  <br>*可选*|驾校组织编码|[String](#string)|
|**Body**|**dscDsId**  <br>*可选*|合同驾校ID|[Long](#long)|
|**Body**|**dscDsName**  <br>*可选*|驾校名称|[String](#string)|
|**Body**|**dscEndTime**  <br>*必填*|合同截止时间|[String](#string)|
|**Body**|**dscFileList**  <br>*必填*|驾校合同文件[{dscFileId:1111,dscFileType:'picture'}]|[ArrayList](#arraylist)|
|**Body**|**dscName**  <br>*必填*|合同名称：100字符内|[String](#string)|
|**Body**|**dscSignName**  <br>*必填*|签订人：100字符内|[String](#string)|
|**Body**|**dscSignTime**  <br>*必填*|签订时间|[String](#string)|
|**Body**|**params**  <br>*可选*|入参|[通知公告参数](#bff8426e33c754a81f8390a71ceb8809)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dsc/add
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deletedscusingget"></a>
#### 删除驾校合同
```
GET /api/dsc/delete
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids**  <br>*必填*|合同ID：id1,id2,id3|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dsc/delete
```


###### 请求 query
```
json :
{
  "ids" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="detailnoticeusingget"></a>
#### 查看合同详情
```
GET /api/dsc/detail
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**dataId**  <br>*必填*|合同ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«驾校合同详情»](#a4394559c7c921a5fb60ec539e153a24)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dsc/detail
```


###### 请求 query
```
json :
{
  "dataId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "contractData" : { },
    "dscFileList" : [ {
      "dscFileTypeName" : "string"
    } ]
  },
  "message" : "string"
}
```


<a name="querypagebeanusingget_1"></a>
#### 分页查询
```
GET /api/dsc/list
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Body**|**dscCode**  <br>*可选*|合同编号|[String](#string)||
|**Body**|**dscCustomerName**  <br>*可选*|客户名称|[String](#string)||
|**Body**|**dscName**  <br>*可选*|合同名称|[String](#string)||
|**Body**|**dscSignName**  <br>*可选*|签订人|[String](#string)||
|**Body**|**fromTime**  <br>*可选*|开始时间|[String](#string)||
|**Body**|**timeType**  <br>*可选*|合同时间类型：dsc_start 为 合同开始时间；dsc_end 为 合同截止时间|[DscTimeType](#dsctimetype)||
|**Body**|**toTime**  <br>*可选*|截止时间|[String](#string)||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«驾校合同»»](#c5d5c60fa59ab689e17b80fea34c2cf8)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dsc/list
```


###### 请求 query
```
json :
{
  "pageIndex" : "ref",
  "pageSize" : "ref"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ { } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updatedscusingpost"></a>
#### 编辑驾校合同
```
POST /api/dsc/update
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Body**|**cityCode**  <br>*可选*|驾校城市|[String](#string)|
|**Body**|**dscBeginTime**  <br>*必填*|合同开始时间|[String](#string)|
|**Body**|**dscContactsName**  <br>*必填*|联系人|[String](#string)|
|**Body**|**dscContactsPhone**  <br>*必填*|联系电话|[String](#string)|
|**Body**|**dscCustomerName**  <br>*必填*|客户名称|[String](#string)|
|**Body**|**dscDsCode**  <br>*可选*|驾校编号|[String](#string)|
|**Body**|**dscDsDepCode**  <br>*可选*|驾校组织编码|[String](#string)|
|**Body**|**dscDsId**  <br>*可选*|合同驾校ID|[Long](#long)|
|**Body**|**dscDsName**  <br>*可选*|驾校名称|[String](#string)|
|**Body**|**dscEndTime**  <br>*必填*|合同截止时间|[String](#string)|
|**Body**|**dscFileList**  <br>*必填*|驾校合同文件[{dscFileId:1111,dscFileType:'picture'}]|[ArrayList](#arraylist)|
|**Body**|**dscName**  <br>*必填*|合同名称：100字符内|[String](#string)|
|**Body**|**dscSignName**  <br>*必填*|签订人|[String](#string)|
|**Body**|**dscSignTime**  <br>*必填*|签订时间|[String](#string)|
|**Body**|**id**  <br>*必填*|合同ID|[Long](#long)|
|**Body**|**params**  <br>*可选*|入参|[通知公告参数](#bff8426e33c754a81f8390a71ceb8809)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dsc/update
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="tokenapi_resource"></a>
### TokenAPI
Token Controller


<a name="refreshtokenusingpost"></a>
#### 刷新token
```
POST /api/token/refreshToken
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**refreshToken**  <br>*可选*|refreshToken|string|
|**Query**|**token**  <br>*可选*|token|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/token/refreshToken
```


###### 请求 query
```
json :
{
  "refreshToken" : "string",
  "token" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="saveusingpost"></a>
#### save
```
POST /api/token/save
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/token/save
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="292bce6353b484e8ed64361ab977927c"></a>
### 傲雄端，首页数据查询
Index Query Controller


<a name="studentbycitycodeusingpost"></a>
####  根据城市Code查询学员
```
POST /api/index/studentByCityCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCode**  <br>*必填*|城市Code|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/index/studentByCityCode
```


###### 请求 query
```
json :
{
  "cityCode" : "string",
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="selecttotalstudentusingpost"></a>
#### 获取全国学员报名数量
```
POST /api/index/totalStudent
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/index/totalStudent
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="9449cd20a7956b31b2119e76fb8ba77e"></a>
### 后台用户API
User Controller


<a name="adduserusingpost_3"></a>
#### 新增用户
```
POST /api/school/user/addUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门组织code|string|
|**Query**|**expireDatetime**  <br>*可选*|用户到期时间|string|
|**Query**|**name**  <br>*必填*|用户姓名|string|
|**Query**|**positionId**  <br>*必填*|岗位id|string|
|**Query**|**username**  <br>*必填*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/addUser
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string",
  "expireDatetime" : "string",
  "name" : "string",
  "positionId" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deluserusingpost_2"></a>
#### 删除用户
```
POST /api/school/user/delUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|用户ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/delUser
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuseridusingpost_2"></a>
#### 根据用户id查询
```
POST /api/school/user/getUserId
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*可选*|id|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/getUserId
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuserschoolusingpost"></a>
#### 根据驾校组织code查询用户账号信息
```
POST /api/school/user/getUserSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depCode**  <br>*可选*|驾校组织code|integer (int32)|
|**Query**|**type**  <br>*可选*|类别（1：直营总校  2：非直营总校  3:分校 4：报名点）|integer (int32)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/getUserSchool
```


###### 请求 query
```
json :
{
  "depCode" : 0,
  "type" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuserschoolpageusingget"></a>
#### 根据驾校组织code查询用户账号信息
```
GET /api/school/user/getUserSchoolPage
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depCode**  <br>*可选*|驾校组织code|integer (int32)|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**type**  <br>*可选*|类别（1：直营总校  2：非直营总校  3:分校 4：报名点）|integer (int32)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«部门用户»»](#1158069b4436883924bb77f4345c79eb)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/getUserSchoolPage
```


###### 请求 query
```
json :
{
  "depCode" : 0,
  "pageIndex" : 0,
  "pageSize" : 0,
  "type" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "created" : "string",
      "depCode" : "string",
      "depId" : "string",
      "depName" : "string",
      "depType" : "string",
      "id" : 0,
      "name" : "string",
      "operatorName" : "string",
      "parentCode" : "string",
      "positionCode" : "string",
      "positionId" : "string",
      "positionName" : "string",
      "roleId" : 0,
      "username" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="querypagebeanusingpost_5"></a>
#### 分页查询
```
POST /api/school/user/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depName**  <br>*可选*|驾校名称|string|
|**Query**|**name**  <br>*可选*|用户姓名|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**userSate**  <br>*可选*|用户状态|string|
|**Query**|**username**  <br>*可选*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«部门用户»»](#1158069b4436883924bb77f4345c79eb)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/list
```


###### 请求 query
```
json :
{
  "depName" : "string",
  "name" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "userSate" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "created" : "string",
      "depCode" : "string",
      "depId" : "string",
      "depName" : "string",
      "depType" : "string",
      "id" : 0,
      "name" : "string",
      "operatorName" : "string",
      "parentCode" : "string",
      "positionCode" : "string",
      "positionId" : "string",
      "positionName" : "string",
      "roleId" : 0,
      "username" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updateuserusingpost_3"></a>
#### 修改用户
```
POST /api/school/user/updateUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门组织code|string|
|**Query**|**expireDatetime**  <br>*可选*|用户到期时间|string|
|**Query**|**id**  <br>*必填*|用户ID|string|
|**Query**|**name**  <br>*必填*|用户姓名|string|
|**Query**|**positionId**  <br>*必填*|岗位id|string|
|**Query**|**userId**  <br>*可选*|userId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/updateUser
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string",
  "expireDatetime" : "string",
  "id" : "string",
  "name" : "string",
  "positionId" : "string",
  "userId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateuserstateusingpost"></a>
#### 变更用户账号状态
```
POST /api/school/user/updateUserState
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|用户ID|string|
|**Query**|**state**  <br>*必填*|用户状态|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/user/updateUserState
```


###### 请求 query
```
json :
{
  "id" : "string",
  "state" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="addapplyusingpost"></a>
#### 初始化新增驾校用户
```
POST /service/rpcUser/addApply
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**appCode**  <br>*可选*|appCode|[String](#string)|
|**Body**|**depCode**  <br>*可选*|部门组织code|[String](#string)|
|**Body**|**expireDatetime**  <br>*可选*|用户到期时间 （默认空表示长期|string (date)|
|**Body**|**name**  <br>*必填*|用户名字|[String](#string)|
|**Body**|**password**  <br>*可选*|登陆密码或者密码标识(比如密码md5)|[String](#string)|
|**Body**|**schoolUserVo**  <br>*必填*|schoolUserVo|[驾校用户](#f56b8d8cb504b92dcd101d4a9a174f44)|
|**Body**|**username**  <br>*必填*|用户账号|[String](#string)|
|**Body**|**操作人id**  <br>*可选*|操作人id|[Long](#long)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/rpcUser/addApply
```


###### 请求 body
```
json :
{
  "appCode" : "string",
  "depCode" : "string",
  "depId" : 0,
  "expireDatetime" : "string",
  "name" : "string",
  "password" : "string",
  "type" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getisuserusingpost"></a>
#### 根据用户账号查询用户是是否有效的用户
```
POST /service/rpcUser/getIsUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**username**  <br>*必填*|username|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|boolean|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/rpcUser/getIsUser
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
true
```


<a name="getsysncuserorgusingpost"></a>
#### 傲雄--根据当前用户获取权限
```
POST /service/rpcUser/getSysncUserOrg
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**currentUserId**  <br>*必填*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|< string > array|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/rpcUser/getSysncUserOrg
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
[ "string" ]
```


<a name="updatebydepcodeusingpost"></a>
#### 根据部门depcode删除其下所有的用户
```
POST /service/rpcUser/updateByDepCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**depCode**  <br>*必填*|depCode|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|integer (int32)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/rpcUser/updateByDepCode
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
0
```


<a name="adduserusingpost_2"></a>
#### 新增用户
```
POST /user/addUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门组织code|string|
|**Query**|**expireDatetime**  <br>*可选*|用户到期时间|string|
|**Query**|**name**  <br>*必填*|用户姓名|string|
|**Query**|**positionId**  <br>*必填*|岗位id|string|
|**Query**|**username**  <br>*必填*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/addUser
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string",
  "expireDatetime" : "string",
  "name" : "string",
  "positionId" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="changepasswordusingpost"></a>
#### 修改密码
```
POST /user/changePassword
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*必填*|currentUserId|string|
|**Query**|**oldpassword**  <br>*必填*|用户旧密码|string|
|**Query**|**password**  <br>*必填*|用户新密码|string|
|**Query**|**username**  <br>*必填*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/changePassword
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "oldpassword" : "string",
  "password" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deluserusingpost_1"></a>
#### 删除用户
```
POST /user/delUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|用户ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/delUser
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="forgetpasswordusingpost"></a>
#### 忘记密码
```
POST /user/forgetPassword
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*必填*|currentUserId|string|
|**Query**|**password**  <br>*必填*|用户新密码|string|
|**Query**|**username**  <br>*必填*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/forgetPassword
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "password" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuserusingpost"></a>
#### 根据用户名查询
```
POST /user/getUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**name**  <br>*可选*|name|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/getUser
```


###### 请求 query
```
json :
{
  "name" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuseridusingpost_1"></a>
#### 根据用户id查询
```
POST /user/getUserId
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*可选*|id|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/getUserId
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuserinfousingpost"></a>
#### 根据登录名查机构权限
```
POST /user/getUserInfo
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**username**  <br>*必填*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/getUserInfo
```


###### 请求 query
```
json :
{
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querypagebeanusingpost_4"></a>
#### 分页查询
```
POST /user/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*必填*|currentUserId|string|
|**Query**|**name**  <br>*可选*|用户姓名|string|
|**Query**|**operatorName**  <br>*可选*|部门名称|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**username**  <br>*可选*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«部门用户»»](#1158069b4436883924bb77f4345c79eb)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/list
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "name" : "string",
  "operatorName" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "created" : "string",
      "depCode" : "string",
      "depId" : "string",
      "depName" : "string",
      "depType" : "string",
      "id" : 0,
      "name" : "string",
      "operatorName" : "string",
      "parentCode" : "string",
      "positionCode" : "string",
      "positionId" : "string",
      "positionName" : "string",
      "roleId" : 0,
      "username" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="loginusingpost"></a>
#### 系统登录
```
POST /user/login
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**captchaCode**  <br>*可选*|验证码key|string|
|**Query**|**code**  <br>*必填*|验证码|string|
|**Query**|**password**  <br>*必填*|密码|string|
|**Query**|**username**  <br>*必填*|账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/login
```


###### 请求 query
```
json :
{
  "captchaCode" : "string",
  "code" : "string",
  "password" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="logoutusingpost"></a>
#### 退出登录
```
POST /user/logout
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**token**  <br>*必填*|用户登录token|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/logout
```


###### 请求 query
```
json :
{
  "token" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="sendmsgusingpost"></a>
#### 发送短信验证码
```
POST /user/sendMsg
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**phone**  <br>*可选*|phone|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/sendMsg
```


###### 请求 query
```
json :
{
  "phone" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="sysncuserorgusingpost"></a>
#### 根据登录名查机构权限
```
POST /user/sysncUserOrg
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/sysncUserOrg
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateuserusingpost_2"></a>
#### 修改用户
```
POST /user/updateUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门组织code|string|
|**Query**|**expireDatetime**  <br>*可选*|用户到期时间|string|
|**Query**|**id**  <br>*必填*|用户ID|string|
|**Query**|**name**  <br>*必填*|用户姓名|string|
|**Query**|**positionId**  <br>*必填*|岗位id|string|
|**Query**|**userId**  <br>*可选*|userId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/user/updateUser
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string",
  "expireDatetime" : "string",
  "id" : "string",
  "name" : "string",
  "positionId" : "string",
  "userId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="869d27ff8e36bb9de29f861b3bc391df"></a>
### 学员管理
Student Controller


<a name="adduserusingpost"></a>
#### 学员信息录入
```
POST /api/student/add
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**birthday**  <br>*可选*||string|
|**Query**|**carCode**  <br>*可选*||enum (no, A1, A2, A3, B1, B2, C1, C2, C4, C5, D, E, M, N, P, C3, F)|
|**Query**|**countryCode**  <br>*可选*||string|
|**Query**|**countryName**  <br>*可选*||string|
|**Query**|**currentUserId**  <br>*必填*|用户id不能为空|string|
|**Query**|**email**  <br>*可选*||string|
|**Query**|**headPic**  <br>*可选*||string|
|**Query**|**id**  <br>*可选*||integer (int64)|
|**Query**|**idExpiredDate**  <br>*可选*||string|
|**Query**|**idNumber**  <br>*可选*||string|
|**Query**|**idNumberAddress**  <br>*可选*||string|
|**Query**|**idNumberReginCode**  <br>*可选*||string|
|**Query**|**idNumberReginName**  <br>*可选*||string|
|**Query**|**name**  <br>*可选*||string|
|**Query**|**phone**  <br>*可选*||string|
|**Query**|**reason**  <br>*可选*||string|
|**Query**|**referralCode**  <br>*可选*||string|
|**Query**|**residenceAddress**  <br>*可选*||string|
|**Query**|**residenceReginCode**  <br>*可选*||string|
|**Query**|**residenceReginName**  <br>*可选*||string|
|**Query**|**schoolRegionCode**  <br>*可选*||string|
|**Query**|**schoolRegionName**  <br>*可选*||string|
|**Query**|**sex**  <br>*可选*||string|
|**Query**|**sfType**  <br>*可选*||enum (no, A, C, D, E, F, G, I, Q)|
|**Query**|**signSource**  <br>*可选*||string|
|**Query**|**stayAddreeNumber**  <br>*可选*||string|
|**Query**|**studentMoney**  <br>*可选*||number|
|**Query**|**studentNumber**  <br>*可选*||string|
|**Query**|**studentSource**  <br>*可选*||string|
|**Query**|**studyType**  <br>*可选*||integer (int32)|
|**Query**|**submitStatus**  <br>*可选*||integer (int32)|
|**Query**|**wechatBind**  <br>*可选*||integer (int32)|
|**Query**|**wechatOpenid**  <br>*可选*||string|
|**Query**|**zipCode**  <br>*可选*||string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/add
```


###### 请求 query
```
json :
{
  "birthday" : "string",
  "carCode" : "string",
  "countryCode" : "string",
  "countryName" : "string",
  "currentUserId" : "string",
  "email" : "string",
  "headPic" : "string",
  "id" : 0,
  "idExpiredDate" : "string",
  "idNumber" : "string",
  "idNumberAddress" : "string",
  "idNumberReginCode" : "string",
  "idNumberReginName" : "string",
  "name" : "string",
  "phone" : "string",
  "reason" : "string",
  "referralCode" : "string",
  "residenceAddress" : "string",
  "residenceReginCode" : "string",
  "residenceReginName" : "string",
  "schoolRegionCode" : "string",
  "schoolRegionName" : "string",
  "sex" : "string",
  "sfType" : "string",
  "signSource" : "string",
  "stayAddreeNumber" : "string",
  "studentMoney" : 0.0,
  "studentNumber" : "string",
  "studentSource" : "string",
  "studyType" : 0,
  "submitStatus" : 0,
  "wechatBind" : 0,
  "wechatOpenid" : "string",
  "zipCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="areacityusingget"></a>
#### 本地或者非本地地址查询
```
GET /api/student/areaCity
```


##### 说明
本地或者非本地地址查询


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityName**  <br>*可选*||string|
|**Query**|**currentUserId**  <br>*必填*|用户id不能为空|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«AreaVo»»](#54c9cdf5132802ab48f43514c3d4a884)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/areaCity
```


###### 请求 query
```
json :
{
  "cityName" : "string",
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "code" : "string",
      "name" : "string",
      "status" : 0
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="delstudentusingget"></a>
#### 学员删除
```
GET /api/student/delStudent
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**ids[]**  <br>*可选*|ids[]|< integer (int64) > array(multi)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/delStudent
```


###### 请求 query
```
json :
{
  "ids[]" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="initbasedatausingget"></a>
#### initBaseData
```
GET /api/student/getBaseData
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**studentId**  <br>*可选*|studentId|integer (int64)|`0`|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«StudentBaseDataVo»](#b052ba1fc462cca3c1f69b5d68eda27f)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/getBaseData
```


###### 请求 query
```
json :
{
  "studentId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "areaList" : [ {
      "code" : "string",
      "name" : "string",
      "status" : 0
    } ],
    "carTypeList" : [ {
      "code" : "string",
      "name" : "string",
      "parentId" : 0,
      "type" : 0
    } ],
    "countryList" : [ {
      "code" : "string",
      "name" : "string",
      "parentId" : 0,
      "type" : 0
    } ],
    "djsList" : [ {
      "code" : "string",
      "name" : "string",
      "status" : 0
    } ],
    "schoolName" : "string",
    "studentNumber" : "string",
    "zjTypeList" : [ {
      "code" : "string",
      "name" : "string",
      "parentId" : 0,
      "type" : 0
    } ],
    "zsList" : [ {
      "code" : "string",
      "name" : "string",
      "status" : 0
    } ]
  },
  "message" : "string"
}
```


<a name="getbystudentidpictureusingget"></a>
#### 根据学员ID查询报考电子信息
```
GET /api/student/getByStudentIdPicture
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**studentId**  <br>*可选*|studentId|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«List«StudentPictureVo»»](#fea52be31cdd318c63fba263ad19a67f)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/getByStudentIdPicture
```


###### 请求 query
```
json :
{
  "studentId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : [ {
    "created" : "string",
    "exportTime" : "string",
    "fileId" : 0,
    "id" : 0,
    "sendTime" : "string",
    "status" : "string",
    "statusName" : "string",
    "studentId" : 0,
    "type" : "string",
    "typeName" : "string",
    "updated" : "string",
    "uploadTime" : "string"
  } ],
  "message" : "string"
}
```


<a name="getbystudentidwaringusingget"></a>
#### 学员预警信息查询
```
GET /api/student/getByStudentIdWaring
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*必填*|用户id不能为空|string|
|**Query**|**pageIndex**  <br>*必填*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*必填*|每页查询数量|integer (int32)|
|**Query**|**studentId**  <br>*必填*|学员Id|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«StudentWaringVo»»](#d2ae4d60641a053b1f72ebbb2af7f53c)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/getByStudentIdWaring
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "studentId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "created" : "string",
      "message" : "string",
      "subject" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="getlaststudentcheckresultbyidusingget"></a>
#### 根据学员ID获取最近一次受理信息
```
GET /api/student/getLastStudentCheckResultById
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**studentId**  <br>*必填*|studentId|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«StudentResultVo»](#a2af9d4f560992563422a96eddb4fed4)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/getLastStudentCheckResultById
```


###### 请求 query
```
json :
{
  "studentId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : { },
  "message" : "string"
}
```


<a name="getnextuseridusingget"></a>
#### 获取下一个学员Id
```
GET /api/student/getNextUserId
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**studentId**  <br>*必填*|studentId|integer (int64)|
|**Query**|**type**  <br>*必填*|type|integer (int32)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«long»](#1b28d0b71fcb7202ab8c02bf351e5312)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### 安全

|类型|名称|
|---|---|
|**未知**|**[TOKEN](#token)**|


##### HTTP请求示例

###### 请求 path
```
/api/student/getNextUserId
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "studentId" : 0,
  "type" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : 0,
  "message" : "string"
}
```


<a name="getstudentallusingget"></a>
#### 学员所有信息查询
```
GET /api/student/getStudentAll
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**carCode**  <br>*可选*||string|
|**Query**|**currentUserId**  <br>*必填*|用户id不能为空|string|
|**Query**|**govStatus**  <br>*可选*||enum (allstate, normal, conclude, retreats, aboutExamOk, aboutExamFail, checkOk, checkFail, certificationOk, certificationFail, fileOk, fileFail)|
|**Query**|**listCode**  <br>*可选*||< string > array(multi)|
|**Query**|**nameOrNum**  <br>*可选*||string|
|**Query**|**netStatus**  <br>*可选*||enum (allstate, onsubmit, yesschool, waitsubmit, noschool, uploadok, uploadon, schoolsubmitOk, signUpOk, signUpFaild)|
|**Query**|**pageIndex**  <br>*必填*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*必填*|每页查询数量|integer (int32)|
|**Query**|**phone**  <br>*可选*||string|
|**Query**|**schoolName**  <br>*可选*||string|
|**Query**|**sfType**  <br>*可选*||string|
|**Query**|**status**  <br>*可选*||enum (allstudent, newenroll, joink1, kone, joink2, k2, joink3, k3, joink4, k4, edd)|
|**Query**|**timeEdd**  <br>*可选*||string (date-time)|
|**Query**|**timeEddName**  <br>*可选*||string|
|**Query**|**timeStart**  <br>*可选*||string (date-time)|
|**Query**|**timeStartName**  <br>*可选*||string|
|**Query**|**timeType**  <br>*可选*||integer (int32)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«StudentInfoAllVo»»](#5f4714648c6de09d4176e14e2c8bcf52)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/getStudentAll
```


###### 请求 query
```
json :
{
  "carCode" : "string",
  "currentUserId" : "string",
  "govStatus" : "string",
  "listCode" : "string",
  "nameOrNum" : "string",
  "netStatus" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "phone" : "string",
  "schoolName" : "string",
  "sfType" : "string",
  "status" : "string",
  "timeEdd" : "string",
  "timeEddName" : "string",
  "timeStart" : "string",
  "timeStartName" : "string",
  "timeType" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "birthday" : "string",
      "carCode" : "string",
      "carCodeName" : "string",
      "countryCode" : "string",
      "countryName" : "string",
      "createdTime" : "string",
      "email" : "string",
      "faceStatus" : "string",
      "faceStatusName" : "string",
      "govStatus" : "string",
      "govStatusName" : "string",
      "headPic" : "string",
      "idExpiredDate" : "string",
      "idNumber" : "string",
      "idNumberAddress" : "string",
      "idNumberReginCode" : "string",
      "idNumberReginName" : "string",
      "name" : "string",
      "netStatus" : "string",
      "netStatusName" : "string",
      "operatorId" : 0,
      "operatorName" : "string",
      "phone" : "string",
      "reason" : "string",
      "referralCode" : "string",
      "residenceAddress" : "string",
      "residenceReginCode" : "string",
      "residenceReginName" : "string",
      "schoolCode" : "string",
      "schoolId" : 0,
      "schoolName" : "string",
      "schoolRegionCode" : "string",
      "schoolRegionName" : "string",
      "sex" : "string",
      "sfType" : "string",
      "sfTypeNames" : "string",
      "signSource" : "string",
      "signTime" : "string",
      "status" : "string",
      "statusName" : "string",
      "stayAddreeNumber" : "string",
      "studentId" : 0,
      "studentMoney" : 0.0,
      "studentNumber" : "string",
      "studentSource" : "string",
      "studyType" : 0,
      "submitTime" : "string",
      "transferStatus" : 0,
      "updatedTime" : "string",
      "wechatBind" : 0,
      "wechatOpenid" : "string",
      "zipCode" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="getstudentbyidinfousingget"></a>
#### 单个学员信息查询
```
GET /api/student/getStudentById
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**studentId**  <br>*必填*|studentId|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«UpdateStudentInfoVo»](#71f9e48c2184c6ad3cc32161e30e2fe1)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### 安全

|类型|名称|
|---|---|
|**未知**|**[TOKEN](#token)**|


##### HTTP请求示例

###### 请求 path
```
/api/student/getStudentById
```


###### 请求 query
```
json :
{
  "studentId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "birthday" : "string",
    "branchName" : "string",
    "carCode" : "string",
    "carCodeName" : "string",
    "countryCode" : "string",
    "countryName" : "string",
    "createdTime" : "string",
    "email" : "string",
    "faceStatus" : "string",
    "faceStatusName" : "string",
    "govStatus" : "string",
    "govStatusName" : "string",
    "headPic" : "string",
    "id" : 0,
    "idExpiredDate" : "string",
    "idNumber" : "string",
    "idNumberAddress" : "string",
    "idNumberReginCode" : "string",
    "idNumberReginName" : "string",
    "isDel" : 0,
    "listPic" : [ {
      "created" : "string",
      "exportTime" : "string",
      "fileId" : 0,
      "id" : 0,
      "sendTime" : "string",
      "status" : "string",
      "statusName" : "string",
      "studentId" : 0,
      "type" : "string",
      "typeName" : "string",
      "updated" : "string",
      "uploadTime" : "string"
    } ],
    "name" : "string",
    "netStatus" : "string",
    "netStatusName" : "string",
    "operatorId" : 0,
    "operatorName" : "string",
    "phone" : "string",
    "reason" : "string",
    "referralCode" : "string",
    "residenceAddress" : "string",
    "residenceReginCode" : "string",
    "residenceReginName" : "string",
    "schoolCode" : "string",
    "schoolId" : 0,
    "schoolName" : "string",
    "schoolRegionCode" : "string",
    "schoolRegionName" : "string",
    "sex" : "string",
    "sfType" : "string",
    "sfTypeNames" : "string",
    "signSource" : "string",
    "signTime" : "string",
    "status" : "string",
    "statusName" : "string",
    "stayAddreeNumber" : "string",
    "studentMoney" : 0.0,
    "studentNumber" : "string",
    "studentSource" : "string",
    "studyType" : 0,
    "submitTime" : "string",
    "transferStatus" : 0,
    "updatedTime" : "string",
    "wechatBind" : 0,
    "wechatOpenid" : "string",
    "zipCode" : "string"
  },
  "message" : "string"
}
```


<a name="querybystudentidhistoryusingget"></a>
#### 查询学员的成绩历史
```
GET /api/student/queryByStudentIdHistory
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*必填*|用户id不能为空|string|
|**Query**|**pageIndex**  <br>*必填*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*必填*|每页查询数量|integer (int32)|
|**Query**|**studentId**  <br>*必填*|学员Id|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«PageBean«StudentFieldHistoryVo»»](#2ca97c07750743711a49538d920bca1f)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/queryByStudentIdHistory
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "studentId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "params" : {
      "string" : "string"
    },
    "records" : [ {
      "degree" : 0,
      "examAddress" : "string",
      "examSubject" : "string",
      "examTime" : "string",
      "fieldStatus" : 0
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updateuserusingpost"></a>
#### 学员信息编辑
```
POST /api/student/update
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**birthday**  <br>*可选*||string|
|**Query**|**carCode**  <br>*可选*||enum (no, A1, A2, A3, B1, B2, C1, C2, C4, C5, D, E, M, N, P, C3, F)|
|**Query**|**countryCode**  <br>*可选*||string|
|**Query**|**countryName**  <br>*可选*||string|
|**Query**|**currentUserId**  <br>*必填*|用户id不能为空|string|
|**Query**|**email**  <br>*可选*||string|
|**Query**|**headPic**  <br>*可选*||string|
|**Query**|**id**  <br>*可选*||integer (int64)|
|**Query**|**idExpiredDate**  <br>*可选*||string|
|**Query**|**idNumber**  <br>*可选*||string|
|**Query**|**idNumberAddress**  <br>*可选*||string|
|**Query**|**idNumberReginCode**  <br>*可选*||string|
|**Query**|**idNumberReginName**  <br>*可选*||string|
|**Query**|**name**  <br>*可选*||string|
|**Query**|**phone**  <br>*可选*||string|
|**Query**|**reason**  <br>*可选*||string|
|**Query**|**referralCode**  <br>*可选*||string|
|**Query**|**residenceAddress**  <br>*可选*||string|
|**Query**|**residenceReginCode**  <br>*可选*||string|
|**Query**|**residenceReginName**  <br>*可选*||string|
|**Query**|**schoolRegionCode**  <br>*可选*||string|
|**Query**|**schoolRegionName**  <br>*可选*||string|
|**Query**|**sex**  <br>*可选*||string|
|**Query**|**sfType**  <br>*可选*||enum (no, A, C, D, E, F, G, I, Q)|
|**Query**|**signSource**  <br>*可选*||string|
|**Query**|**stayAddreeNumber**  <br>*可选*||string|
|**Query**|**studentMoney**  <br>*可选*||number|
|**Query**|**studentNumber**  <br>*可选*||string|
|**Query**|**studentSource**  <br>*可选*||string|
|**Query**|**studyType**  <br>*可选*||integer (int32)|
|**Query**|**submitStatus**  <br>*可选*||integer (int32)|
|**Query**|**wechatBind**  <br>*可选*||integer (int32)|
|**Query**|**wechatOpenid**  <br>*可选*||string|
|**Query**|**zipCode**  <br>*可选*||string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/student/update
```


###### 请求 query
```
json :
{
  "birthday" : "string",
  "carCode" : "string",
  "countryCode" : "string",
  "countryName" : "string",
  "currentUserId" : "string",
  "email" : "string",
  "headPic" : "string",
  "id" : 0,
  "idExpiredDate" : "string",
  "idNumber" : "string",
  "idNumberAddress" : "string",
  "idNumberReginCode" : "string",
  "idNumberReginName" : "string",
  "name" : "string",
  "phone" : "string",
  "reason" : "string",
  "referralCode" : "string",
  "residenceAddress" : "string",
  "residenceReginCode" : "string",
  "residenceReginName" : "string",
  "schoolRegionCode" : "string",
  "schoolRegionName" : "string",
  "sex" : "string",
  "sfType" : "string",
  "signSource" : "string",
  "stayAddreeNumber" : "string",
  "studentMoney" : 0.0,
  "studentNumber" : "string",
  "studentSource" : "string",
  "studyType" : 0,
  "submitStatus" : 0,
  "wechatBind" : 0,
  "wechatOpenid" : "string",
  "zipCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="ecee3ccf0f8930ee20dffcfbbdff16cd"></a>
### 岗位API
Position Controller


<a name="addpositionusingpost_1"></a>
#### 新增岗位
```
POST /api/position/addPosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*必填*|职位代码|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门code|string|
|**Query**|**id**  <br>*可选*|岗位ID|string|
|**Query**|**name**  <br>*可选*|职位名称|string|
|**Query**|**remarks**  <br>*可选*|职位描述|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/position/addPosition
```


###### 请求 query
```
json :
{
  "code" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "id" : "string",
  "name" : "string",
  "remarks" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="delpositionusingpost_1"></a>
#### 删除岗位
```
POST /api/position/delPosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|岗位ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/position/delPosition
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getpositionusingpost_1"></a>
#### 根据岗位id获取信息
```
POST /api/position/getPosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|岗位ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/position/getPosition
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getpositionbydepcodeusingpost_1"></a>
#### 获取部门下的岗位信息
```
POST /api/position/getPositionBydepCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/position/getPositionBydepCode
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querypagebeanusingpost_2"></a>
#### 分页查询
```
POST /api/position/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*可选*|岗位代码|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|
|**Query**|**name**  <br>*可选*|岗位名称|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«岗位职责»»](#aaa59451e3888c2fbd14d819b92b5074)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/position/list
```


###### 请求 query
```
json :
{
  "code" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "name" : "string",
  "pageIndex" : 0,
  "pageSize" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "code" : "string",
      "created" : "string",
      "depCode" : "string",
      "depId" : "string",
      "depName" : "string",
      "id" : 0,
      "name" : "string",
      "operatorName" : "string",
      "remarks" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updatepositionusingpost_1"></a>
#### 修改岗位
```
POST /api/position/updatePosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*必填*|职位代码|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门code|string|
|**Query**|**id**  <br>*必填*|岗位id|integer (int64)|
|**Query**|**name**  <br>*可选*|职位名称|string|
|**Query**|**remarks**  <br>*可选*|职位描述|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/position/updatePosition
```


###### 请求 query
```
json :
{
  "code" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "id" : 0,
  "name" : "string",
  "remarks" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="addpositionusingpost"></a>
#### 新增岗位
```
POST /api/school/position/addPosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*必填*|职位代码|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|总校部门code|string|
|**Query**|**depCodeB**  <br>*必填*|报名点部门code|string|
|**Query**|**depCodeF**  <br>*必填*|分校部门code|string|
|**Query**|**id**  <br>*可选*|岗位ID|string|
|**Query**|**name**  <br>*可选*|职位名称|string|
|**Query**|**remarks**  <br>*可选*|职位描述|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/position/addPosition
```


###### 请求 query
```
json :
{
  "code" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "depCodeB" : "string",
  "depCodeF" : "string",
  "id" : "string",
  "name" : "string",
  "remarks" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="delpositionusingpost"></a>
#### 删除岗位
```
POST /api/school/position/delPosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|岗位ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/position/delPosition
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getpositionusingpost"></a>
#### 根据岗位id获取信息
```
POST /api/school/position/getPosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|岗位ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/position/getPosition
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getpositionbydepcodeusingpost"></a>
#### 获取部门下的岗位信息
```
POST /api/school/position/getPositionBydepCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/position/getPositionBydepCode
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querypagebeanusingpost_1"></a>
#### 所有驾校岗位分页查询
```
POST /api/school/position/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*可选*|岗位代码|string|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|
|**Query**|**name**  <br>*可选*|岗位名称|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«岗位职责»»](#aaa59451e3888c2fbd14d819b92b5074)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/position/list
```


###### 请求 query
```
json :
{
  "code" : "string",
  "depCode" : "string",
  "name" : "string",
  "pageIndex" : 0,
  "pageSize" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "code" : "string",
      "created" : "string",
      "depCode" : "string",
      "depId" : "string",
      "depName" : "string",
      "id" : 0,
      "name" : "string",
      "operatorName" : "string",
      "remarks" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updatepositionusingpost"></a>
#### 修改岗位
```
POST /api/school/position/updatePosition
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*必填*|职位代码|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|部门code|string|
|**Query**|**id**  <br>*必填*|岗位id|integer (int64)|
|**Query**|**name**  <br>*可选*|职位名称|string|
|**Query**|**remarks**  <br>*可选*|职位描述|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/position/updatePosition
```


###### 请求 query
```
json :
{
  "code" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "id" : 0,
  "name" : "string",
  "remarks" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="593f27b260e72d8216fe096bc664fc77"></a>
### 服务接口：通知公告接口
Rpc Notice Controller


<a name="listnoticeusingpost"></a>
#### 查询所有公告列表
```
POST /service/notice/list
```


##### 参数

|类型|名称|说明|类型|默认值|
|---|---|---|---|---|
|**Query**|**fromTime**  <br>*可选*|发布开始时间|string||
|**Query**|**noticeContent**  <br>*可选*|公告内容|string||
|**Query**|**noticeTitle**  <br>*可选*|公告标题|string||
|**Query**|**orgDepCode**  <br>*可选*|组织DepCode|ref||
|**Query**|**pageIndex**  <br>*必填*|当前页|ref|`"1"`|
|**Query**|**pageSize**  <br>*必填*|每页大小|ref|`"20"`|
|**Query**|**toTime**  <br>*可选*|发布截止时间|string||
|**Body**|**params**  <br>*必填*|params|[通知公告查询条件](#f6ce7bf6b367fba23c2fb978bdbd91a1)||


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[PageBean«通知公告详情»](#2c5369e1b58c6306ef5fc6c3a3d642ea)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/notice/list
```


###### 请求 query
```
json :
{
  "fromTime" : "string",
  "noticeContent" : "string",
  "noticeTitle" : "string",
  "orgDepCode" : "ref",
  "pageIndex" : "ref",
  "pageSize" : "ref",
  "toTime" : "string"
}
```


###### 请求 body
```
json :
{
  "pageIndex" : 0,
  "pageSize" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "current" : 0,
  "pages" : 0,
  "params" : {
    "string" : "string"
  },
  "records" : [ { } ],
  "size" : 0,
  "total" : 0
}
```


<a name="listpopnoticeusingpost"></a>
#### 查询所有需要弹窗的公告列表
```
POST /service/notice/listPopNotice
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**orgDepCode**  <br>*可选*|组织DepCode|string|
|**Body**|**params**  <br>*必填*|params|[通知公告查询条件](#f6ce7bf6b367fba23c2fb978bdbd91a1)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|< [通知公告详情](#c4c65e9be72a8af16fca7cff278865c7) > array|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/notice/listPopNotice
```


###### 请求 query
```
json :
{
  "orgDepCode" : "string"
}
```


###### 请求 body
```
json :
{
  "pageIndex" : 0,
  "pageSize" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
[ { } ]
```


<a name="previewnoticeusingpost"></a>
#### 查看公告详情
```
POST /service/notice/preview
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**dataId**  <br>*必填*|公告ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[通知公告](#3163744dbe361887056da8250aadd67a)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/service/notice/preview
```


###### 请求 query
```
json :
{
  "dataId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "createUser" : "string",
  "isDel" : "string",
  "noticeContent" : "string",
  "noticeTitle" : "string",
  "noticeType" : "string",
  "updateUser" : "string"
}
```


<a name="230bb1d450e8094d8d08cd6f62eed1ef"></a>
### 角色API
Role Controller


<a name="addroleaosusingpost"></a>
#### 新增角色---aos
```
POST /api/role/addRoleAos
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**orgList[]**  <br>*可选*|驾校机构组织code集合（数据权限）|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/addRoleAos
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "elementList[]" : "ref",
  "menuList[]" : "ref",
  "orgList[]" : "ref",
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="addroledivistionusingpost"></a>
#### 新增角色---divistion
```
POST /api/role/addRoleDivistion
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**orgList[]**  <br>*可选*|驾校机构组织code集合（数据权限）|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/addRoleDivistion
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "elementList[]" : "ref",
  "menuList[]" : "ref",
  "orgList[]" : "ref",
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="addroleschoolusingpost"></a>
#### 新增角色---school
```
POST /api/role/addRoleSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|角色所属机构code(驾校组织code)|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|
|**Query**|**roleType**  <br>*可选*|字段权限|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/addRoleSchool
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "elementList[]" : "ref",
  "menuList[]" : "ref",
  "roleName" : "string",
  "roleType" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="addroleschoolvirtualusingpost"></a>
#### 新增驾校虚拟角色---school
```
POST /api/role/addRoleSchoolVirtual
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|
|**Query**|**roleType**  <br>*可选*|字段权限|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/addRoleSchoolVirtual
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "elementList[]" : "ref",
  "menuList[]" : "ref",
  "roleName" : "string",
  "roleType" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deleteusingpost"></a>
#### 删除角色
```
POST /api/role/delete
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|角色id|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/delete
```


###### 请求 query
```
json :
{
  "id" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="findmenulistaosusingpost"></a>
#### 获取aos系统菜单元素列表(角色新增)
```
POST /api/role/findMenuListAos
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/findMenuListAos
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="findmenulistdivistionusingpost"></a>
#### 获取divistion系统菜单元素列表(角色新增)
```
POST /api/role/findMenuListDivistion
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/findMenuListDivistion
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="findmenulistschoolusingpost"></a>
#### 获取School系统菜单元素列表(角色新增)
```
POST /api/role/findMenuListSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/findMenuListSchool
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getbyusernameusingpost"></a>
#### 根据当前用户获取角色信息
```
POST /api/role/getByUserName
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/getByUserName
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getmenuaosusingpost"></a>
#### 获取aos系统菜单
```
POST /api/role/getMenuAos
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/getMenuAos
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getmenulistaosusingpost"></a>
#### 获取aos系统菜单列表树
```
POST /api/role/getMenuListAos
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/getMenuListAos
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getmenulistschoolusingpost"></a>
#### 获取驾校系统菜单列表树
```
POST /api/role/getMenuListSchool
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/getMenuListSchool
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getmenuschoolusingpost"></a>
#### 获取驾校系统菜单
```
POST /api/role/getMenuSchool
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/getMenuSchool
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getpermissionmenuusingpost"></a>
#### 根据当前用户获取菜单列表
```
POST /api/role/getPermissionMenu
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/getPermissionMenu
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="listusingpost"></a>
#### 分页查询---aos
```
POST /api/role/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**roleName**  <br>*可选*|角色名称|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/list
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="listdivistionusingpost"></a>
#### 分页查询--车管所
```
POST /api/role/listDivistion
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**roleName**  <br>*可选*|角色名称|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/listDivistion
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="listschoolusingpost"></a>
#### 分页查询--school
```
POST /api/role/listSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**roleName**  <br>*可选*|角色名称|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/listSchool
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querybyidusingpost"></a>
#### 根据角色id查询角色信息
```
POST /api/role/queryById
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|角色id|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/queryById
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateroleaosusingpost"></a>
#### 修改角色---aos
```
POST /api/role/updateRoleAos
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**id**  <br>*可选*|角色id|integer (int64)|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**orgList[]**  <br>*可选*|驾校机构组织code集合（数据权限）|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/updateRoleAos
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "elementList[]" : "ref",
  "id" : 0,
  "menuList[]" : "ref",
  "orgList[]" : "ref",
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateroledivistionusingpost"></a>
#### 修改角色---divistion
```
POST /api/role/updateRoleDivistion
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**id**  <br>*可选*|角色id|integer (int64)|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**orgList[]**  <br>*可选*|驾校机构组织code集合（数据权限）|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/updateRoleDivistion
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "elementList[]" : "ref",
  "id" : 0,
  "menuList[]" : "ref",
  "orgList[]" : "ref",
  "roleName" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateroleschoolusingpost"></a>
#### 修改角色---school
```
POST /api/role/updateRoleSchool
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*必填*|角色所属机构code(驾校组织code)|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**id**  <br>*可选*|角色id|integer (int64)|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|
|**Query**|**roleType**  <br>*可选*|字段权限|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/updateRoleSchool
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "depCode" : "string",
  "elementList[]" : "ref",
  "id" : 0,
  "menuList[]" : "ref",
  "roleName" : "string",
  "roleType" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateroleschoolvirtualusingpost"></a>
#### 修改驾校虚拟角色---school
```
POST /api/role/updateRoleSchoolVirtual
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**comment**  <br>*可选*|备注|string|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**elementList[]**  <br>*必填*|元素ID集合|ref|
|**Query**|**id**  <br>*可选*|角色id|integer (int64)|
|**Query**|**menuList[]**  <br>*必填*|菜单id集合|ref|
|**Query**|**roleName**  <br>*必填*|角色名字唯一|string|
|**Query**|**roleType**  <br>*可选*|字段权限|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/role/updateRoleSchoolVirtual
```


###### 请求 query
```
json :
{
  "comment" : "string",
  "currentUserId" : "string",
  "elementList[]" : "ref",
  "id" : 0,
  "menuList[]" : "ref",
  "roleName" : "string",
  "roleType" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="ec4c40a4e67ecaf57934a17ec6a9536c"></a>
### 车管所接口
Division Controller


<a name="getdivisionbycodeusingpost"></a>
#### 根据城市Code查询车管所
```
POST /api/division/getDivisionByCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**cityCode**  <br>*可选*|cityCode|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/division/getDivisionByCode
```


###### 请求 query
```
json :
{
  "cityCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="0b9af26225b7bf7f101497220bedb9be"></a>
### 车管所用户API
User Controller


<a name="adduserusingpost_1"></a>
#### 新增车管所用户
```
POST /api/division/user/addUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|
|**Query**|**expireDatetime**  <br>*可选*|用户到期时间|string|
|**Query**|**name**  <br>*必填*|用户姓名|string|
|**Query**|**positionId**  <br>*可选*|岗位id|integer (int64)|
|**Query**|**roleId**  <br>*必填*|角色id|string|
|**Query**|**username**  <br>*必填*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/division/user/addUser
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string",
  "expireDatetime" : "string",
  "name" : "string",
  "positionId" : 0,
  "roleId" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deluserusingpost"></a>
#### 删除车管所用户
```
POST /api/division/user/delUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|用户ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/division/user/delUser
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getuseridusingpost"></a>
#### 根据车管所用户id查询
```
POST /api/division/user/getUserId
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*可选*|id|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/division/user/getUserId
```


###### 请求 query
```
json :
{
  "id" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querypagebeanusingpost_3"></a>
#### 车管所用户分页查询
```
POST /api/division/user/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**name**  <br>*可选*|用户姓名|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**username**  <br>*可选*|用户账号|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«部门用户»»](#1158069b4436883924bb77f4345c79eb)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/division/user/list
```


###### 请求 query
```
json :
{
  "name" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "created" : "string",
      "depCode" : "string",
      "depId" : "string",
      "depName" : "string",
      "depType" : "string",
      "id" : 0,
      "name" : "string",
      "operatorName" : "string",
      "parentCode" : "string",
      "positionCode" : "string",
      "positionId" : "string",
      "positionName" : "string",
      "roleId" : 0,
      "username" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="updateuserusingpost_1"></a>
#### 修改车管所用户
```
POST /api/division/user/updateUser
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|
|**Query**|**expireDatetime**  <br>*可选*|用户到期时间|string|
|**Query**|**id**  <br>*必填*|用户ID|string|
|**Query**|**name**  <br>*必填*|用户姓名|string|
|**Query**|**positionId**  <br>*可选*|岗位id|integer (int64)|
|**Query**|**roleId**  <br>*必填*|角色id|string|
|**Query**|**userId**  <br>*可选*|userId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/division/user/updateUser
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "depCode" : "string",
  "expireDatetime" : "string",
  "id" : "string",
  "name" : "string",
  "positionId" : 0,
  "roleId" : "string",
  "userId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="276aab9c2fdfe9f3c2a5b60c3e3d3352"></a>
### 车管所首页数据展示
Division Index Controller


<a name="agecountusingpost"></a>
#### 获取不同年龄段学员的统计
```
POST /api/dividionindex/ageCount
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**date**  <br>*可选*|date|string (date-time)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dividionindex/ageCount
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "date" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="kmcountusingpost"></a>
#### 获取当前登录车管所用户学员在培报名数量-某日
```
POST /api/dividionindex/kmCount
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**date**  <br>*可选*|date|string (date-time)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«KmCountVo»](#4fb2ccbcbbc03569add2e7ffd562a6e8)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dividionindex/kmCount
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "date" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "km1" : 0,
    "km2" : 0,
    "km3" : 0,
    "km4" : 0
  },
  "message" : "string"
}
```


<a name="kmqualifiedusingpost"></a>
#### 获取当前登录车管所用户合格率-某日
```
POST /api/dividionindex/kmQualified
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**date**  <br>*必填*|date|string (date-time)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«KmQualifiedVo»](#4a2efe065dae834e444639d6a66592e4)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dividionindex/kmQualified
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "date" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "km1" : 0.0,
    "km2" : 0.0,
    "km3" : 0.0,
    "km4" : 0.0
  },
  "message" : "string"
}
```


<a name="sexcountusingpost"></a>
#### 获取当前登录车管所用户学员性别比例-某日
```
POST /api/dividionindex/sexCount
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**date**  <br>*可选*|date|string (date-time)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«SexProportionVo»](#59ec9b8773ea2d4e3acde63d8dd05f07)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dividionindex/sexCount
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "date" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "man" : 0.0,
    "woman" : 0.0
  },
  "message" : "string"
}
```


<a name="studentstatisticsusingget"></a>
#### 学员统计
```
GET /api/dividionindex/studentStatistics
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|
|**Query**|**date**  <br>*可选*|date|string (date-time)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«StudentStatisticsVo»»](#acb54df351e77a616cb38e9702510564)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dividionindex/studentStatistics
```


###### 请求 query
```
json :
{
  "currentUserId" : "string",
  "date" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "cityName" : "string",
      "hb" : "string",
      "sort" : 0,
      "studentCount" : 0,
      "tb" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="totalcountusingpost"></a>
#### 获取所有学员
```
POST /api/dividionindex/totalCount
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/dividionindex/totalCount
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="e3724dac8519009e453016f154f8218d"></a>
### 部门组织API
Department Controller


<a name="adddepdepartmentusingpost"></a>
#### 新增部门组织---部门
```
POST /api/department/addDepDepartment
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**params**  <br>*必填*|params|object|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/addDepDepartment
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="deldepusingget"></a>
#### 删除部门组织
```
GET /api/department/delDep
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depId**  <br>*必填*|部门ID|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/delDep
```


###### 请求 query
```
json :
{
  "depId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getdeptreeusingget"></a>
#### 根据部门code获取部门组织树
```
GET /api/department/getDepTree
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/getDepTree
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getdeptreebycodeusingget"></a>
#### 根据部门code获取部门组织树（驾校、分校、报名点）
```
GET /api/department/getDepTreeByCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depCode**  <br>*可选*|depCode|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/getDepTreeByCode
```


###### 请求 query
```
json :
{
  "depCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getdeptreebycodelistusingget"></a>
#### 根据部门code获取部门组织（驾校、分校、报名点）
```
GET /api/department/getDepTreeByCodeList
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depCode**  <br>*可选*|depCode|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/getDepTreeByCodeList
```


###### 请求 query
```
json :
{
  "depCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getdepartmentcodeusingpost"></a>
#### 根据部门code获取部门信息
```
POST /api/department/getDepartmentCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depCode**  <br>*必填*|部门code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/getDepartmentCode
```


###### 请求 query
```
json :
{
  "depCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getrolebyorganizationcodeusingpost"></a>
#### 获取虚拟角色组织角色信息列表
```
POST /api/department/getRoleByOrganizationCode
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/getRoleByOrganizationCode
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="getrolebyorganizationcodedivistionusingpost"></a>
#### 获取车管所角色组织角色信息列表
```
POST /api/department/getRoleByOrganizationCodeDivistion
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/getRoleByOrganizationCodeDivistion
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querybycodeinusingpost"></a>
#### 根据应用code 查询机构id（批量，同步用）
```
POST /api/department/queryByCodeIn
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/queryByCodeIn
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querybyorganizationcodeusingpost"></a>
#### 同步根据当前用户机构code查角色信息列表
```
POST /api/department/queryByOrganizationCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/queryByOrganizationCode
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querybyparentusingpost"></a>
#### 根据当前登录用户获取其所属机构树
```
POST /api/department/queryByParent
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**currentUserId**  <br>*可选*|currentUserId|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/queryByParent
```


###### 请求 query
```
json :
{
  "currentUserId" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="queryrolebyorganizationcodeusingpost"></a>
#### 同步根据机构code查角色信息列表
```
POST /api/department/queryRoleByOrganizationCode
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**organizationCode**  <br>*必填*|部门code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/queryRoleByOrganizationCode
```


###### 请求 query
```
json :
{
  "organizationCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updatedepartmentusingpost"></a>
#### 修改部门组织
```
POST /api/department/updateDepartment
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**params**  <br>*必填*|params|object|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/department/updateDepartment
```


###### 请求 body
```
json :
{ }
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="querypagebeanusingpost"></a>
#### 分页查询
```
POST /api/school/department/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**depCode**  <br>*可选*|部门组织code|string|
|**Query**|**depName**  <br>*可选*|部门名称|string|
|**Query**|**depType**  <br>*必填*|部门类型|string|
|**Query**|**pageIndex**  <br>*可选*|当前页码|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|每页显示条数|integer (int32)|
|**Query**|**parentCode**  <br>*必填*|部门父级code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPage«部门»»](#8f7580b9d81e851d307686be97167d44)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/school/department/list
```


###### 请求 query
```
json :
{
  "depCode" : "string",
  "depName" : "string",
  "depType" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "parentCode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "depCode" : "string",
      "depType" : "string",
      "name" : "string",
      "parentCode" : "string",
      "parentId" : 0
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="b1c2daf645c222eaebddd10f84e9bde7"></a>
### 驾校注册申请记录
Apply School Controller


<a name="gathernamebycodeusingpost"></a>
#### 根据总校代码获取总校名称
```
POST /api/apply/gatherNameByCode
```


##### 说明
根据总校代码获取总校名称


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*必填*|总校Code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«SchoolNameVo»](#3d69b12f3fb5e5ab3194db3857e54879)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/apply/gatherNameByCode
```


###### 请求 query
```
json :
{
  "code" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "code" : "string",
    "id" : 0,
    "name" : "string"
  },
  "message" : "string"
}
```


<a name="gatherinfousingpost"></a>
#### 获取驾校信息
```
POST /api/apply/info
```


##### 说明
获取驾校信息


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|驾校id|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«ApplyInfoVo»](#ca64c005d40c252905de0a47cc5d29a1)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/apply/info
```


###### 请求 query
```
json :
{
  "id" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "address" : "string",
    "areaId" : 0,
    "branchId" : 0,
    "cityId" : 0,
    "code" : "string",
    "contacts" : "string",
    "created" : "string",
    "divisionId" : 0,
    "divisionName" : "string",
    "email" : "string",
    "gatherCode" : "string",
    "gatherId" : 0,
    "gatherName" : "string",
    "id" : 0,
    "licensePics" : "string",
    "licensenumber" : "string",
    "mobile" : "string",
    "name" : "string",
    "parentId" : 0,
    "provinceId" : 0,
    "region" : "string",
    "remark" : "string",
    "schoolPics" : "string",
    "status" : 0,
    "type" : 0,
    "usbKey" : "string"
  },
  "message" : "string"
}
```


<a name="querypagebeanusingget"></a>
#### 驾校注册申请记录分页查询
```
GET /api/apply/list
```


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**areaId**  <br>*可选*|区县ID|integer (int64)|
|**Query**|**cityId**  <br>*可选*|市ID|integer (int64)|
|**Query**|**divisionId**  <br>*可选*|车管所ID|integer (int64)|
|**Query**|**mobile**  <br>*可选*|联系人电话|string|
|**Query**|**name**  <br>*可选*|驾校名称|string|
|**Query**|**pageIndex**  <br>*可选*|分页|integer (int32)|
|**Query**|**pageSize**  <br>*可选*|分页|integer (int32)|
|**Query**|**provinceId**  <br>*可选*|省ID|integer (int64)|
|**Query**|**status**  <br>*可选*|审核状态(Audit:审核中，success：审核成功，fail：审核失败)|enum (audit, success, fail)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«IPageBean«ApplyListVo»»](#251713d73a0856501e527c354482d63a)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/apply/list
```


###### 请求 query
```
json :
{
  "areaId" : 0,
  "cityId" : 0,
  "divisionId" : 0,
  "mobile" : "string",
  "name" : "string",
  "pageIndex" : 0,
  "pageSize" : 0,
  "provinceId" : 0,
  "status" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "current" : 0,
    "pages" : 0,
    "records" : [ {
      "address" : "string",
      "auditdate" : "string",
      "code" : "string",
      "contacts" : "string",
      "created" : "string",
      "divisionName" : "string",
      "id" : 0,
      "mobile" : "string",
      "name" : "string",
      "region" : "string",
      "schoolTypeName" : "string",
      "status" : "string",
      "statusName" : "string",
      "type" : "string"
    } ],
    "size" : 0,
    "total" : 0
  },
  "message" : "string"
}
```


<a name="reviewapplyusingpost"></a>
#### 审核驾校
```
POST /api/apply/reviewApply
```


##### 说明
审核驾校


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*可选*|主键|integer (int64)|
|**Query**|**parentId**  <br>*可选*|上级驾校Id|integer (int64)|
|**Query**|**remark**  <br>*可选*|审核结果反馈|string|
|**Query**|**reviewResult**  <br>*可选*|审核结果|integer (int32)|
|**Query**|**roleId**  <br>*可选*|角色ID|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/api/apply/reviewApply
```


###### 请求 query
```
json :
{
  "id" : 0,
  "parentId" : 0,
  "remark" : "string",
  "reviewResult" : 0,
  "roleId" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="applyschoolusingpost"></a>
#### 申请驾校
```
POST /erp/hl/api/apply/applySchool
```


##### 说明
申请驾校


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**address**  <br>*必填*|详细地址|string|
|**Query**|**areaId**  <br>*必填*|区县ID|integer (int64)|
|**Query**|**cityId**  <br>*必填*|市ID|integer (int64)|
|**Query**|**code**  <br>*必填*|驾校代码|string|
|**Query**|**contacts**  <br>*必填*|联系人|string|
|**Query**|**devicecode**  <br>*可选*|设备编号|string|
|**Query**|**divisionId**  <br>*必填*|车管所ID|integer (int64)|
|**Query**|**email**  <br>*必填*|邮箱|string|
|**Query**|**latitude**  <br>*必填*|纬度|string|
|**Query**|**licensenPics**  <br>*可选*|营业执照图片(1,2,3,4)|string|
|**Query**|**licensenumber**  <br>*可选*|营业执照注册号|string|
|**Query**|**longitude**  <br>*必填*|经度|string|
|**Query**|**mobile**  <br>*必填*|手机号|string|
|**Query**|**name**  <br>*必填*|驾校名称|string|
|**Query**|**parentId**  <br>*可选*|父级驾校ID|integer (int64)|
|**Query**|**password**  <br>*必填*|密码|string|
|**Query**|**provinceId**  <br>*必填*|省ID|integer (int64)|
|**Query**|**schoolPics**  <br>*可选*|图片(1,2,3,4)|string|
|**Query**|**type**  <br>*必填*|类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）|integer (int32)|
|**Query**|**usbKey**  <br>*可选*|USBKEY|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/applySchool
```


###### 请求 query
```
json :
{
  "address" : "string",
  "areaId" : 0,
  "cityId" : 0,
  "code" : "string",
  "contacts" : "string",
  "devicecode" : "string",
  "divisionId" : 0,
  "email" : "string",
  "latitude" : "string",
  "licensenPics" : "string",
  "licensenumber" : "string",
  "longitude" : "string",
  "mobile" : "string",
  "name" : "string",
  "parentId" : 0,
  "password" : "string",
  "provinceId" : 0,
  "schoolPics" : "string",
  "type" : 0,
  "usbKey" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="checkpageoneusingpost"></a>
#### 验证注册第一页（忽略）
```
POST /erp/hl/api/apply/checkPageOne
```


##### 说明
验证注册第一页（忽略）


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*可选*|主键id|integer (int64)|
|**Query**|**licensenumber**  <br>*必填*|营业执照注册号|string|
|**Query**|**name**  <br>*必填*|企业名称|string|
|**Query**|**type**  <br>*必填*|类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）|integer (int32)|
|**Query**|**zxcode**  <br>*可选*|总校代码|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/checkPageOne
```


###### 请求 query
```
json :
{
  "id" : 0,
  "licensenumber" : "string",
  "name" : "string",
  "type" : 0,
  "zxcode" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="checksmsmessageusingpost"></a>
#### 验证验证码-注册驾校
```
POST /erp/hl/api/apply/checkSmsMessage
```


##### 说明
验证验证码-注册驾校


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*可选*|code|string|
|**Query**|**phone**  <br>*可选*|phone|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/checkSmsMessage
```


###### 请求 query
```
json :
{
  "code" : "string",
  "phone" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="gathernamebycodehlusingpost"></a>
#### 根据总校代码获取总校名称（忽略）
```
POST /erp/hl/api/apply/gatherNameByCode
```


##### 说明
根据总校代码获取总校名称（忽略）


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**code**  <br>*必填*|总校Code|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«SchoolNameVo»](#3d69b12f3fb5e5ab3194db3857e54879)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/gatherNameByCode
```


###### 请求 query
```
json :
{
  "code" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "code" : "string",
    "id" : 0,
    "name" : "string"
  },
  "message" : "string"
}
```


<a name="gatherinfohlusingpost"></a>
#### 获取驾校信息(忽略)
```
POST /erp/hl/api/apply/info
```


##### 说明
获取驾校信息


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*必填*|驾校id|integer (int64)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity«ApplyInfoVo»](#ca64c005d40c252905de0a47cc5d29a1)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/info
```


###### 请求 query
```
json :
{
  "id" : 0
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : {
    "address" : "string",
    "areaId" : 0,
    "branchId" : 0,
    "cityId" : 0,
    "code" : "string",
    "contacts" : "string",
    "created" : "string",
    "divisionId" : 0,
    "divisionName" : "string",
    "email" : "string",
    "gatherCode" : "string",
    "gatherId" : 0,
    "gatherName" : "string",
    "id" : 0,
    "licensePics" : "string",
    "licensenumber" : "string",
    "mobile" : "string",
    "name" : "string",
    "parentId" : 0,
    "provinceId" : 0,
    "region" : "string",
    "remark" : "string",
    "schoolPics" : "string",
    "status" : 0,
    "type" : 0,
    "usbKey" : "string"
  },
  "message" : "string"
}
```


<a name="queryresultusingpost"></a>
#### 查询审核结果
```
POST /erp/hl/api/apply/queryResult
```


##### 说明
查询审核结果


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Body**|**loginUserRo**  <br>*必填*|loginUserRo|[LoginUserRo](#loginuserro)|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/queryResult
```


###### 请求 body
```
json :
{
  "password" : "string",
  "username" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="sendsmsmessageusingpost"></a>
#### 发送验证码-注册驾校
```
POST /erp/hl/api/apply/sendSmsMessage
```


##### 说明
发送验证码-注册驾校


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**id**  <br>*可选*|id|string|
|**Query**|**phone**  <br>*可选*|phone|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/sendSmsMessage
```


###### 请求 query
```
json :
{
  "id" : "string",
  "phone" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="updateapplyschoolusingpost"></a>
#### 修改申请-驾校
```
POST /erp/hl/api/apply/updateApplySchool
```


##### 说明
修改申请-驾 校


##### 参数

|类型|名称|说明|类型|
|---|---|---|---|
|**Query**|**address**  <br>*必填*|详细地址|string|
|**Query**|**areaId**  <br>*必填*|区县ID|integer (int64)|
|**Query**|**cityId**  <br>*必填*|市ID|integer (int64)|
|**Query**|**code**  <br>*必填*|驾校代码|string|
|**Query**|**contacts**  <br>*必填*|联系人|string|
|**Query**|**devicecode**  <br>*可选*|设备编号|string|
|**Query**|**divisionId**  <br>*必填*|车管所ID|integer (int64)|
|**Query**|**email**  <br>*必填*|邮箱|string|
|**Query**|**id**  <br>*必填*|主键）|integer (int64)|
|**Query**|**latitude**  <br>*必填*|纬度|string|
|**Query**|**licensenPics**  <br>*可选*|营业执照图片(1,2,3,4)|string|
|**Query**|**licensenumber**  <br>*可选*|营业执照注册号|string|
|**Query**|**longitude**  <br>*必填*|经度|string|
|**Query**|**mobile**  <br>*必填*|手机号|string|
|**Query**|**name**  <br>*必填*|驾校名称|string|
|**Query**|**parentId**  <br>*可选*|父级驾校ID|integer (int64)|
|**Query**|**password**  <br>*必填*|密码|string|
|**Query**|**provinceId**  <br>*必填*|省ID|integer (int64)|
|**Query**|**schoolPics**  <br>*可选*|图片(1,2,3,4)|string|
|**Query**|**type**  <br>*必填*|类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）|integer (int32)|
|**Query**|**usbKey**  <br>*可选*|USBKEY|string|


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|[ResultEntity](#resultentity)|
|**201**|Created|无内容|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `*/*`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/apply/updateApplySchool
```


###### 请求 query
```
json :
{
  "address" : "string",
  "areaId" : 0,
  "cityId" : 0,
  "code" : "string",
  "contacts" : "string",
  "devicecode" : "string",
  "divisionId" : 0,
  "email" : "string",
  "id" : 0,
  "latitude" : "string",
  "licensenPics" : "string",
  "licensenumber" : "string",
  "longitude" : "string",
  "mobile" : "string",
  "name" : "string",
  "parentId" : 0,
  "password" : "string",
  "provinceId" : 0,
  "schoolPics" : "string",
  "type" : 0,
  "usbKey" : "string"
}
```


##### HTTP响应示例

###### 响应 200
```
json :
{
  "code" : 0,
  "data" : "object",
  "message" : "string"
}
```


<a name="3317aa06e5ff3ad46b0ff811354f9648"></a>
### 验证码API
Captcha Controller


<a name="getcaptchausingget"></a>
#### getCaptcha
```
GET /erp/hl/api/captcha/getcaptcha
```


##### 响应

|HTTP代码|说明|类型|
|---|---|---|
|**200**|OK|string (byte)|
|**401**|Unauthorized|无内容|
|**403**|Forbidden|无内容|
|**404**|Not Found|无内容|


##### 消耗

* `application/json`


##### 生成

* `image/png`


##### HTTP请求示例

###### 请求 path
```
/erp/hl/api/captcha/getcaptcha
```


##### HTTP响应示例

###### 响应 200
```
json :
"string"
```




<a name="definitions"></a>
## 定义

<a name="applyinfovo"></a>
### ApplyInfoVo

|名称|说明|类型|
|---|---|---|
|**address**  <br>*可选*|详细地址  <br>**样例** : `"string"`|string|
|**areaId**  <br>*可选*|区县ID  <br>**样例** : `0`|integer (int64)|
|**branchId**  <br>*可选*|分校ID  <br>**样例** : `0`|integer (int64)|
|**cityId**  <br>*可选*|市ID  <br>**样例** : `0`|integer (int64)|
|**code**  <br>*可选*|驾校代码  <br>**样例** : `"string"`|string|
|**contacts**  <br>*可选*|联系人  <br>**样例** : `"string"`|string|
|**created**  <br>*可选*|申请时间  <br>**样例** : `"string"`|string (date-time)|
|**divisionId**  <br>*可选*|分所ID  <br>**样例** : `0`|integer (int64)|
|**divisionName**  <br>*可选*|车管所名称  <br>**样例** : `"string"`|string|
|**email**  <br>*可选*|邮箱  <br>**样例** : `"string"`|string|
|**gatherCode**  <br>*可选*|总校代码  <br>**样例** : `"string"`|string|
|**gatherId**  <br>*可选*|总校ID  <br>**样例** : `0`|integer (int64)|
|**gatherName**  <br>*可选*|总校名称  <br>**样例** : `"string"`|string|
|**id**  <br>*可选*|主键  <br>**样例** : `0`|integer (int64)|
|**licensePics**  <br>*可选*|驾校图片ID  (   1,2,3,4,5  )  <br>**样例** : `"string"`|string|
|**licensenumber**  <br>*可选*|营业执照注册号  <br>**样例** : `"string"`|string|
|**mobile**  <br>*可选*|手机号  <br>**样例** : `"string"`|string|
|**name**  <br>*可选*|驾校名称  <br>**样例** : `"string"`|string|
|**parentId**  <br>*可选*|父级驾校ID  <br>**样例** : `0`|integer (int64)|
|**provinceId**  <br>*可选*|省ID  <br>**样例** : `0`|integer (int64)|
|**region**  <br>*可选*|区域  <br>**样例** : `"string"`|string|
|**remark**  <br>*可选*|审核结果反馈  <br>**样例** : `"string"`|string|
|**schoolPics**  <br>*可选*|驾校图片ID  (   1,2,3,4,5  )  <br>**样例** : `"string"`|string|
|**status**  <br>*可选*|审核状态（1：审核中；2：审核成功；3：审核失败）  <br>**样例** : `0`|integer (int32)|
|**type**  <br>*可选*|类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）  <br>**样例** : `0`|integer (int32)|
|**usbKey**  <br>*可选*|122usbKey  <br>**样例** : `"string"`|string|


<a name="applylistvo"></a>
### ApplyListVo

|名称|说明|类型|
|---|---|---|
|**address**  <br>*可选*|详细地址  <br>**样例** : `"string"`|string|
|**auditdate**  <br>*可选*|审核时间  <br>**样例** : `"string"`|string (date-time)|
|**code**  <br>*可选*|驾校代码  <br>**样例** : `"string"`|string|
|**contacts**  <br>*可选*|联系人  <br>**样例** : `"string"`|string|
|**created**  <br>*可选*|创建时间  <br>**样例** : `"string"`|string (date-time)|
|**divisionName**  <br>*可选*|所属管辖  <br>**样例** : `"string"`|string|
|**id**  <br>*可选*|**样例** : `0`|integer (int64)|
|**mobile**  <br>*可选*|手机号  <br>**样例** : `"string"`|string|
|**name**  <br>*可选*|驾校名称  <br>**样例** : `"string"`|string|
|**region**  <br>*可选*|区域  <br>**样例** : `"string"`|string|
|**schoolTypeName**  <br>*可选*|**样例** : `"string"`|string|
|**status**  <br>*可选*|状态  <br>**样例** : `"string"`|enum (audit, success, fail)|
|**statusName**  <br>*可选*|**样例** : `"string"`|string|
|**type**  <br>*可选*|类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）  <br>**样例** : `"string"`|enum (gather, notgather, branch, registers)|


<a name="areavo"></a>
### AreaVo

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|区县code  <br>**样例** : `"string"`|string|
|**name**  <br>*可选*|区县名称  <br>**样例** : `"string"`|string|
|**status**  <br>*可选*|是否选中（0：未选中，1：选中）  <br>**样例** : `0`|integer (int32)|


<a name="checkresultimportrecord"></a>
### CheckResultImportRecord
*类型* : object


<a name="checkresultimportrecorddetail"></a>
### CheckResultImportRecordDetail
*类型* : object


<a name="exportfield"></a>
### ExportField
*类型* : object


<a name="exportfile"></a>
### ExportFile
*类型* : object


<a name="exportrecord"></a>
### ExportRecord
*类型* : object


<a name="exportrecorddetail"></a>
### ExportRecordDetail

|名称|说明|类型|
|---|---|---|
|**fileTypeName**  <br>*可选*|**样例** : `"string"`|string|


<a name="exportrecordstatistics"></a>
### ExportRecordStatistics

|名称|说明|类型|
|---|---|---|
|**dataType**  <br>*可选*|统计的数据类型： 1为成功数据；2为失败数据  <br>**样例** : `"string"`|enum (success, fail)|


<a name="efbd16bee899068bb7ad42b0ee089f56"></a>
### IPageBean«ApplyListVo»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**records**  <br>*可选*|**样例** : `[ "[applylistvo](#applylistvo)" ]`|< [ApplyListVo](#applylistvo) > array|
|**size**  <br>*可选*|**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|**样例** : `0`|integer (int64)|


<a name="64d8f5a83d8f31e0a2cf705ba018104c"></a>
### IPage«StudentStatisticsVo»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**records**  <br>*可选*|**样例** : `[ "[studentstatisticsvo](#studentstatisticsvo)" ]`|< [StudentStatisticsVo](#studentstatisticsvo) > array|
|**size**  <br>*可选*|**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|**样例** : `0`|integer (int64)|


<a name="687cf45df88f349d36cca7e44bbd9936"></a>
### IPage«岗位职责»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**records**  <br>*可选*|**样例** : `[ "[20a4e938761b3a69b507b50096bc601b](#20a4e938761b3a69b507b50096bc601b)" ]`|< [岗位职责](#20a4e938761b3a69b507b50096bc601b) > array|
|**size**  <br>*可选*|**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|**样例** : `0`|integer (int64)|


<a name="e0748b97ff01ff28fccbc160133f9263"></a>
### IPage«部门»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**records**  <br>*可选*|**样例** : `[ "[1e1459eeed6da94506631a690c7efeab](#1e1459eeed6da94506631a690c7efeab)" ]`|< [部门](#1e1459eeed6da94506631a690c7efeab) > array|
|**size**  <br>*可选*|**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|**样例** : `0`|integer (int64)|


<a name="2629894ed0b4f529f525a7da699ac593"></a>
### IPage«部门用户»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**records**  <br>*可选*|**样例** : `[ "[bd7368b7ca6bc84e4438ee5070f224b4](#bd7368b7ca6bc84e4438ee5070f224b4)" ]`|< [部门用户](#bd7368b7ca6bc84e4438ee5070f224b4) > array|
|**size**  <br>*可选*|**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|**样例** : `0`|integer (int64)|


<a name="kmcountvo"></a>
### KmCountVo

|名称|说明|类型|
|---|---|---|
|**km1**  <br>*可选*|科目1  <br>**样例** : `0`|integer (int64)|
|**km2**  <br>*可选*|科目2  <br>**样例** : `0`|integer (int64)|
|**km3**  <br>*可选*|科目3  <br>**样例** : `0`|integer (int64)|
|**km4**  <br>*可选*|科目4  <br>**样例** : `0`|integer (int64)|


<a name="kmqualifiedvo"></a>
### KmQualifiedVo

|名称|说明|类型|
|---|---|---|
|**km1**  <br>*可选*|科目1  <br>**样例** : `0.0`|number (double)|
|**km2**  <br>*可选*|科目2  <br>**样例** : `0.0`|number (double)|
|**km3**  <br>*可选*|科目3  <br>**样例** : `0.0`|number (double)|
|**km4**  <br>*可选*|科目4  <br>**样例** : `0.0`|number (double)|


<a name="loginresultro"></a>
### LoginResultRo

|名称|说明|类型|
|---|---|---|
|**id**  <br>*可选*|主键  <br>**样例** : `0`|integer (int64)|
|**remark**  <br>*可选*|审核结果反馈  <br>**样例** : `"string"`|string|
|**status**  <br>*可选*|审核状态（1：审核中；2：审核成功；3：审核失败）  <br>**样例** : `0`|integer (int32)|


<a name="loginuserro"></a>
### LoginUserRo

|名称|说明|类型|
|---|---|---|
|**password**  <br>*必填*|密码  <br>**样例** : `"string"`|string|
|**username**  <br>*必填*|用户名  <br>**样例** : `"string"`|string|


<a name="140608caa544219e3a96f36634846cdf"></a>
### PageBean«AreaVo»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[areavo](#areavo)" ]`|< [AreaVo](#areavo) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="215359e91835438e9fc6679a94e996b4"></a>
### PageBean«CheckResultImportRecordDetail»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[checkresultimportrecorddetail](#checkresultimportrecorddetail)" ]`|< [CheckResultImportRecordDetail](#checkresultimportrecorddetail) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="7ea48df8798b726ee63b3615ab324e2b"></a>
### PageBean«CheckResultImportRecord»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[checkresultimportrecord](#checkresultimportrecord)" ]`|< [CheckResultImportRecord](#checkresultimportrecord) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="c572e4032545804d132940908669da19"></a>
### PageBean«ExportRecordDetail»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[exportrecorddetail](#exportrecorddetail)" ]`|< [ExportRecordDetail](#exportrecorddetail) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="d327bd27a2d8d337da453900c268bb36"></a>
### PageBean«ExportRecord»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[exportrecord](#exportrecord)" ]`|< [ExportRecord](#exportrecord) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="626d639286e3fd9e1542c5e8246354ae"></a>
### PageBean«StudentFieldHistoryVo»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[studentfieldhistoryvo](#studentfieldhistoryvo)" ]`|< [StudentFieldHistoryVo](#studentfieldhistoryvo) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="0fb05e93d81e7ed721fc1b27222b5ab9"></a>
### PageBean«StudentInfoAllVo»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[studentinfoallvo](#studentinfoallvo)" ]`|< [StudentInfoAllVo](#studentinfoallvo) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="2164024c423c68b0575a98d98aaaace9"></a>
### PageBean«StudentWaringVo»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[studentwaringvo](#studentwaringvo)" ]`|< [StudentWaringVo](#studentwaringvo) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="c60ab2dc8907c9c72bfb6476855b6678"></a>
### PageBean«模板详情»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[c2003199815551e8d762ff9e306f4777](#c2003199815551e8d762ff9e306f4777)" ]`|< [模板详情](#c2003199815551e8d762ff9e306f4777) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="bc2b1a05db83e003afcad70071e248f3"></a>
### PageBean«消息发送记录»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[88848ca782d12a3598374b80a09918e3](#88848ca782d12a3598374b80a09918e3)" ]`|< [消息发送记录](#88848ca782d12a3598374b80a09918e3) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="1a1d78e4031d4ebf85827936fb99a91a"></a>
### PageBean«消息待发记录»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[98af0f77b91ce9a6e163551d7b16f893](#98af0f77b91ce9a6e163551d7b16f893)" ]`|< [消息待发记录](#98af0f77b91ce9a6e163551d7b16f893) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="2c5369e1b58c6306ef5fc6c3a3d642ea"></a>
### PageBean«通知公告详情»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[c4c65e9be72a8af16fca7cff278865c7](#c4c65e9be72a8af16fca7cff278865c7)" ]`|< [通知公告详情](#c4c65e9be72a8af16fca7cff278865c7) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="3d613d37da1ea9d5d5f57a183a417d96"></a>
### PageBean«驾校合同»

|名称|说明|类型|
|---|---|---|
|**current**  <br>*可选*|当前页，从1开始  <br>**样例** : `0`|integer (int64)|
|**pages**  <br>*可选*|**样例** : `0`|integer (int64)|
|**params**  <br>*可选*|**样例** : `{<br>  "string" : "string"<br>}`|< string, string > map|
|**records**  <br>*可选*|记录数据列表  <br>**样例** : `[ "[b6ffe4f1549818afd27c0033bc8e2b43](#b6ffe4f1549818afd27c0033bc8e2b43)" ]`|< [驾校合同](#b6ffe4f1549818afd27c0033bc8e2b43) > array|
|**size**  <br>*可选*|每页显示条数，默认 10  <br>**样例** : `0`|integer (int64)|
|**total**  <br>*可选*|总记录数  <br>**样例** : `0`|integer (int64)|


<a name="resultentity"></a>
### ResultEntity

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"object"`|object|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="ca64c005d40c252905de0a47cc5d29a1"></a>
### ResultEntity«ApplyInfoVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[applyinfovo](#applyinfovo)"`|[ApplyInfoVo](#applyinfovo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="251713d73a0856501e527c354482d63a"></a>
### ResultEntity«IPageBean«ApplyListVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[efbd16bee899068bb7ad42b0ee089f56](#efbd16bee899068bb7ad42b0ee089f56)"`|[IPageBean«ApplyListVo»](#efbd16bee899068bb7ad42b0ee089f56)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="acb54df351e77a616cb38e9702510564"></a>
### ResultEntity«IPage«StudentStatisticsVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[64d8f5a83d8f31e0a2cf705ba018104c](#64d8f5a83d8f31e0a2cf705ba018104c)"`|[IPage«StudentStatisticsVo»](#64d8f5a83d8f31e0a2cf705ba018104c)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="aaa59451e3888c2fbd14d819b92b5074"></a>
### ResultEntity«IPage«岗位职责»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[687cf45df88f349d36cca7e44bbd9936](#687cf45df88f349d36cca7e44bbd9936)"`|[IPage«岗位职责»](#687cf45df88f349d36cca7e44bbd9936)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="8f7580b9d81e851d307686be97167d44"></a>
### ResultEntity«IPage«部门»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[e0748b97ff01ff28fccbc160133f9263](#e0748b97ff01ff28fccbc160133f9263)"`|[IPage«部门»](#e0748b97ff01ff28fccbc160133f9263)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="1158069b4436883924bb77f4345c79eb"></a>
### ResultEntity«IPage«部门用户»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[2629894ed0b4f529f525a7da699ac593](#2629894ed0b4f529f525a7da699ac593)"`|[IPage«部门用户»](#2629894ed0b4f529f525a7da699ac593)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="4fb2ccbcbbc03569add2e7ffd562a6e8"></a>
### ResultEntity«KmCountVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[kmcountvo](#kmcountvo)"`|[KmCountVo](#kmcountvo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="4a2efe065dae834e444639d6a66592e4"></a>
### ResultEntity«KmQualifiedVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[kmqualifiedvo](#kmqualifiedvo)"`|[KmQualifiedVo](#kmqualifiedvo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="12c5b5d2ec41e6e80e8a70e02e53792f"></a>
### ResultEntity«List«ExportField»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[exportfield](#exportfield)" ]`|< [ExportField](#exportfield) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="5aec34896383bcaaee6e4e16fe8fc25f"></a>
### ResultEntity«List«ExportFile»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[exportfile](#exportfile)" ]`|< [ExportFile](#exportfile) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="f5e8366d776e0659e17df26db1ef51dc"></a>
### ResultEntity«List«ExportRecordStatistics»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[exportrecordstatistics](#exportrecordstatistics)" ]`|< [ExportRecordStatistics](#exportrecordstatistics) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="fea52be31cdd318c63fba263ad19a67f"></a>
### ResultEntity«List«StudentPictureVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[studentpicturevo](#studentpicturevo)" ]`|< [StudentPictureVo](#studentpicturevo) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="3c5e4b6061d3de129739ac9693b0ea7b"></a>
### ResultEntity«List«区域信息»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[d2b776fad6c2659a542aed83b719eeaf](#d2b776fad6c2659a542aed83b719eeaf)" ]`|< [区域信息](#d2b776fad6c2659a542aed83b719eeaf) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="08d3d84c1ad363a8ecacbe53e2c0b46d"></a>
### ResultEntity«List«消息模板参数项配置»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[a6e659298e241680eab025692c211cb8](#a6e659298e241680eab025692c211cb8)" ]`|< [消息模板参数项配置](#a6e659298e241680eab025692c211cb8) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="c3cb6745abcff4aedd3222c8aa50d26b"></a>
### ResultEntity«List«驾校信息»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `[ "[320860f68b4849f8075ead9b83193b4c](#320860f68b4849f8075ead9b83193b4c)" ]`|< [驾校信息](#320860f68b4849f8075ead9b83193b4c) > array|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="0856ad78f52baf3238a0dd6763e38bd9"></a>
### ResultEntity«Map«string,object»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"object"`|object|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="54c9cdf5132802ab48f43514c3d4a884"></a>
### ResultEntity«PageBean«AreaVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[140608caa544219e3a96f36634846cdf](#140608caa544219e3a96f36634846cdf)"`|[PageBean«AreaVo»](#140608caa544219e3a96f36634846cdf)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="e32f1b39e2c7aaac278482b2ab83cf52"></a>
### ResultEntity«PageBean«CheckResultImportRecordDetail»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[215359e91835438e9fc6679a94e996b4](#215359e91835438e9fc6679a94e996b4)"`|[PageBean«CheckResultImportRecordDetail»](#215359e91835438e9fc6679a94e996b4)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="1fe97135d5cc3132a47ff8fe73e6661a"></a>
### ResultEntity«PageBean«CheckResultImportRecord»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[7ea48df8798b726ee63b3615ab324e2b](#7ea48df8798b726ee63b3615ab324e2b)"`|[PageBean«CheckResultImportRecord»](#7ea48df8798b726ee63b3615ab324e2b)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="1fb4f838a8d3f95e6d38719d21ede679"></a>
### ResultEntity«PageBean«ExportRecordDetail»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[c572e4032545804d132940908669da19](#c572e4032545804d132940908669da19)"`|[PageBean«ExportRecordDetail»](#c572e4032545804d132940908669da19)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="937609414cb612d32539d6d327905a0a"></a>
### ResultEntity«PageBean«ExportRecord»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[d327bd27a2d8d337da453900c268bb36](#d327bd27a2d8d337da453900c268bb36)"`|[PageBean«ExportRecord»](#d327bd27a2d8d337da453900c268bb36)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="2ca97c07750743711a49538d920bca1f"></a>
### ResultEntity«PageBean«StudentFieldHistoryVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[626d639286e3fd9e1542c5e8246354ae](#626d639286e3fd9e1542c5e8246354ae)"`|[PageBean«StudentFieldHistoryVo»](#626d639286e3fd9e1542c5e8246354ae)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="5f4714648c6de09d4176e14e2c8bcf52"></a>
### ResultEntity«PageBean«StudentInfoAllVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[0fb05e93d81e7ed721fc1b27222b5ab9](#0fb05e93d81e7ed721fc1b27222b5ab9)"`|[PageBean«StudentInfoAllVo»](#0fb05e93d81e7ed721fc1b27222b5ab9)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="d2ae4d60641a053b1f72ebbb2af7f53c"></a>
### ResultEntity«PageBean«StudentWaringVo»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[2164024c423c68b0575a98d98aaaace9](#2164024c423c68b0575a98d98aaaace9)"`|[PageBean«StudentWaringVo»](#2164024c423c68b0575a98d98aaaace9)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="2208c07c5b019bc8fc12cd486cc13e5a"></a>
### ResultEntity«PageBean«模板详情»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[c60ab2dc8907c9c72bfb6476855b6678](#c60ab2dc8907c9c72bfb6476855b6678)"`|[PageBean«模板详情»](#c60ab2dc8907c9c72bfb6476855b6678)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="cb1fe8d2d0f6c7dbd8e26069546c5f1e"></a>
### ResultEntity«PageBean«消息发送记录»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[bc2b1a05db83e003afcad70071e248f3](#bc2b1a05db83e003afcad70071e248f3)"`|[PageBean«消息发送记录»](#bc2b1a05db83e003afcad70071e248f3)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="d284f34379694931c7b5f7ce60adfda8"></a>
### ResultEntity«PageBean«消息待发记录»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[1a1d78e4031d4ebf85827936fb99a91a](#1a1d78e4031d4ebf85827936fb99a91a)"`|[PageBean«消息待发记录»](#1a1d78e4031d4ebf85827936fb99a91a)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="46b63592ef8355e3801ae7efae154315"></a>
### ResultEntity«PageBean«通知公告详情»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[2c5369e1b58c6306ef5fc6c3a3d642ea](#2c5369e1b58c6306ef5fc6c3a3d642ea)"`|[PageBean«通知公告详情»](#2c5369e1b58c6306ef5fc6c3a3d642ea)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="c5d5c60fa59ab689e17b80fea34c2cf8"></a>
### ResultEntity«PageBean«驾校合同»»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[3d613d37da1ea9d5d5f57a183a417d96](#3d613d37da1ea9d5d5f57a183a417d96)"`|[PageBean«驾校合同»](#3d613d37da1ea9d5d5f57a183a417d96)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="3d69b12f3fb5e5ab3194db3857e54879"></a>
### ResultEntity«SchoolNameVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[schoolnamevo](#schoolnamevo)"`|[SchoolNameVo](#schoolnamevo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="59ec9b8773ea2d4e3acde63d8dd05f07"></a>
### ResultEntity«SexProportionVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[sexproportionvo](#sexproportionvo)"`|[SexProportionVo](#sexproportionvo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="b052ba1fc462cca3c1f69b5d68eda27f"></a>
### ResultEntity«StudentBaseDataVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[studentbasedatavo](#studentbasedatavo)"`|[StudentBaseDataVo](#studentbasedatavo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="a2af9d4f560992563422a96eddb4fed4"></a>
### ResultEntity«StudentResultVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[studentresultvo](#studentresultvo)"`|[StudentResultVo](#studentresultvo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="71f9e48c2184c6ad3cc32161e30e2fe1"></a>
### ResultEntity«UpdateStudentInfoVo»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[updatestudentinfovo](#updatestudentinfovo)"`|[UpdateStudentInfoVo](#updatestudentinfovo)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="1b28d0b71fcb7202ab8c02bf351e5312"></a>
### ResultEntity«long»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `0`|integer (int64)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="d1c8dc2fdbb2d74e2044af57aed6506c"></a>
### ResultEntity«string»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"string"`|string|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="91c604b83052efe361db8a16caf7d40b"></a>
### ResultEntity«模板详情»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[c2003199815551e8d762ff9e306f4777](#c2003199815551e8d762ff9e306f4777)"`|[模板详情](#c2003199815551e8d762ff9e306f4777)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="b253f4697dac9a03391a7fa39495f15d"></a>
### ResultEntity«通知公告»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[3163744dbe361887056da8250aadd67a](#3163744dbe361887056da8250aadd67a)"`|[通知公告](#3163744dbe361887056da8250aadd67a)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="2557cb64142fd37fbe39b100e7cdfaf7"></a>
### ResultEntity«通知公告详情»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[c4c65e9be72a8af16fca7cff278865c7](#c4c65e9be72a8af16fca7cff278865c7)"`|[通知公告详情](#c4c65e9be72a8af16fca7cff278865c7)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="a4394559c7c921a5fb60ec539e153a24"></a>
### ResultEntity«驾校合同详情»

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|**样例** : `0`|integer (int32)|
|**data**  <br>*可选*|**样例** : `"[190cdefe87ec61f81eecd1f0e208c822](#190cdefe87ec61f81eecd1f0e208c822)"`|[驾校合同详情](#190cdefe87ec61f81eecd1f0e208c822)|
|**message**  <br>*可选*|**样例** : `"string"`|string|


<a name="schoolnamevo"></a>
### SchoolNameVo

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|驾校Code  <br>**样例** : `"string"`|string|
|**id**  <br>*可选*|主键  <br>**样例** : `0`|integer (int64)|
|**name**  <br>*可选*|驾校名称  <br>**样例** : `"string"`|string|


<a name="sexproportionvo"></a>
### SexProportionVo

|名称|说明|类型|
|---|---|---|
|**man**  <br>*可选*|男士比例  <br>**样例** : `0.0`|number (double)|
|**woman**  <br>*可选*|女士比例  <br>**样例** : `0.0`|number (double)|


<a name="studentbasedatavo"></a>
### StudentBaseDataVo

|名称|说明|类型|
|---|---|---|
|**areaList**  <br>*可选*|驾校所属区域  <br>**样例** : `[ "[areavo](#areavo)" ]`|< [AreaVo](#areavo) > array|
|**carTypeList**  <br>*可选*|准驾车型列表  <br>**样例** : `[ "[ea75d9b9ce1923a0c6c052003bdf3b1b](#ea75d9b9ce1923a0c6c052003bdf3b1b)" ]`|< [数据字典](#ea75d9b9ce1923a0c6c052003bdf3b1b) > array|
|**countryList**  <br>*可选*|国籍  <br>**样例** : `[ "[ea75d9b9ce1923a0c6c052003bdf3b1b](#ea75d9b9ce1923a0c6c052003bdf3b1b)" ]`|< [数据字典](#ea75d9b9ce1923a0c6c052003bdf3b1b) > array|
|**djsList**  <br>*可选*|登记住所行政区  <br>**样例** : `[ "[areavo](#areavo)" ]`|< [AreaVo](#areavo) > array|
|**schoolName**  <br>*可选*|驾校名称  <br>**样例** : `"string"`|string|
|**studentNumber**  <br>*可选*|学员编号  <br>**样例** : `"string"`|string|
|**zjTypeList**  <br>*可选*|证件类型列表  <br>**样例** : `[ "[ea75d9b9ce1923a0c6c052003bdf3b1b](#ea75d9b9ce1923a0c6c052003bdf3b1b)" ]`|< [数据字典](#ea75d9b9ce1923a0c6c052003bdf3b1b) > array|
|**zsList**  <br>*可选*|住所行政区划  <br>**样例** : `[ "[areavo](#areavo)" ]`|< [AreaVo](#areavo) > array|


<a name="studentfieldhistoryvo"></a>
### StudentFieldHistoryVo

|名称|说明|类型|
|---|---|---|
|**degree**  <br>*可选*|考试次数  <br>**样例** : `0`|integer (int32)|
|**examAddress**  <br>*可选*|考试地点  <br>**样例** : `"string"`|string|
|**examSubject**  <br>*可选*|考试科目  <br>**样例** : `"string"`|string|
|**examTime**  <br>*可选*|考试时间  <br>**样例** : `"string"`|string (date-time)|
|**fieldStatus**  <br>*可选*|考试状态  <br>**样例** : `0`|integer (int32)|


<a name="studentinfoallvo"></a>
### StudentInfoAllVo

|名称|说明|类型|
|---|---|---|
|**birthday**  <br>*可选*|**样例** : `"string"`|string|
|**carCode**  <br>*可选*|**样例** : `"string"`|enum (no, A1, A2, A3, B1, B2, C1, C2, C4, C5, D, E, M, N, P, C3, F)|
|**carCodeName**  <br>*可选*|**样例** : `"string"`|string|
|**countryCode**  <br>*可选*|**样例** : `"string"`|string|
|**countryName**  <br>*可选*|**样例** : `"string"`|string|
|**createdTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**email**  <br>*可选*|**样例** : `"string"`|string|
|**faceStatus**  <br>*可选*|**样例** : `"string"`|enum (fail, normal, ok)|
|**faceStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**govStatus**  <br>*可选*|**样例** : `"string"`|enum (allstate, normal, conclude, retreats, aboutExamOk, aboutExamFail, checkOk, checkFail, certificationOk, certificationFail, fileOk, fileFail)|
|**govStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**headPic**  <br>*可选*|**样例** : `"string"`|string|
|**idExpiredDate**  <br>*可选*|**样例** : `"string"`|string|
|**idNumber**  <br>*可选*|**样例** : `"string"`|string|
|**idNumberAddress**  <br>*可选*|**样例** : `"string"`|string|
|**idNumberReginCode**  <br>*可选*|**样例** : `"string"`|string|
|**idNumberReginName**  <br>*可选*|**样例** : `"string"`|string|
|**name**  <br>*可选*|**样例** : `"string"`|string|
|**netStatus**  <br>*可选*|**样例** : `"string"`|enum (allstate, onsubmit, yesschool, waitsubmit, noschool, uploadok, uploadon, schoolsubmitOk, signUpOk, signUpFaild)|
|**netStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**operatorId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**operatorName**  <br>*可选*|**样例** : `"string"`|string|
|**phone**  <br>*可选*|**样例** : `"string"`|string|
|**reason**  <br>*可选*|**样例** : `"string"`|string|
|**referralCode**  <br>*可选*|**样例** : `"string"`|string|
|**residenceAddress**  <br>*可选*|**样例** : `"string"`|string|
|**residenceReginCode**  <br>*可选*|**样例** : `"string"`|string|
|**residenceReginName**  <br>*可选*|**样例** : `"string"`|string|
|**schoolCode**  <br>*可选*|**样例** : `"string"`|string|
|**schoolId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**schoolName**  <br>*可选*|**样例** : `"string"`|string|
|**schoolRegionCode**  <br>*可选*|**样例** : `"string"`|string|
|**schoolRegionName**  <br>*可选*|**样例** : `"string"`|string|
|**sex**  <br>*可选*|**样例** : `"string"`|string|
|**sfType**  <br>*可选*|**样例** : `"string"`|enum (no, A, C, D, E, F, G, I, Q)|
|**sfTypeNames**  <br>*可选*|**样例** : `"string"`|string|
|**signSource**  <br>*可选*|**样例** : `"string"`|string|
|**signTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**status**  <br>*可选*|**样例** : `"string"`|enum (allstudent, newenroll, joink1, kone, joink2, k2, joink3, k3, joink4, k4, edd)|
|**statusName**  <br>*可选*|**样例** : `"string"`|string|
|**stayAddreeNumber**  <br>*可选*|**样例** : `"string"`|string|
|**studentId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**studentMoney**  <br>*可选*|**样例** : `0.0`|number|
|**studentNumber**  <br>*可选*|**样例** : `"string"`|string|
|**studentSource**  <br>*可选*|**样例** : `"string"`|string|
|**studyType**  <br>*可选*|**样例** : `0`|integer (int32)|
|**submitTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**transferStatus**  <br>*可选*|**样例** : `0`|integer (int32)|
|**updatedTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**wechatBind**  <br>*可选*|**样例** : `0`|integer (int32)|
|**wechatOpenid**  <br>*可选*|**样例** : `"string"`|string|
|**zipCode**  <br>*可选*|**样例** : `"string"`|string|


<a name="studentpicturevo"></a>
### StudentPictureVo

|名称|说明|类型|
|---|---|---|
|**created**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**exportTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**fileId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**id**  <br>*可选*|**样例** : `0`|integer (int64)|
|**sendTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**status**  <br>*可选*|**样例** : `"string"`|enum (notCollected, haveCollected, exported, alreadyImported, success)|
|**statusName**  <br>*可选*|**样例** : `"string"`|string|
|**studentId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**type**  <br>*可选*|**样例** : `"string"`|enum (normal, jzsq, mqb, zw, zjz, yjsz, sfz, tjbtp, xcz, jzz)|
|**typeName**  <br>*可选*|**样例** : `"string"`|string|
|**updated**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**uploadTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|


<a name="studentresultvo"></a>
### StudentResultVo
*类型* : object


<a name="studentstatisticsvo"></a>
### StudentStatisticsVo

|名称|说明|类型|
|---|---|---|
|**cityName**  <br>*可选*|城市名称  <br>**样例** : `"string"`|string|
|**hb**  <br>*可选*|环比  <br>**样例** : `"string"`|string|
|**sort**  <br>*可选*|排名  <br>**样例** : `0`|integer (int32)|
|**studentCount**  <br>*可选*|学员数量  <br>**样例** : `0`|integer (int64)|
|**tb**  <br>*可选*|同比  <br>**样例** : `"string"`|string|


<a name="studentwaringvo"></a>
### StudentWaringVo

|名称|说明|类型|
|---|---|---|
|**created**  <br>*可选*|预警时间  <br>**样例** : `"string"`|string (date-time)|
|**message**  <br>*可选*|预警信息  <br>**样例** : `"string"`|string|
|**subject**  <br>*可选*|所处阶段  <br>**样例** : `"string"`|string|


<a name="updatestudentinfovo"></a>
### UpdateStudentInfoVo

|名称|说明|类型|
|---|---|---|
|**birthday**  <br>*可选*|**样例** : `"string"`|string|
|**branchName**  <br>*可选*|**样例** : `"string"`|string|
|**carCode**  <br>*可选*|**样例** : `"string"`|enum (no, A1, A2, A3, B1, B2, C1, C2, C4, C5, D, E, M, N, P, C3, F)|
|**carCodeName**  <br>*可选*|**样例** : `"string"`|string|
|**countryCode**  <br>*可选*|**样例** : `"string"`|string|
|**countryName**  <br>*可选*|**样例** : `"string"`|string|
|**createdTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**email**  <br>*可选*|**样例** : `"string"`|string|
|**faceStatus**  <br>*可选*|**样例** : `"string"`|enum (fail, normal, ok)|
|**faceStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**govStatus**  <br>*可选*|**样例** : `"string"`|enum (allstate, normal, conclude, retreats, aboutExamOk, aboutExamFail, checkOk, checkFail, certificationOk, certificationFail, fileOk, fileFail)|
|**govStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**headPic**  <br>*可选*|**样例** : `"string"`|string|
|**id**  <br>*可选*|**样例** : `0`|integer (int64)|
|**idExpiredDate**  <br>*可选*|**样例** : `"string"`|string|
|**idNumber**  <br>*可选*|**样例** : `"string"`|string|
|**idNumberAddress**  <br>*可选*|**样例** : `"string"`|string|
|**idNumberReginCode**  <br>*可选*|**样例** : `"string"`|string|
|**idNumberReginName**  <br>*可选*|**样例** : `"string"`|string|
|**isDel**  <br>*可选*|**样例** : `0`|integer (int32)|
|**listPic**  <br>*可选*|**样例** : `[ "[studentpicturevo](#studentpicturevo)" ]`|< [StudentPictureVo](#studentpicturevo) > array|
|**name**  <br>*可选*|**样例** : `"string"`|string|
|**netStatus**  <br>*可选*|**样例** : `"string"`|enum (allstate, onsubmit, yesschool, waitsubmit, noschool, uploadok, uploadon, schoolsubmitOk, signUpOk, signUpFaild)|
|**netStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**operatorId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**operatorName**  <br>*可选*|**样例** : `"string"`|string|
|**phone**  <br>*可选*|**样例** : `"string"`|string|
|**reason**  <br>*可选*|**样例** : `"string"`|string|
|**referralCode**  <br>*可选*|**样例** : `"string"`|string|
|**residenceAddress**  <br>*可选*|**样例** : `"string"`|string|
|**residenceReginCode**  <br>*可选*|**样例** : `"string"`|string|
|**residenceReginName**  <br>*可选*|**样例** : `"string"`|string|
|**schoolCode**  <br>*可选*|**样例** : `"string"`|string|
|**schoolId**  <br>*可选*|**样例** : `0`|integer (int64)|
|**schoolName**  <br>*可选*|**样例** : `"string"`|string|
|**schoolRegionCode**  <br>*可选*|**样例** : `"string"`|string|
|**schoolRegionName**  <br>*可选*|**样例** : `"string"`|string|
|**sex**  <br>*可选*|**样例** : `"string"`|string|
|**sfType**  <br>*可选*|**样例** : `"string"`|enum (no, A, C, D, E, F, G, I, Q)|
|**sfTypeNames**  <br>*可选*|**样例** : `"string"`|string|
|**signSource**  <br>*可选*|**样例** : `"string"`|string|
|**signTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**status**  <br>*可选*|**样例** : `"string"`|enum (allstudent, newenroll, joink1, kone, joink2, k2, joink3, k3, joink4, k4, edd)|
|**statusName**  <br>*可选*|**样例** : `"string"`|string|
|**stayAddreeNumber**  <br>*可选*|**样例** : `"string"`|string|
|**studentMoney**  <br>*可选*|**样例** : `0.0`|number|
|**studentNumber**  <br>*可选*|**样例** : `"string"`|string|
|**studentSource**  <br>*可选*|**样例** : `"string"`|string|
|**studyType**  <br>*可选*|**样例** : `0`|integer (int32)|
|**submitTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**transferStatus**  <br>*可选*|**样例** : `0`|integer (int32)|
|**updatedTime**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**wechatBind**  <br>*可选*|**样例** : `0`|integer (int32)|
|**wechatOpenid**  <br>*可选*|**样例** : `"string"`|string|
|**zipCode**  <br>*可选*|**样例** : `"string"`|string|


<a name="d2b776fad6c2659a542aed83b719eeaf"></a>
### 区域信息

|名称|说明|类型|
|---|---|---|
|**parentCode**  <br>*可选*|父级编号  <br>**样例** : `"string"`|string|


<a name="8a2fdbb5732d887833c63fe93f0dd276"></a>
### 合同文件

|名称|说明|类型|
|---|---|---|
|**dscFileTypeName**  <br>*可选*|**样例** : `"string"`|string|


<a name="a17491c15bd2c0ecf5dae7b0f86126c9"></a>
### 城市导出字段配置

|名称|说明|类型|
|---|---|---|
|**exportFieldList**  <br>*可选*|**样例** : `[ "[exportfield](#exportfield)" ]`|< [ExportField](#exportfield) > array|
|**exportFileList**  <br>*可选*|**样例** : `[ "[exportfile](#exportfile)" ]`|< [ExportFile](#exportfile) > array|


<a name="44deab73b08d79eb73d953af6f0b5d6f"></a>
### 导出待审核学员查询条件

|名称|说明|类型|
|---|---|---|
|**fromDate**  <br>*可选*|**样例** : `"string"`|string (date-time)|
|**toDate**  <br>*可选*|**样例** : `"string"`|string (date-time)|


<a name="20a4e938761b3a69b507b50096bc601b"></a>
### 岗位职责

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|职位代码  <br>**样例** : `"string"`|string|
|**created**  <br>*可选*|创建岗位名称  <br>**样例** : `"string"`|string|
|**depCode**  <br>*可选*|部门code  <br>**样例** : `"string"`|string|
|**depId**  <br>*可选*|部门id  <br>**样例** : `"string"`|string|
|**depName**  <br>*可选*|部门名称  <br>**样例** : `"string"`|string|
|**id**  <br>*可选*|岗位ID  <br>**样例** : `0`|integer (int64)|
|**name**  <br>*可选*|职位名称  <br>**样例** : `"string"`|string|
|**operatorName**  <br>*可选*|操作人姓名  <br>**样例** : `"string"`|string|
|**remarks**  <br>*可选*|职位描述  <br>**样例** : `"string"`|string|


<a name="ea75d9b9ce1923a0c6c052003bdf3b1b"></a>
### 数据字典

|名称|说明|类型|
|---|---|---|
|**code**  <br>*可选*|code  <br>**样例** : `"string"`|string|
|**name**  <br>*可选*|名称  <br>**样例** : `"string"`|string|
|**parentId**  <br>*可选*|父级ID  <br>**样例** : `0`|integer (int64)|
|**type**  <br>*可选*|类别  <br>**样例** : `0`|integer (int32)|


<a name="c2003199815551e8d762ff9e306f4777"></a>
### 模板详情
*类型* : object


<a name="88848ca782d12a3598374b80a09918e3"></a>
### 消息发送记录

|名称|说明|类型|
|---|---|---|
|**pushStatusName**  <br>*可选*|**样例** : `"string"`|string|
|**pushTypeName**  <br>*可选*|**样例** : `"string"`|string|


<a name="98af0f77b91ce9a6e163551d7b16f893"></a>
### 消息待发记录

|名称|说明|类型|
|---|---|---|
|**pushTypeName**  <br>*可选*|**样例** : `"string"`|string|


<a name="a6e659298e241680eab025692c211cb8"></a>
### 消息模板参数项配置
*类型* : object


<a name="d52b9acf7f1942987783b6b835554018"></a>
### 消息模板配置信息
*类型* : object


<a name="3163744dbe361887056da8250aadd67a"></a>
### 通知公告

|名称|说明|类型|
|---|---|---|
|**createUser**  <br>*可选*|创建人  <br>**样例** : `"string"`|string|
|**isDel**  <br>*可选*|是否删除：del_no为未删除；del_yes为已删除  <br>**样例** : `"string"`|enum (del_no, del_yes)|
|**noticeContent**  <br>*可选*|公告内容：5000字符内  <br>**样例** : `"string"`|string|
|**noticeTitle**  <br>*可选*|公告标题, 100字符内  <br>**样例** : `"string"`|string|
|**noticeType**  <br>*可选*|公告类型：notice为公告；msg为消息  <br>**样例** : `"string"`|enum (notice, msg)|
|**updateUser**  <br>*可选*|修改人  <br>**样例** : `"string"`|string|


<a name="6e06bce9bdb98bd4ba0fbebf6175fcbf"></a>
### 通知公告下发组织

|名称|说明|类型|
|---|---|---|
|**cityCode**  <br>*可选*|城市编号  <br>**样例** : `"string"`|string|
|**orgCode**  <br>*可选*|组织编号  <br>**样例** : `"string"`|string|
|**orgName**  <br>*可选*|组织名称  <br>**样例** : `"string"`|string|
|**orgType**  <br>*可选*|公告下发机构类型：jx为驾校；cgs为车管所；ax为傲雄  <br>**样例** : `"string"`|enum (jx, cgs, ax)|
|**orgTypeName**  <br>*可选*|**样例** : `"string"`|string|
|**readStatusName**  <br>*可选*|**样例** : `"string"`|string|


<a name="bff8426e33c754a81f8390a71ceb8809"></a>
### 通知公告参数
*类型* : object


<a name="f6ce7bf6b367fba23c2fb978bdbd91a1"></a>
### 通知公告查询条件

|名称|说明|类型|
|---|---|---|
|**pageIndex**  <br>*可选*|当前页码  <br>**样例** : `0`|integer (int32)|
|**pageSize**  <br>*可选*|每页查询数量  <br>**样例** : `0`|integer (int32)|


<a name="c4c65e9be72a8af16fca7cff278865c7"></a>
### 通知公告详情
*类型* : object


<a name="1e1459eeed6da94506631a690c7efeab"></a>
### 部门

|名称|说明|类型|
|---|---|---|
|**depCode**  <br>*可选*|部门编号唯一  <br>**样例** : `"string"`|string|
|**depType**  <br>*可选*|部门类型：A:敖雄;C:车管所;J：驾校总校;F：驾校分校;B：报名点;D：部门  <br>**样例** : `"string"`|string|
|**name**  <br>*可选*|部门名称  <br>**样例** : `"string"`|string|
|**parentCode**  <br>*可选*|父级code  <br>**样例** : `"string"`|string|
|**parentId**  <br>*可选*|父级ID  <br>**样例** : `0`|integer (int64)|


<a name="bd7368b7ca6bc84e4438ee5070f224b4"></a>
### 部门用户

|名称|说明|类型|
|---|---|---|
|**created**  <br>*可选*|创建时间  <br>**样例** : `"string"`|string|
|**depCode**  <br>*可选*|部门code  <br>**样例** : `"string"`|string|
|**depId**  <br>*可选*|部门id  <br>**样例** : `"string"`|string|
|**depName**  <br>*可选*|部门名称  <br>**样例** : `"string"`|string|
|**depType**  <br>*可选*|部门类型：\r\nA:敖雄\r\nC:车管所\r\nJ：驾校总校\r\nF：驾校分校\r\nB：报名点\r\nD：部门\r\n  <br>**样例** : `"string"`|string|
|**id**  <br>*可选*|用户ID  <br>**样例** : `0`|integer (int64)|
|**name**  <br>*可选*|姓名  <br>**样例** : `"string"`|string|
|**operatorName**  <br>*可选*|操作人  <br>**样例** : `"string"`|string|
|**parentCode**  <br>*可选*|父级部门code  <br>**样例** : `"string"`|string|
|**positionCode**  <br>*可选*|岗位code  <br>**样例** : `"string"`|string|
|**positionId**  <br>*可选*|岗位id  <br>**样例** : `"string"`|string|
|**positionName**  <br>*可选*|岗位名称  <br>**样例** : `"string"`|string|
|**roleId**  <br>*可选*|角色id  <br>**样例** : `0`|integer (int64)|
|**username**  <br>*可选*|账号  <br>**样例** : `"string"`|string|


<a name="320860f68b4849f8075ead9b83193b4c"></a>
### 驾校信息
*类型* : object


<a name="b6ffe4f1549818afd27c0033bc8e2b43"></a>
### 驾校合同
*类型* : object


<a name="190cdefe87ec61f81eecd1f0e208c822"></a>
### 驾校合同详情

|名称|说明|类型|
|---|---|---|
|**contractData**  <br>*可选*|**样例** : `"[b6ffe4f1549818afd27c0033bc8e2b43](#b6ffe4f1549818afd27c0033bc8e2b43)"`|[驾校合同](#b6ffe4f1549818afd27c0033bc8e2b43)|
|**dscFileList**  <br>*可选*|**样例** : `[ "[8a2fdbb5732d887833c63fe93f0dd276](#8a2fdbb5732d887833c63fe93f0dd276)" ]`|< [合同文件](#8a2fdbb5732d887833c63fe93f0dd276) > array|


<a name="f56b8d8cb504b92dcd101d4a9a174f44"></a>
### 驾校用户

|名称|说明|类型|
|---|---|---|
|**appCode**  <br>*可选*|appCode  <br>**样例** : `"string"`|string|
|**depCode**  <br>*可选*|部门组织code  <br>**样例** : `"string"`|string|
|**depId**  <br>*可选*|部门组织id  <br>**样例** : `0`|integer (int64)|
|**expireDatetime**  <br>*可选*|用户到期时间 （默认空表示长期）  <br>**样例** : `"string"`|string (date-time)|
|**name**  <br>*可选*|用户名字  <br>**样例** : `"string"`|string|
|**password**  <br>*可选*|登陆密码或者密码标识(比如密码md5)  <br>**样例** : `"string"`|string|
|**type**  <br>*可选*|type 角色ID  0:不存在角色   1：存在角色  <br>**样例** : `"string"`|string|





