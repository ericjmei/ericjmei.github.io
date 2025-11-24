---
layout: modern
title: "Publications"
permalink: /publications/
---

<div class="section">
  <span class="tagline">Papers & articles</span>
  <h1>Publications</h1>
  <p class="lede">Recent work on atmospheric chemistry, methane, and air quality. For the complete list with citation metrics, visit my <a href="{{ site.author.googlescholar }}">Google Scholar profile</a>.</p>

  <ul class="pub-list">
    {% assign pubs = site.publications | sort: "date" | reverse %}
    {% for pub in pubs %}
      <li class="pub-item">
        <div class="meta">
          {{ pub.date | default: "1900-01-01" | date: "%Y" }}{% if pub.venue %} · {{ pub.venue }}{% endif %}
        </div>
        <h3>{{ pub.title }}</h3>
        {% if pub.citation %}
          <p class="citation">{{ pub.citation | strip_newlines | strip }}</p>
        {% endif %}
        <div class="pub-actions">
          {% if pub.paperurl %}
            <a class="link-btn" href="{{ pub.paperurl }}">Read paper</a>
          {% endif %}
        </div>
      </li>
    {% endfor %}
  </ul>
</div>
