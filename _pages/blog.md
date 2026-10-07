---
layout: default
permalink: /blog/
title: blog
nav: true
nav_order: 1
---

<div class="post">
  <header class="post-header">
    <h1 class="post-title">{{ site.blog_name | default: page.title }}</h1>
  </header>

  <ul class="blog-list">
    {% for post in site.posts %}
      <li>
        {% if post.redirect == blank %}
          <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
        {% elsif post.redirect contains '://' %}
          <a href="{{ post.redirect }}" target="_blank" rel="noopener noreferrer">{{ post.title }}</a>
        {% else %}
          <a href="{{ post.redirect | relative_url }}">{{ post.title }}</a>
        {% endif %}
        <time datetime="{{ post.date | date_to_xmlschema }}">[{{ post.date | date: '%d %B %Y' }}]</time>
      </li>
    {% endfor %}
  </ul>
</div>
