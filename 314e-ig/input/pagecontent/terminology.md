# Terminology

{% assign resources = site.data.resources %}
{% assign artifacts = site.data.artifacts %}

## Code Systems

<table class="grid">
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>

{% for r in resources %}
  {% assign item = r[1] %}
  {% assign current_path = item.path %}
  {% if artifacts[current_path] == "CodeSystem" %}
  <tr>
    <td><a href="{{ item.path }}">{{ item.title }}</a></td>
    <td>{{ item.description }}</td>
  </tr>
  {% endif %}
{% endfor %}
</table>

## Value Sets

<table class="grid">
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>

{% for r in resources %}
  {% assign item = r[1] %}
  {% assign current_path = item.path %}
  {% if artifacts[current_path] == "ValueSet" %}
  <tr>
    <td><a href="{{ item.path }}">{{ item.title }}</a></td>
    <td>{{ item.description }}</td>
  </tr>
  {% endif %}
{% endfor %}
</table>
