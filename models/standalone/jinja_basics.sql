{#

{% set my_cool_string =  'wow, so cool' %}
{% set my_second_cool_string = 'woooowiww so nice' %}
{% set my_cool_number = 23 %}

{% set my_animals = ['lemur', 'wolf', 'panther', 'tardigrade'] %}

{% for animal in my_animals %}
    My favorite animal is the {{animal}}
{% endfor %}

{% set temperature = 45 %}
{% if temperature < 65 %}
    Time for a cappu
{% else %}
    Time for a cold brew
{% endif %}

#}

{% set foods = ['carrot', 'hotdog', 'cucumber', 'tomato'] %}

{% for food in foods %}
    {% if food == 'hotdog' %}
    {% set foodtype = 'snack' %}
{% else %}
    {% set foodtype = 'veggie' %}
{% endif %}

The humble {{food}} is my fav {{foodtype}}
{% endfor %}