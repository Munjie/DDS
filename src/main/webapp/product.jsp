<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/16
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>当当网商品展示页面</title>
    <link href="css/global.css" rel="stylesheet" type="text/css" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/product.js"></script>
</head>
<body>
<div id="header"><iframe src="header.jsp" height="155px" width="960px" frameborder="0"></iframe></div>
<!--中间部分开始-->
<div id="main">
    <div class="dd_index_top_adver"><img src="images/dd_index_top_adver.jpg" alt="通栏广告图片" /></div>
    <div class="current_place">您现在的位置：<a href="index.html">当当图书</a> >> 小说 >> 财经</div>
    <!--左侧菜单开始-->
    <div id="product_left">
        <div id="product_catList">
            <div class="product_catList_top">浏览同级分类</div>
            <div id="product_catList_class"><!--使用javaScript显示图书分类--></div>
        </div>
        <div class="product_catList_end">
            <img src="images/product_01.gif" alt="shopping">
            <img src="images/product_02.gif" alt="shopping">
        </div>
    </div>
    <!--右侧内容开始-->
    <div id="product_storyList">
        <div id="product_storyList_top">
            <ul>
                <li>排序方式</li>
                <li><img src="images/dd_arrow_right.gif" alt="arrow"></li>
                <li>
                    <select id="compositor">
                        <option>按销量 降序</option>
                        <option>按价格 升序</option>
                        <option>按价格 降序</option>
                        <option>按折扣 升序</option>
                        <option>按折扣 降序</option>
                        <option>按出版时间 升序</option>
                        <option>按出版时间 降序</option>
                        <option>按上架时间 升序</option>
                        <option>按上架时间 降序</option>
                    </select>
                </li>
                <li><img src="images/product_icon_01.gif" alt="icon"></li>
                <li><img src="images/product_icon_02.gif" alt="icon"></li>
                <li><img src="images/product_icon_03.gif" alt="icon"></li>
                <li><img src="images/product_icon_04.gif" alt="icon"></li>
                <li>每页显示的数量</li>
                <li><img src="images/dd_arrow_right.gif" alt="arrow"></li>
                <li><img src="images/product_icon_20.gif" alt="icon"></li>
                <li><img src="images/product_icon_40.gif" alt="icon"></li>
                <li style="float:right; padding-right:10px;"><img src="images/product_page_down.gif" alt="icon"></li>
                <li style="float:right;">第1页</li>
                <li style="float:right;"><img src="images/product_page_up.gif" alt="icon"></li>
            </ul>
        </div>
        <div id="product_array">
            <a class="click" name="array"  href="javascript:void(0)">列表</a>
            <a name="bigImg" href="javascript:void(0)">大图</a>
        </div>
        <!--图书排列开始-->
        <div id="product_storyList_content" class="product_storyList_content">
            <div id="storyBooksssss"><!--使用javaScript显示图书列表--></div>
            <!--列表开始-->

            <div class="product_storyList_content_left"><img src="images/${in.bookImg}" alt="图书列表"></div>
            <div class="product_storyList_content_right">

                <c:forEach items="${info}" var="in">
                <ul>
                    <li class="product_storyList_content_dash"><a href="#" class="blue_14">${in.bookname}</a></li>
                    <li>顾客评分：<img src="images/star_red.gif" alt="star"><img src="images/star_red.gif" alt="star"><img src="images/star_red.gif" alt="star"><img src="images/star_red.gif" alt="star"><img src="images/star_gray.gif" alt="star"></li>
                    <li>作　者：<a href="#" class="blue_14">${in.authorname}</a></li>
                    <li>出版社：<a href="#" class="blue_14">${in.publishname}</a></li>
                    <li>出版时间:<fmt:formatDate  value="${in.publishdate}" pattern="yyyy年MM月" ></fmt:formatDate> </li>
                    <li>数年前，在一次股市的多、空之战中，以赵云狄、林康为首的私募基金―金鼎投资，和以王雨龙为首的私募基金，达成锁仓协议分食利益。殊料，以王雨龙为首的私募基金―鑫利投资背信弃义，导致金鼎投资惨败。以至...</li>
                    <li>
                        <dl class="product_content_dd">
                            <dd><img src="images/product_buy_02.gif" alt="shopping"></dd>
                            <dd><img src="images/product_buy_01.gif" alt="shopping"></dd>
                            <dd>节省：￥13.10</dd>
                            <dd>折扣：<span>59折</span></dd>
                            <dd class="footer_dull_red"><span>￥${in.dangbookPrice}</span></dd>
                            <dd class="product_content_delete"><span>￥${in.bookprice}</span></dd>
                        </dl>
                    </li>
                </ul>
                </c:forEach>

            </div>
        </div>

    </div>
    <!--右侧内容结束-->
</div>
<!--网站版权部分开始-->
<div id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">公司简介</a> | <a href="#" target="_parent" class="footer_dull_red">诚证英才</a> | <a href="#" target="_parent" class="footer_dull_red">网站联盟</a> | <a href="#" target="_parent" class="footer_dull_red">百货招商</a> | <a href="#" target="_parent" class="footer_dull_red">交易条款</a></div>
    <iframe src="footer.jsp" height="50px" width="900px" frameborder="0"></iframe></div>
</body>
</html>

