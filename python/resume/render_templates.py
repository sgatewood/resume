import base64
import pathlib
import shutil

import pdfkit
import yaml
from jinja2 import Template

repo_root = pathlib.Path(__file__).parent.parent.parent
templates_dir = repo_root / "templates"
output_dir = repo_root / "rendered"
assets_dir = repo_root / "assets"
css_file = repo_root / "style.css"


class TemplateFile:

    def __init__(self, template_file: pathlib.Path) -> None:
        self.template_file = template_file

    def render_using(self, yaml_file: pathlib.Path, output_file: pathlib.Path) -> None:
        template = Template(self.template_file.read_text(), comment_start_string='<no jinja comments>')
        template.globals["icon_file_to_base64_string"] = icon_file_to_base64_string
        output_file.write_text(
            template.render(yaml.load(yaml_file.read_text(), yaml.Loader))
        )


def setup_directories() -> None:
    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir()
    (output_dir / css_file.name).symlink_to(
        css_file.relative_to(output_dir, walk_up=True)
    )  # Makes the HTML work locally
    (output_dir / assets_dir.name).symlink_to(
        assets_dir.relative_to(output_dir, walk_up=True)
    )


def render_templates() -> None:
    resume_yaml = repo_root / "resume.yaml"
    for file in templates_dir.glob("**/*"):
        output_file = output_dir / file.with_stem("resume").name
        TemplateFile(file).render_using(resume_yaml, output_file)


def generate_pdf() -> None:
    pdfkit.from_file(
        input=str(output_dir / "resume.html"),
        output_path=output_dir / "sean-gatewood-resume.pdf",
        css=css_file,
        options={"page-size": "Letter", "enable-local-file-access": ""},
    )


def icon_file_to_base64_string(icon_file_name: str) -> str:
    image_data = (assets_dir / icon_file_name).read_bytes()
    return base64.b64encode(image_data).decode()


if __name__ == "__main__":
    setup_directories()
    render_templates()
    generate_pdf()
