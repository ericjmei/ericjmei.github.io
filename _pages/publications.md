---
layout: modern
title: "Publications"
permalink: /publications/
---

<div class="panel">
  <div class="modern-section-header">
    <span class="eyebrow">Papers & articles</span>
    <h1>Publications</h1>
    <p>Recent work on atmospheric chemistry, methane, and air quality. For the complete list with citation metrics, visit my <a href="{{ site.author.googlescholar }}">Google Scholar profile</a>.</p>
  </div>

  <div class="pub-list">
    {% assign pubs = site.publications | sort: "date" | reverse %}
    {% for pub in pubs %}
      <article class="pub-card">
        <div class="pub-meta">
          <div class="pub-year">{{ pub.date | default: "1900-01-01" | date: "%Y" }}</div>
          {% if pub.venue %}
            <div class="pub-venue">{{ pub.venue }}</div>
          {% endif %}
        </div>
        <div>
          <h3 class="pub-title">{{ pub.title }}</h3>
          {% if pub.citation %}
            <p class="pub-citation">{{ pub.citation | strip_newlines | strip }}</p>
          {% endif %}
          <div class="pub-actions">
            {% if pub.paperurl %}
              <a class="button button--ghost" href="{{ pub.paperurl }}">Read paper</a>
            {% endif %}
          </div>
        </div>
      </article>
    {% endfor %}
  </div>
</div>
