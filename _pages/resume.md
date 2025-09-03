---
permalink: /resume/
layout: single
title: "Resume"
classes: wide
author_profile: false
---

# Resume

{% assign r = site.data.resume %}

{% if site.portfolio.resume_pdf_path %}
Download as PDF: [Download]({{ site.portfolio.resume_pdf_path }})
{: .notice--primary }
{% endif %}

{% if r.summary %}
## Summary
{{ r.summary }}
{% endif %}

{% if r.contact %}
## Contact
{% if r.contact.email %}**Email:** <{{ r.contact.email }}>{% endif %}{% if r.contact.location %}<br/>**Location:** {{ r.contact.location }}{% endif %}{% if r.contact.website %}<br/>**Website:** [{{ r.contact.website }}]({{ r.contact.website }}){% endif %}{% if r.contact.github %}<br/>**GitHub:** [{{ r.contact.github | split: '/' | last }}]({{ r.contact.github }}){% endif %}{% if r.contact.linkedin %}<br/>**LinkedIn:** [Profile]({{ r.contact.linkedin }}){% endif %}
{% endif %}

{% if r.skills %}
## Skills
<div class="skills-grid">
{% for group in r.skills %}
**{{ group.category }}:** {{ group.items | join: ', ' }}  
{% endfor %}
</div>
{% endif %}

{% if r.experience %}
## Experience
{% for job in r.experience %}
**{{ job.role }} – {{ job.company }}** ({{ job.start }} – {{ job.end }})  
*{{ job.location }}*  
{% if job.achievements %}
<ul>
{% for a in job.achievements %}<li>{{ a }}</li>{% endfor %}
</ul>
{% endif %}
{% endfor %}
{% endif %}

{% if r.projects %}
## Selected Projects
{% for p in r.projects %}
**{{ p.name }}**{% if p.url %} – [View]({{ p.url }}){% endif %}  
{{ p.description }}  
_Tech:_ {{ p.tech | join: ', ' }}
{% endfor %}
{% endif %}

{% if r.education %}
## Education
{% for e in r.education %}
**{{ e.degree }} in {{ e.field }}**, {{ e.institution }} ({{ e.graduation }})  
*{{ e.location }}*
{% endfor %}
{% endif %}

{% if r.certifications %}
## Certifications
<ul>
{% for c in r.certifications %}<li>{{ c.name }} – {{ c.issuer }} ({{ c.year }})</li>{% endfor %}
</ul>
{% endif %}

{% if r.languages %}
## Languages
<ul>
{% for l in r.languages %}<li>{{ l.name }} – {{ l.level }}</li>{% endfor %}
</ul>
{% endif %}

{% if r.extras %}
## Additional
{% if r.extras.interests %}**Interests:** {{ r.extras.interests | join: ', ' }}  {% endif %}
{% if r.extras.volunteering %}
**Volunteering:**
<ul>
{% for v in r.extras.volunteering %}<li>{{ v.description }}</li>{% endfor %}
</ul>
{% endif %}
{% endif %}
