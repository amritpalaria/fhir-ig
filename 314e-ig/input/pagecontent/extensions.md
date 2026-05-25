# Extensions

| Name | Description |
| :--- | :--- |
{% assign profiles = site.data.structuredefinitions -%}
{%- for p in profiles -%}
  {%- assign item = p[1] -%}
  {%- if item.type == "Extension" -%}
| [{{ item.title }}]({{ item.path }}) | {{ item.description | strip_newlines }} |
  {%- endif -%}
{%- endfor %}
