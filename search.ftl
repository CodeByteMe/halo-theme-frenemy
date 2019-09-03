<#include "components/layout.ftl">
<@layout title="搜索：${keyword!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" bodyClass="home-template">
  <section class="site-hero responsive-title-img" style="background-image: url('${settings.index_cover!'${static}/assets/images/hero-background.jpg'}');">
    <div class="container">
      <div class="hero-content">
        <h1 class="site-name">搜索：${keyword!}</h1>
      </div>
    </div>
  </section>
  <main class="site-main container">
    <div class="inner row">
      <div class="site-post-list">
        <div class="post-list">
          <#list posts.content as post>
            <article class="post-card <#if post_index%2=1>align-left<#else>align-right</#if>">
              <a href="${context!}/archives/${post.url!}" class="post-card-image-link">
                <div class="post-card-image" style="background-image: url(${post.thumbnail!})"></div>
              </a>
              <div class="post-card-content">
                <header>
                  <#if post.tags?? && post.tags?size gt 0>
                    <ul class="post-tags">
                      <#list post.tags as tag>
                        <li class="post-tag"><a href="${context!}/tags/${tag.slugName!}">${tag.name}</a></li>
                      </#list>
                    </ul>
                  </#if>
                  <h3 class="post-card-title"><a href="${context!}/archives/${post.url!}">${post.title!}</a></h3>
                </header>
                <section class="post-card-excerpt">
                  <p>${post.summary!}</p>
                </section>
                <footer class="post-meta">
                  <ul class="author-list">
                    <li class="author-list-item">
                      <a href="${context!}" class="static-avatar">
                        <img class="author-profile-image" src="${user.avatar!}" alt="${user.nickname!}">
                        <span class="author-profile-name">${user.nickname!}</span>
                      </a>
                    </li>
                  </ul>
                  <span class="reading-time"><i class="far fa-clock"></i>  ${post.createTime?string('yyyy-MM-dd')}</span>
                </footer>
              </div>
            </article>
          </#list>
        </div>
      </div>
      <#if posts.totalPages gt 1>
        <div class="site-pagination">
          <nav aria-label="文章分页">
            <ul class="pagination">
              <#if posts.hasPrevious()>
                <#if posts.number == 1>
                  <li class="page-item">
                    <a class="page-link" href="${context!}/search?keyword=${keyword!}" aria-label="上一页">
                      <span aria-hidden="true">
                        <i class="fas fa-angle-left"></i>
                      </span>
                    </a>
                  </li>
                <#else>
                  <li class="page-item">
                    <a class="page-link" href="${context!}/search/page/${posts.number}?keyword=${keyword!}" aria-label="上一页">
                      <span aria-hidden="true">
                        <i class="fas fa-angle-left"></i>
                      </span>
                    </a>
                  </li>
                </#if>
              </#if>
              <#list rainbow as r>
                <#if r == posts.number+1>
                  <li class="page-item active"><span class="page-link">${posts.number+1}</span></li>
                <#else>
                  <li class="page-item"><a class="page-link" href="/search/${context!}/page/${r}?keyword=${keyword!}">${r}</a></li>
                </#if>
              </#list>
              <#if posts.hasNext()>
                <li class="page-item">
                  <a class="page-link" href="${context!}/search/page/${posts.number+2}?keyword=${keyword!}" aria-label="下一页">
                    <span aria-hidden="true">
                      <i class="fas fa-angle-right"></i>
                    </span>
                  </a>
                </li>
              </#if>
            </ul>
          </nav>
        </div>
      </#if>
    </div>
  </main>
</@layout>