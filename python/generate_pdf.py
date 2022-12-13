import pdfkit

pdfkit.from_file(
    input="../rendered/resume.html",
    output_path="../rendered/resume.pdf",
    css="../style.css",
    options={"enable-local-file-access": ""})
