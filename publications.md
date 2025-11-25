---
layout: default
title: Publications
---

<h1>Publications</h1>

<ul class="publication-list">
  {% for pub in site.data.publications %}
  <li class="publication-item">
    <span class="publication-title">{{ pub.title }}</span>
    <div class="publication-meta">
      {{ pub.venue }} | {{ pub.date | date: "%Y" }}
    </div>
    <div class="publication-links">
      {% if pub.paperurl %}
      <a href="{{ pub.paperurl }}" target="_blank">Paper</a>
      {% endif %}
    </div>
    <p style="font-size: 0.9rem; margin-top: 0.5rem;">{{ pub.citation }}</p>
  </li>
  {% endfor %}
</ul>
