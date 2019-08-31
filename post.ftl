<#include "components/layout.ftl">
<@layout title="${post.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" bodyClass="post-template">
    <#if post.thumbnail?? && post.thumbnail!=''>
        <section class="site-hero responsive-title-img" style="background-image: url('${post.thumbnail!});">
    <#else>
        <section class="site-hero responsive-title-no-img">
    </#if>
        <div class="container">
            <div class="hero-content">
                <h1 class="post-full-title">${post.title!}</h1>
                <section class="post-full-meta">
                    <time class="post-full-meta-date" datetime="${post.createTime?string('yyyy-MM-dd')}">${post.createTime?string('yyyy年MM月dd日')}</time>
                    <span class="date-divider">/</span>
                    <#if categories?? && categories?size gt 0>
                        <a href="${context!}/categories/${categories[0].slugName!}">${categories[0].name}</a>
                        <span class="date-divider">/</span>
                    </#if>
                    <span class="post-full-meta-visitors">
                        <i class="post-meta-item-text">阅读量 </i>
                        <i class="leancloud-visitors-count">${post.visits?c}</i>
                      </span>
                </section>
            </div>
        </div>
    </section>
    <main class="site-main container">
        <div class="inner row">
            <article>
                <section class="post-content">
                    ${post.formatContent!}
                </section>
            </article>
            <ul class="post-copyright">
                <li class="post-copyright-author">
                    <strong>文章作者： </strong>${user.nickname!}</li>
                <li class="post-copyright-link">
                    <strong>文章链接：</strong>
                    <a href="${context!}/archives/${post.url!}" title="${post.title!}">${context!}/archives/${post.url!}</a>
                </li>
                <li class="post-copyright-license">
                    <strong>版权声明： </strong>本博客所有文章除特别声明外，均采用 <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" rel="external nofollow" target="_blank">CC BY-NC-SA 4.0</a> 许可协议。转载请注明出处！
                </li>
            </ul>
            <div class="post-comments">
                <!-- 这里放置评论框 -->
                <#include "components/comment.ftl">
                <@comment post,"post" />
            </div>
        </div>
    </main>
</@layout>