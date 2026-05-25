# Resource Profiles

{% assign profiles = site.data.structuredefinitions
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
            <a href="{{ item.path }}">{{ item.title }}</a>
        </td>
        <td>
            {{ item.description }}
        </td>
    </tr>
{% endfor %}

</table>
