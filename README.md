Liquid-Sort
===

A custom tag for the Liquid templating engine (and therefore Jekyll) that allows you to sort an array by a key.

Usage
---

If you're using Jekyll you can simply clone this repository into your `_plugins` folder to begin using it, otherwise place it somewhere where it will be read by your application.

To use it, place it somewhere where it can access the array you'd like to sort. For example, using the [Liquid-GitHub](/ZaneA/Liquid-GitHub) extension:

```html+jinja
{% github user: ZaneA %}
  {% sort var: repos by: pushed_at direction: up %}
  {% for repo in repos %}
    <h3>{{ repo.name }}</h3>
    {{ repo.description | markdownify }}
  {% endfor %}
{% endgithub %}
```

I also use it along with the [Jekyll-Models](/krazykylep/Jekyll-Models) extension:

```html+jinja
{% sort var: site.projects by: mdl_name %}
```
