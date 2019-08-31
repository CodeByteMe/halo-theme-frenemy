<#macro layout title,keywords,description,bodyClass>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title!}</title>
    <meta name="description" content="${description!}" />
    <meta name="Keywords" content="${keywords!}" />
    <@global.head/>
    <link type="text/css" rel="stylesheet" href="${static}/assets/fonts/css/font-awesome.css"/>
    <link type="text/css" rel="stylesheet" href="${static}/assets/bootstrap/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="${static}/assets/app/css/app.min.css?ver=1153"/>
</head>
<body class="${bodyClass}">
<div class="site-warp">
    <header class="site-header fixed-top">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="${context!}">${options.blog_title!}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <@menuTag method="list">
                            <#list menus as menu>
                                <li class="nav-item"><!-- 选中菜单添加  .active -->
                                    <a class="nav-link" href="${menu.url!}">${menu.name!}</a>
                                </li>
                            </#list>
                        </@menuTag>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <#nested />
    <footer class="site-footer">
        <div class="container d-flex justify-content-sm-between justify-content-center text-center">
            <div class="copyright">
                <p>Powered by <a href="https://halo.run" target="_blank">Halo</a>. Copyright &copy; 2019. Crafted with <a href="https://github.com/JaxsonWang/Frenemy" target="_blank">Frenemy</a>.</p>
            </div>
            <nav class="social-links d-none d-sm-block">
                <ul>
                    <li class="social-link"><a href="#"><i class="fab fa-weibo"></i></a></li>
                    <li class="social-link"><a href="#"><i class="fab fa-twitter"></i></a></li>
                </ul>
            </nav>
        </div>
    </footer>
    <div id="return-to-top" class="animated"><i class="fas fa-angle-double-up"></i></div>
</div>

<script type="text/javascript" src="${static}/assets/jquery/jquery.js"></script>
<script type="text/javascript" src="${static}/assets/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="${static}/assets/pivot/pivot.js"></script>
<script type="text/javascript" src="${static}/assets/app/js/app.min.js?ver=1153"></script>
</body>
</html>
</#macro>