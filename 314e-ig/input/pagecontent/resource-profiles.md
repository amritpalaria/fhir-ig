# Resource Profiles

{% assign profiles = site.data.artifacts.StructureDefinition
  | where: "kind", "resource" %}

<table class="grid">
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>

{% for p in profiles %}
  <tr>
    <td>
      <a href="{{ p.reference }}">{{ p.display }}</a>
    </td>
    <td>
      {{ p.description }}
    </td>
  </tr>
{% endfor %}

</table>
