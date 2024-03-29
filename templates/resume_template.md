# {{ name }}

{{ contact.email }} |
[LinkedIn]({{contact.linkedin.link}}) |
[GitHub]({{contact.github.link}})

---

## 🎓 Education
**{{ education.school }}** ({{education.graduation}}) {{ education['school titles'] | join(', ') }}
- {{ education.degree }}. GPA {{ education.gpa }}
**Notable Courses:** {{ education['notable courses'] | join(', ') }}

---

## 💼 Experience
{% for job in experience %}
#### **{{ job.title }}**, {{ job.company }}
({{ job.location }}) {{ job.dates }}
- {{ job.notes | join('\n- ') }}
{% endfor %}

---

## 💪 Skills
(non-comprehensive, in order of proficiency)

- **Languages:** {{ skills['main languages'] | join(', ') }}
- **Other technologies:** {{ skills['main other technologies'] | join(', ') }}
- **Also worked with:** {{ skills['also worked with'] | join(', ') }}

---

## 💻 Projects
{% for project in projects %}
#### **{% if 'link' in project %}[{{ project.name }}]({{ project.link }}){% else %}{{ project.name }}{% endif %}**
{{ project.dates }}
- {{ project.notes | join('\n- ') }}
{% endfor %}
