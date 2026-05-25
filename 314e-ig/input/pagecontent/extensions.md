# Extensions

| Name | Description |
| :--- | :--- |
{% for p in site.data.structuredefinitions -%}
  {%- assign item = p[1] -%}
  {%- if item.type == "Extension" -%}
| [{{ item.title }}]({{ item.path }}) | {{ item.description }} |
  {%- endif -%}
{%- endfor %}
