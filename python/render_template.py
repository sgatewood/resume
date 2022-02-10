import sys

import yaml
from jinja2 import Template

assert len(sys.argv) == 3, f"Usage: python3 {sys.argv[0]} <template_file>, <yaml_file>"
template_file, yaml_file = sys.argv[1:]


def read_file(path: str) -> str:
    with open(path) as f:
        return f.read()


template = Template(read_file(template_file))
values = yaml.load(read_file(yaml_file), yaml.Loader)
print(template.render(values))
