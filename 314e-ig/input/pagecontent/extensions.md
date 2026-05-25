# Extensions

{% assign exts = site.data.artifacts.StructureDefinition
  | where: "type", "Extension" %}

<table class="grid">
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>

{% for e in exts %}
  <tr>
    <td>
      <a href="{{ e.url }}">{{ e.name }}</a>
    </td>
    <td>
      {{ e.description }}
    </td>
  </tr>
{% endfor %}

</table>
