<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>当当网首页</title>
    <link href="css/global.css" rel="stylesheet" type="text/css" />
    <link href="css/layout.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
</head>
<body>
<!--随滚动条滚动可关闭广告-->
<div id="right" class="right">
    <div class="dd_close" id="dd_close"><a href="javascript:void(0);">关闭</a></div>
    <img src="images/dd_scroll.jpg" id="right1" />
</div>
<!--头部iframe引入-->
<div id="header">
    <iframe src="header.jsp" height="155px" width="960px" frameborder="0"></iframe>
</div>
<!--网站中间内容开始-->
<div id="main">
    <div class="dd_index_top_adver"><img src="images/dd_index_top_adver.jpg" alt="通栏广告图片" /></div>
    <!--左侧菜单开始-->
    <div id="catList">
        <!--推荐分类-->
        <div class="book_sort">
            <div class="book_sort_bg">推荐分类</div>
            <div class="book_sort_bottom" style="border-bottom:0px;">外语 | 中小学教辅 |</div>
        </div>
        <!--图书商品分类开始-->

        <div class="book_sort">
            <div class="book_sort_bg"><img src="images/dd_book_cate_icon.gif" alt="图书" /> 图书商品分类</div>
           <c:forEach items="${book}" var="book">
               <c:if test="${book.bookParentId == 0}">
            <div class="book_cate">[${book.bookTypeName}]</div>
               </c:if>
               <c:if test="${book.bookParentId != 0}">
              <div class="book_sort_bottom">${book.bookTypeName}</div>

               </c:if>
           </c:forEach>
        </div>
        <!--图书商品分类结束-->
    </div>
    <!--左侧菜单结束-->
    <!--中间部分开始-->
    <div id="content">
        <!--轮换显示的横幅广告图片-->
        <div class="scroll_top"></div>
        <div class="scroll_mid">
            <ul id="scroll_img">
                <li><img src="images/dd_scroll_1.jpg"/></li>
                <li><img src="images/dd_scroll_2.jpg"/></li>
                <li><img src="images/dd_scroll_3.jpg"/></li>
                <li><img src="images/dd_scroll_4.jpg"/></li>
                <li><img src="images/dd_scroll_5.jpg"/></li>
                <li><img src="images/dd_scroll_6.jpg"/></li>
            </ul>
            <ul id="scroll_number">
                <li>1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
                <li>6</li>
            </ul>
        </div>
        <div class="scroll_end"></div>
        <!--最新上架开始-->
        <div id="bookTab" class="book_sort">
            <div class="book_new">
                <div class="book_left">最新上架</div>
             <c:forEach items="${book}" var="book">
                 <c:if test="${book.bookParentId == 0}">
                <div class="book_type_out" id="novel" onclick="querybook('${book.bookTypeId}')">${book.bookTypeName}</div>
                 </c:if>
             </c:forEach>
                <div class="book_right"><a href="#">更多>></a></div>
            </div>
            <div class="book_class" style="height:250px;">
                <!--历史-->
                <dl id="book_history">
                    <c:forEach items="${info}" var="in">
                    <dt><img src="images/dd_history_1.jpg" alt="history"/></dt>
                    <dd>

                        <font class="book_title">${in.bookname}</font><br />
                            ${in.authorname} <br />
                            ${in.publishname}<br />
                        <font class="book_publish">${in.publishdate}</font><br />
                        定价：${in.bookprice}<br />
                        当当价${in.dangbookPrice}
                    </dd>
                    </c:forEach>
                    <dt><img src="images/dd_history_2.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">中国历史的屈辱</font><br />
                        作者：王重旭　著 <br />
                        出版社：华夏出版社 <br />
                        <font class="book_publish">出版时间：2009年11月</font><br />
                        定价：￥26.00<br />
                        当当价：￥18.20
                    </dd>
                    <dt><img src="images/dd_history_3.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">《中国时代》（下）</font><br />
                        作者：师永刚，邹明　主编 <br />
                        出版社：作家出版社 <br />
                        <font class="book_publish"> 出版时间：2009年10月</font><br />
                        定价：￥38.00<br />
                        当当价：￥26.30
                    </dd>
                    <dt><img src="images/dd_history_4.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">大家国学十六讲</font><br />
                        作者：张荫麟，吕思勉 著 <br />
                        出版社：中国友谊出版公司 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥19.80<br />
                        当当价：￥13.70
                    </dd>
                </dl>
                <!--家教-->
                <dl id="book_family" class="book_none">
                    <dt><img src="images/dd_family_1.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">嘿，我知道你</font><br />
                        作者：兰海　著 <br />
                        出版社：中国妇女出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.80<br />
                        当当价：￥17.90
                    </dd>
                    <dt><img src="images/dd_family_2.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">择业要趁早</font><br />
                        作者：（美）列文<br />
                        出版社：海天出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.00<br />
                        当当价：￥19.30
                    </dd>
                    <dt><img src="images/dd_family_3.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">爷爷奶奶的“孙子兵法”</font><br />
                        作者：伏建全 编著 <br />
                        出版社：地震出版社 <br />
                        <font class="book_publish"> 出版时间：2009年8月</font><br />
                        定价：￥28.00<br />
                        当当价：￥17.40
                    </dd>
                    <dt><img src="images/dd_family_4.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">1分钟读懂孩子心理</font><br />
                        作者：海韵　著 <br />
                        出版社：朝华出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.00<br />
                        当当价：￥17.40
                    </dd>
                </dl>
                <!--文化-->
                <dl id="book_culture" class="book_none">
                    <dt><img src="images/dd_culture_1.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">嘿，我知道你</font><br />
                        作者：兰海　著 <br />
                        出版社：中国妇女出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.80<br />
                        当当价：￥17.90
                    </dd>
                    <dt><img src="images/dd_culture_2.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">择业要趁早</font><br />
                        作者：（美）列文 <br />
                        出版社：海天出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.00<br />
                        当当价：￥19.30
                    </dd>
                    <dt><img src="images/dd_culture_3.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">爷爷奶奶的“孙子兵法”</font><br />
                        作者：伏建全 编著 <br />
                        出版社：地震出版社 <br />
                        <font class="book_publish"> 出版时间：2009年8月</font><br />
                        定价：￥28.00<br />
                        当当价：￥17.40
                    </dd>
                    <dt><img src="images/dd_culture_4.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">1分钟读懂孩子心理</font><br />
                        作者：海韵　著 <br />
                        出版社：朝华出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.00<br />
                        当当价：￥17.40
                    </dd>
                </dl>
                <!--小说-->
                <dl id="book_novel" class="book_none">
                    <dt><img src="images/dd_novel_1.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">嘿，我知道你</font><br />
                        作者：兰海　著 <br />
                        出版社：中国妇女出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.80<br />
                        当当价：￥17.90
                    </dd>
                    <dt><img src="images/dd_novel_2.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">择业要趁早</font><br />
                        作者：（美）列文 <br />
                        出版社：海天出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.00<br />
                        当当价：￥19.30
                    </dd>
                    <dt><img src="images/dd_novel_3.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">爷爷奶奶的“孙子兵法”</font><br />
                        作者：伏建全 编著 <br />
                        出版社：地震出版社 <br />
                        <font class="book_publish"> 出版时间：2009年8月</font><br />
                        定价：￥28.00<br />
                        当当价：￥17.40
                    </dd>
                    <dt><img src="images/dd_novel_4.jpg" alt="history"/></dt>
                    <dd>
                        <font class="book_title">1分钟读懂孩子心理</font><br />
                        作者：海韵　著 <br />
                        出版社：朝华出版社 <br />
                        <font class="book_publish">出版时间：2009年10月</font><br />
                        定价：￥28.00<br />
                        当当价：￥17.40
                    </dd>
                </dl>
            </div>
        </div>
        <!--重点关注-->
        <div class="book_sort">
            <div class="book_new">
                <div class="book_left">重点关注</div>
            </div>
            <div class="book_class" style="height:380px;">
                <dl id="book_focus">
                    <dt><img src="images/dd_focus_1.jpg" alt="focus"/></dt>
                    <dt><img src="images/dd_focus_2.jpg" alt="focus"/></dt>
                    <dt><img src="images/dd_focus_3.jpg" alt="focus"/></dt>
                    <dt><img src="images/dd_focus_4.jpg" alt="focus"/></dt>
                    <dd><a href="#" class="blue">郑玉巧育儿经&middot;幼儿卷</a></dd>
                    <dd><a href="#" class="blue">蹦蹦和跳跳的故事(全10册)</a></dd>
                    <dd><a href="#" class="blue">人体自有大药(让每一个人都能变成...</a></dd>
                    <dd><a href="#" class="blue">特效穴位使用手册</a></dd>
                    <dd>定价：￥49.80<br />
                        当当价：￥32.00</dd>
                    <dd>定价：￥50.00<br />
                        当当价：￥33.00</dd>
                    <dd>定价：￥29.00<br />
                        当当价：￥19.40</dd>
                    <dd>定价：￥29.00<br />
                        当当价：￥19.40</dd>
                    <dt><img src="images/dd_focus_5.jpg" alt="focus"/></dt>
                    <dt><img src="images/dd_focus_6.jpg" alt="focus"/></dt>
                    <dt><img src="images/dd_focus_7.jpg" alt="focus"/></dt>
                    <dt><img src="images/dd_focus_8.jpg" alt="focus"/></dt>
                    <dd><a href="#" class="blue">《猫武士系列》（全6册）</a></dd>
                    <dd><a href="#" class="blue">求医不如求己养生救命大宝典</a></dd>
                    <dd><a href="#" class="blue">雅思词汇词根+联想记忆法</a></dd>
                    <dd><a href="#" class="blue">等待Nemo的日子</a></dd>
                    <dd>定价：￥120.00<br />
                        当当价：￥79.20</dd>
                    <dd>定价：￥198.00<br />
                        当当价：￥116.90</dd>
                    <dd>定价：￥28.00<br />
                        当当价：￥18.70</dd>
                    <dd>定价：￥26.00<br />
                        当当价：￥17.90</dd>
                </dl>
            </div>
        </div>
    </div>
    <!--中间部分结束-->
    <!--右侧部分开始-->
    <div id="silder">
        <!--书讯快递-->
        <div class="book_sort">
            <div class="book_sort_bg"><img src="images/dd_book_mess.gif" alt="mess" style=" vertical-align:text-bottom;"/>书讯快递</div>
            <div class="book_class">
                <div id="dome">
                    <div id="dome1">
                        <ul id="express">
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书>></li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书>></li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书>></li>
                            <li>・弗洛伊德作品精选集59折</li>
                            <li>・2010考研英语大纲到货75折...</li>
                            <li>・权威定本四大名著（人民文...</li>
                            <li>・口述历史权威唐德刚先生国...</li>
                            <li>・袁伟民与体坛风云：实话实...</li>
                            <li>・我们台湾这些年：轰动两岸...</li>
                            <li>・畅销教辅推荐：精品套书50...</li>
                            <li>・2010版法律硕士联考大纲75...</li>
                            <li>・计算机新书畅销书75折抢购</li>
                            <li>・2009年孩子最喜欢的书>></li>
                            <li>・弗洛伊德作品精选集59折</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="book_express_avder"> <img src="images/dd_book_right_adver1.jpg" alt="adver" style="margin-bottom:5px;" /> <img src="images/dd_book_right_adver2.gif" alt="adver" /> </div>
        </div>
        <!--近7日畅销榜-->
        <div class="book_sort">
            <div class="book_seven_title">近7日畅销榜 <img src="images/dd_bang.gif" alt="bang" style="vertical-align:top;"/></div>
            <div class="book_seven_border">
                <div class="book_seven_top">
                    <ul id="book_seven_cate">
                        <li>动漫</li>
                        <li>小说</li>
                        <li>外语</li>
                        <li>旅游</li>
                        <li>励志</li>
                    </ul>
                </div>
                <div class="book_seven_content">
                    <div class="book_seven_content_left">
                        <dl id="book_seven_number">
                            <dt><img src="images/dd_book_no_01.gif" alt="book"/></dt>
                            <dt><img src="images/dd_book_no_02.gif" alt="book"/></dt>
                            <dt><img src="images/dd_book_no_03.gif" alt="book"/></dt>
                            <dd><img src="images/dd_book_no_04.gif" alt="book"/></dd>
                            <dd><img src="images/dd_book_no_05.gif" alt="book"/></dd>
                            <dd><img src="images/dd_book_no_06.gif" alt="book"/></dd>
                            <dd><img src="images/dd_book_no_07.gif" alt="book"/></dd>
                            <dd><img src="images/dd_book_no_08.gif" alt="book"/></dd>
                        </dl>
                    </div>
                    <div class="book_seven_content_right">
                        <!--励志开始-->
                        <div id="book_seven_hearten">
                            <dl>
                                <dt><img src="images/dd_seven_hearten_01.jpg" alt="hearten" /></dt>
                                <dd>
                                    <a href="#" class="blue">不抱怨的世界</a><br />
                                    作者：（美）鲍温<br />
                                    出版社：陕西师范<br />
                                    出版时间：2009年4月
                                </dd>
                                <dt><img src="images/dd_seven_hearten_02.jpg" alt="hearten" /></dt>
                                <dd>
                                    <a href="#" class="blue">遇见未知的自己</a><br />
                                    作者：张德芬 <br />
                                    出版社：华夏出版<br />
                                    出版时间：2008年1月
                                </dd>
                                <dt><img src="images/dd_seven_hearten_03.jpg" alt="hearten" /></dt>
                                <dd>
                                    <a href="#" class="blue">活法</a><br />
                                    作者：（日）稻盛<br />
                                    出版社：东方出版<br />
                                    出版时间：2005年3月
                                </dd>
                            </dl>
                            <ul>
                                <li><a href="#" class="blue">高效能人士的七个习惯</a></li>
                                <li><a href="#" class="blue">被迫强大</a></li>
                                <li><a href="#" class="blue">遇见心想事成的自己</a></li>
                                <li><a href="#" class="blue">世界上最伟大的推销员</a></li>
                                <li><a href="#" class="blue">我的成功可以复制</a></li>
                            </ul>
                        </div>
                        <!--励志结束-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->
</div>
<!--网站版权部分开始-->
<div id="footer">
    <div class="footer_top"><a href="#" target="_parent" class="footer_dull_red">公司简介</a> | <a href="#" target="_parent" class="footer_dull_red">诚证英才</a> | <a href="#" target="_parent" class="footer_dull_red">网站联盟</a> | <a href="#" target="_parent" class="footer_dull_red">百货招商</a> | <a href="#" target="_parent" class="footer_dull_red">交易条款</a></div>
    <iframe src="footer.html" height="50px" width="900px" frameborder="0"></iframe>
</div>
</body>
</html>
