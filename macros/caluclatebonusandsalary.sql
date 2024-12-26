{% macro caluclatebonusandsalary  (columnname1,columnname2) -%}
{{ columnname1 }} + {{ columnname2 }}
{%- endmacro %}