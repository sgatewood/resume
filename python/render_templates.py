import pathlib
import shutil

import pdfkit
import yaml
from jinja2 import Template

root_dir = pathlib.Path("..")
templates_dir = root_dir / "templates"
output_dir = root_dir / "rendered"
css_file = root_dir / "style.css"


class TemplateFile:

    def __init__(self, template_file: pathlib.Path) -> None:
        self.template_file = template_file

    def render_using(self, yaml_file: pathlib.Path, output_file: pathlib.Path) -> None:
        output_file.write_text(
            Template(self.template_file.read_text()).render(
                yaml.load(yaml_file.read_text(), yaml.Loader)
            )
        )


def setup_directories() -> None:
    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir()
    (output_dir / css_file.name).symlink_to(css_file)  # Makes the HTML work locally


def render_templates() -> None:
    resume_yaml = root_dir / "resume.yaml"
    for file in templates_dir.glob('**/*'):
        output_file = output_dir / file.with_stem("resume").name
        TemplateFile(file).render_using(resume_yaml, output_file)


def generate_pdf() -> None:
    pdfkit.from_file(
        input=str(output_dir / "resume.html"),
        output_path=output_dir / "sean-gatewood-resume.pdf",
        css=css_file,
        options={"enable-local-file-access": ""})


if __name__ == "__main__":
    setup_directories()
    render_templates()
    generate_pdf()
