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
    <link type="text/css" rel="stylesheet" href="${static}/assets/app/css/app.min.css"/>
</head>
<body class="${bodyClass}">
<div class="site-warp">
    <header class="site-header fixed-top">
        <nav class="navbar navbar-expand-md navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="${context!}">${options.blog_title!}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <@menuTag method="list">
                            <#list menus?sort_by('priority') as menu>
                                <li class="nav-item"><!-- 选中菜单添加  .active -->
                                    <a class="nav-link" href="${menu.url!}">${menu.name!}</a>
                                </li>
                            </#list>
                        </@menuTag>
                        <li class="nav-item m-0 d-none d-md-block d-lg-block d-xl-block">
                            <form method="get" action="/search">
                                <div class="site-searchbar">
                                    <label for="nav-top-search"></label>
                                    <input id="nav-top-search" class="search-input" name="keyword" type="text" placeholder="Search...">
                                    <a class="search-icon"><i class="fas fa-search"></i></a>
                                </div>
                            </form>
                        </li>
                        <li class="nav-item d-block d-md-none d-lg-none d-xl-none">
                            <form class="mobile-search" method="get" action="/search">
                                <div class="input-group">
                                    <input type="text" class="mobile-search-input form-control" name="keyword" placeholder="Search..." aria-label="Search Input">
                                </div>
                            </form>
                        </li>
                        <li class="nav-item">
                            <label class="dark-switch-label" for="darkSwitch">
                                <a class="dark-switch-label-span" data-toggle="tooltip" data-placement="bottom" title="日夜模式">
                                    <i class="fas fa-sun"></i>
                                </a>
                            </label>
                            <input type="checkbox" class="custom-control-input" id="darkSwitch">
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <#nested />
    <footer class="site-footer">
        <div class="container d-flex justify-content-sm-between justify-content-center text-center">
            <div class="copyright">
                <p>Powered by <a href="https://halo.run" target="_blank">Halo</a>. Copyright &copy; ${.now?string('yyyy')}. Crafted with <a href="https://github.com/JaxsonWang/Frenemy" target="_blank" rel="noopener nofollow">Frenemy</a>.</p>
            </div>
            <nav class="social-links d-none d-sm-block">
                <ul>
                    <li class="social-link"><a href="#"><i class="fab fa-weibo"></i></a></li>
                    <li class="social-link"><a href="#"><i class="fab fa-twitter"></i></a></li>
                </ul>
            </nav>
        </div>
        <div class="container copyright text-center">
            <p>
                <@global.footer />
            </p>
        </div>
    </footer>
    <div id="return-to-top" class="fixed-tools animated"><i class="fas fa-angle-double-up"></i></div>
</div>

<script type="text/javascript" src="${static}/assets/jquery/jquery.js"></script>
<script type="text/javascript" src="${static}/assets/bootstrap/bootstrap.js"></script>
<script type="text/javascript" src="${static}/assets/pivot/pivot.js"></script>
<script type="text/javascript" src="${static}/assets/app/js/app.min.js"></script>
</body>
</html>
</#macro>