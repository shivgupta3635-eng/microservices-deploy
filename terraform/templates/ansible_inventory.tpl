[app]
{% for ip in hosts -%}
{{ ip }} ansible_user={{ ssh_user }}
{% endfor -%}

[monitoring:children]
app

[all:vars]
ansible_python_interpreter=/usr/bin/python3
