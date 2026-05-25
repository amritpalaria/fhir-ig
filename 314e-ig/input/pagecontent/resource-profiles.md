# Resource Profiles

{% assign profiles = site.data.structuredefinitions %}

<table class="grid">
    <tr>
        <th>Name</th>
        <th>Description</th>
    </tr>
{% for p in profiles %}
    {% assign item = p[1] %}
    {% if item.kind == "resource" %}
    <tr>
        <td><a href="{{ item.path }}">{{ item.title }}</a></td>
        <td>{{ item.description | strip_newlines }}</td>
    </tr>
    {% endif %}
{% endfor %}
</table>
