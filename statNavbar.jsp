<%@ page pageEncoding="utf-8" contentType="text/html; char-set: utf-8" language="java"%>

<style>
    .navbar {
        margin-bottom: 0;
        margin-left: 15px;
    }
    .navbar-brand {
        width: 280px;
    }
    .navbar a.navbar-brand {
        /* background: url('../img/echarts-logo.png') no-repeat 0 10px; */
        padding-left: 20px;
        font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        font-size: 22px;
        line-height: 22px;
    }
    .navbar-default .navbar-brand {
        color: gray;
    }

    .navbar-default .navbar-nav>li>a {
        color: gray;
    }
    .navbar-default .navbar-nav > li > a:hover {
        background-color: gray;
    }
    .navbar-default .navbar-nav > li > a:hover {
        background-color: gray;
    }
    .navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus {
        color: #FFF;
    }

    .navbar-brand img {
        float: left;
        height: 22px;
        width: 30px;
        margin-right: 5px;
    }

    .navbar-default .navbar-nav > li > a:hover {
        background-color: rgba(0, 0, 0, 0);
        color: #3E98C5;
        font-weight: bolder;
        border-bottom: 3px solid rgba(62, 152, 197, 0.2);
    }
</style>

<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><img width="22" height="22" src="img/logo04.png" /> 民航数据统计分析</a>
    </div>
    <div>
        <ul class="nav navbar-nav" id="navbar">
            <li><a href="page/first">飞行时间</a></li>
            <li><a href="page/second">飞机燃油消耗</a></li>
            <li class="dropdown">
                <a href="javascript: void(0);" class="dropdown-toggle" data-toggle="dropdown">
                    发动机参数
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="page/statEngine">发动机转速</a></li>
                    <li class="divider"></li>
                    <li><a href="page/statTemperature">发动机温度</a></li>
                    <li class="divider"></li>
                    <li><a href="page/statAngle">油门杆角度</a></li>
                </ul>
            </li>
            <li><a href="page/statSpeed">超速事件筛选</a></li>
            <li><a href="page/statLand">重着陆事件筛选</a></li>
        </ul>
    </div>
</nav>

<script type="text/javascript">
    $(function(){
        var a = $('#navbar a');

        // Remove the active state
        a.parent().removeClass('active');

        // get the URL
        // - Example: http://localhost/dastore_mh/page/statTemperature#dark
        var href = document.location.href;
        var items = href.split("/");
        var lastPart = items[items.length-1];
        items = lastPart.split('#');
        var path = items[0];

        a.each(function(index, item) {
            var target = $(this);
            var item = target.attr('href');
            console.info('item=', item);

            // get link part
            // - Example: page/statLand
            items = item.split('/');

            // Match and set the class
            if(items[items.length-1] === path) {
                var parent = target.parent();
                parent.addClass('active');

                // Check to see drop down parent display
                if( parent.parent().hasClass('dropdown-menu') ) {
                    parent.parent().parent().addClass('active');
                }
            }
        });
    });
</script>
