# Complex Datatypes

{% assign profiles = site.data.structuredefinitions %}

<table class="grid">
    <tr>
        <th>Name</th>
        <th>Description</th>
    </tr>
{% for p in profiles %}
    {% assign item = p[1] %}
    {% if item.type != "Extension" and item.kind == "complex-type" %}
    <tr>
        <td><a href="{{ item.path }}">{{ item.title }}</a></td>
        <td>{{ item.description }}</td>
    </tr>
    {% endif %}
{% endfor %}
</table>

