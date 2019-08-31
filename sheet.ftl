<#include "components/layout.ftl">
<@layout title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" bodyClass="page-template">
  <section class="site-hero responsive-title-img" style="background-image: url('/assets/images/post-header.jpg')">
    <div class="container">
      <div class="hero-content">
        <h1 class="post-full-title">${sheet.title!}</h1>
      </div>
    </div>
  </section>
  <main class="site-main container">
    <div class="inner row">
      <article>
        <section class="post-content">
          ${sheet.formatContent!}
        </section>
      </article>
      <div class="post-comments">
        <!-- 这里放置评论框 -->
        <#include "components/comment.ftl">
        <@comment sheet,"sheet" />
      </div>
    </div>
  </main>
</@layout>
