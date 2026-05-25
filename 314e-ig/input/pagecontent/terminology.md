# Terminology

## Code Systems

{% assign cs = site.data.artifacts.CodeSystem %}

<table class="grid">
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>

{% for c in cs %}
  <tr>
    <td><a href="{{ c.url }}">{{ c.name }}</a></td>
    <td>{{ c.description }}</td>
  </tr>
{% endfor %}
</table>

## Value Sets

{% assign vs = site.data.artifacts.ValueSet %}

<table class="grid">
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>

{% for v in vs %}
  <tr>
    <td><a href="{{ v.url }}">{{ v.name }}</a></td>
    <td>{{ v.description }}</td>
  </tr>
{% endfor %}
</table>
