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
    <td><a href="{{ c.reference }}">{{ c.display }}</a></td>
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
    <td><a href="{{ v.reference }}">{{ v.display }}</a></td>
    <td>{{ v.description }}</td>
  </tr>
{% endfor %}
</table>
