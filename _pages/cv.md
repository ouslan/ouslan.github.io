---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======

* M.S. in Statistical Mathematics, University of Puerto Rico, Mayagüez — *Expected May 2026*
  * GPA: 3.36
* AEA Summer Program, Howard University — *May–July 2025*
  * GPA: 3.75
* B.A. in Economics, University of Puerto Rico, Mayagüez — *May 2024*
  * GPA: 3.50

Awards & Publications
======

* **Economic Report for the Governor 2023**, Puerto Rico Planning Board — *May 2024*
  * Calculated the Human Development Index (HDI) for Puerto Rico (2012–2023)
  * Contributed a chapter to the Economic Report
  * [Read report (PDF)](https://jp.pr.gov/wp-content/uploads/2024/07/IEG2023-OCE-SA-2024-08598.pdf)
* **Best Graduate Research, Symposium on Applied Economics**, UPRM — *June 2025*
  * 2nd place award for research on minimum wage effects across sectors
  * Used uncensored QCEW data and Bayesian panel regression
* **Medal of the Department**, UPRM — *May 2024*
  * Awarded for excellence in undergraduate research and high GPA
* **X International Conference in Statistics and Operational Research**, University of Salamanca — *July 2023*
  * Published work on advanced research tools (Python, SQL)
  * DOI: [10.14201/0AQ0368](https://doi.org/10.14201/0AQ0368)

Experience
======

* **Puerto Rico Planning Board** — Lead Developer  
  *Mayagüez, PR | Jan. 2024 – Jul. 2025*  
  * Led a 15-person team to develop economic data pipelines  
  * Built web apps using Django (frontend) and FastAPI (backend)  
  * Automated ingestion into SQL DBs from PR & US government APIs  
  * Set up CI/CD with GitHub Actions, Docker, and Nix

* **Food Security Data Center (SEA), UPRM** — Lead Developer  
  *Mayagüez, PR | Sept. 2023 – Jul. 2025*  
  * Led team of 5 to build platforms for Agricultural Station  
  * Used IPUMS data to compute caloric intake by county  
  * Created automation for QCEW food establishment reports

* **Agricultural Coffee Survey (SEA), UPRM** — Lead Developer  
  *Mayagüez, PR | Mar. 2024 – Jul. 2025*  
  * Built digital tools for farmer field surveys  
  * Automated report generation from survey responses

* **AEASP, Howard University** — AEA Scholar  
  *Washington, DC | May 2024 – Jul. 2024*  
  * Researched travel times and road infrastructure with Census Bureau  
  * Used spatial regression across PUMAs (2012–2019)

* **LEADING Hispanics, USDA** — Research Assistant  
  *Mayagüez, PR | Sept. 2023 – Aug. 2024*  
  * Analyzed links between food deserts and chronic disease rates  
  * Applied Bayesian Spatial Durbin Model to uncensored QCEW data

* **RUMbo EX, UPRM** — Tutor (Statistics & Economics)  
  *Mayagüez, PR | Sept. 2023 – Jan. 2024*  
  * Tutored undergraduate students in economics, calculus, statistics  
  * Led individual and group sessions; prepared mock exams

* **L’SPACE HYDROS, NASA** — Intern  
  *Mayagüez, PR | Jan. 2020 – May 2020*  
  * Designed lunar drone concept for water extraction  
  * Managed project budget under \$10 million cap

Extracurricular Activities
======

* **University of Salamanca** — Guest Lecturer  
  *Salamanca, Spain | Mar. 2023*  
  * Taught Data Science & Research Automation to political science students  
  * Led workshops on web scraping and APIs in Python

* **Economics Student Association, UPRM** — Treasurer  
  *Mayagüez, PR | Aug. 2021 – Jun. 2022*  
  * Managed budget, organized fundraising for conferences

* **Student Money Association, UPRM** — Student Advisor  
  *Mayagüez, PR | Sept. 2019 – Jun. 2022*  
  * Helped students build budgets and improve financial literacy  
  * Promoted responsible money management on campus

Skills & Interests
======

* **Skills**: Python, Rust, R, STATA, LaTeX, SQL, Git, Machine Learning, GIS, GAM, Docker, DevOps, Nix, PyMC  
* **Interests**: Macroeconomics, Spatial Econometrics, Bayesian Inference, Time Series Analysis, Causal Inference

Publications
======

<ul>
  {% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}
</ul>

Talks
======

<ul>
  {% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}
</ul>

Teaching
======

<ul>
  {% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}
</ul>

Service and Leadership
======

* Former Treasurer, Economics Student Association  
* Guest Lecturer, University of Salamanca  
* Advisor, Student Money Association
