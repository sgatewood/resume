# {{ name }}

{{ contact.email }} |
[LinkedIn]({{contact.linkedin.link}}) |
[GitHub]({{contact.github.link}})

---

## 🔍 Summary

{{ summary }}

---

## 💼 Experience
{% for job in experience %}
#### **{{ job.title }}**, {{ job.company }}
({{ job.location }}) {{ job.dates }}
- {{ job.notes | join('\n- ') }}
{% endfor %}

---

## 💪 Skills
(non-comprehensive)

- **Languages:** {{ skills['main languages'] | join(', ') }}
- **Cloud Platforms:** {{ skills['cloud platforms'] | join(', ') }}
- **Kubernetes:** {{ skills['kubernetes'] | join(', ') }}
- **Monitoring:** {{ skills['monitoring'] | join(', ') }}
- **IaC:** {{ skills['iac'] | join(', ') }}
- **CI/CD:** {{ skills['ci/cd'] | join(', ') }}
- **Other technologies:** {{ skills['main other technologies'] | join(', ') }}
- **Cloud Infra ("I've terraformed it!"):** {{ skills['cloud infra'] | join(', ') }}
- **Also worked with:** {{ skills['also worked with'] | join(', ') }}

---

## 💻 Projects
{% for project in projects %}
#### **{% if 'link' in project %}[{{ project.name }}]({{ project.link }}){% else %}{{ project.name }}{% endif %}**
{{ project.dates }}
- {{ project.notes | join('\n- ') }}
{% endfor %}

---

## 🎓 Education
**{{ education.school }}** ({{education.graduation}}) {{ education['school titles'] | join(', ') }}
- {{ education.degree }}. GPA {{ education.gpa }}
**Notable Courses:** {{ education['notable courses'] | join(', ') }}

