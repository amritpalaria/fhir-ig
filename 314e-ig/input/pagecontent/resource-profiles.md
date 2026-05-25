# Resource Profiles

{% assign profiles = site.data.artifacts.StructureDefinition
  | where: "kind", "resource" %}

<table class="grid">
    <tr>
        <th>Name</th>
        <th>Description</th>
    </tr>

{% for p in profiles %}
    {% assign item = p[1] %}
    <tr>
        <td>
            <a href="{{ item.reference }}">{{ item.display }}</a>
        </td>
        <td>
            {{ item.description }}
        </td>
    </tr>
{% endfor %}

</table>
