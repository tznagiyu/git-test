var ax = {
    post: function (c) {
        var config = {
            headers: this.getHeaders(),
            type: "POST",
            contentType: "application/json",
            dataType: "json"
        };

        this.copyPro(config, c);
        this.appendUrlPrefix(config);

        layui.jquery.ajax(config);
    },
    get: function (c) {
        var config = {
            headers: this.getHeaders(),
            type: "GET",
            contentType: "application/x-www-form-urlencoded",
            dataType: "json"
        };
        this.copyPro(config, c);
        this.appendUrlPrefix(config);

        layui.jquery.ajax(config);
    },
    VTable: function (c) {
        var config = {
            method: "GET",
            headers: this.getHeaders(),
            request: {
                pageName: 'pageIndex'
                , limitName: 'pageSize'
            },
            parseData: this.parseTableData,
            page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
                , groups: 5 //只显示 1 个连续页码
                , first: false  //不显示首页
                , last: false //不显示尾页
                , limit: 10  //每页显示的条数
                , page: 1   //第几页
                , limits: [5, 10, 20, 30, 50]

            }
        };
        this.copyPro(config, c);
        this.appendUrlPrefix(config);

        return layui.table.render(config);
    },
    appendUrlPrefix: function (config) {
        if (config.url) {
            //不是当前微服务地址
            if (config.url.indexOf(webUrl) < 0) {
                //并且没有指定绝对路径，则默认为当前微服务路径中
                if (config.url.indexOf("http://") < 0) {
                    config.url = webUrl + config.url;
                }
            }
        }
    },
    copyPro: function (target, from) {
        if (target && from) {
            var fn;
            for (fn in from) {
                target[fn] = from[fn];
            }
        }
    },
    parseTableData: function (res) {
        return {
            "code": res.code,
            "msg": res.message,
            "count": res.data.total,
            "data": res.data.records
        };
    },
    getHeaders: function () {
        return {System_Id: SystemId, token: $.cookie('token')};
    }
}
