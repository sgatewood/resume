# Sean Gatewood

hello@sgatewood.dev |
[LinkedIn](https://linkedin.com/in/sean-t-gatewood) |
[GitHub](https://github.com/sgatewood)

---

## 💼 Experience

#### **DevOps Engineer**, Digital Asset
(New York, NY / remote) April 2023 - present
- Develop and maintain infrastructure and automation around critical kubernetes services, applying SRE practices to ensure reliability and minimize manual operational toil.
- Automated the deployment of a new mission-critical service in a dedicated GKE cluster with all supporting cloud infrastructure. Utilized Terraform, Jsonnet, Bash, and Helm to automate deployments and orchestrate complex blockchain migrations. Instrumented monitoring/alerts with DataDog and regularly use it to tune our configuration. Communicated designs with partner companies, helping them overcome similar hurdles and accelerating the launch of our blockchain network. Uptime requirements were extremely high -- any downtime required auditing financial losses.
- Expanded production monitoring capabilities by authoring a custom Prometheus metrics exporter in Go, providing a programmatic framework to close critical gaps in observability.
- Authored a custom k8s operator in Go to streamline our backup/restore process, eliminating manual operational tasks on a product that was entering maintenance mode.
- Developed CI/CD pipelines using Google Cloud Build and CircleCI.
- Participated in on-call rotations, triaging a multitude of production alerts and maintaining the reliability of our services.
- Built isolated blockchain test environments in both k3d (for local dev) and vClusters, enabling developers to effortlessly spin up fully independent networks.

#### **Software Engineer II**, Appian Corporation
(McLean, VA / remote) August 2020 - April 2023
- Worked on a Development Experience team that created and maintained a variety of developer tooling and infrastructure, gaining a unique perspective on usability that continues to shape my tooling designs today.
- Contributed to a remote development solution, including a custom Kubernetes service to lease EC2s and a python tool to build/develop/test the product remotely (rather than on your own machine).
- Architected and developed a Gitlab pipeline to precook warm builds that developers could take and use instantly rather than waiting to build from source, providing an extremely fast setup to "test something on a recent main build."
- Initiated & developed numerous prototypes, many of which shipped (or became real quarter-long features for my team).
- Regularly initiated & led architectural design discussions.
- Regularly unblocked developers by assisting in troubleshooting technical issues, improving our local build stability.
- Treasured high code quality standards and contributed to our data-driven goal to lead the department in code quality.
- Mentored two interns as a Summer Intern Manager, meeting with them weekly to optimize their internship experience.

#### **Software Engineering Intern**, Uber Advanced Technologies Group
(Pittsburgh, PA) May 2019 - August 2019
- Developed and benchmarked alternate implementations for a key-value store using various database technologies.
- Presented results to Uber ATG software engineers.

#### **Teaching Assistant - Introduction to Programming**, University of Virginia
(Charlottesville, VA) Fall 2017 - May 2020
- Assisted hundreds of students with introductory programming concepts in Python.
- Created <a href="https://www.youtube.com/playlist?list=PLeih3T8PoRaYXpRwCVUmCEQqzZ51qyAmD">review videos</a> that have received over 13,000 views.
- Helped manage the course as one of four "Head TAs."

#### **Software Engineering Intern**, NASA Langley Research Center
(Hampton, VA) May 2018 - May 2019
- Created data management tools for "airborne atmospheric composition data"
- Engineered a <a href="https://www-air.larc.nasa.gov/cgi-bin/Driver.cgi?platform=KORUSAQ/DC8_AIRCRAFT">full-stack web application</a> (JQuery, AJAX, cgi, C++) for researchers to create customized data merges.


---

## 💪 Skills
(non-comprehensive)

- **Languages:** Python, Bash, Go, Java, JavaScript, C++, Kotlin
- **Other technologies:** Kubernetes, GCP, Helm / Helmfile, Terraform / Pulumi, CI/CD pipelines (Gitlab, Github Actions, CircleCI, GCB), FluxCD, Istio, MermaidJS, Nix, Feature Flags / LaunchDarkly, Docker, SQL, AWS, Auth0, Grafana, Prometheus, Datadog
- **Cloud Infra ("I've terraformed it!"):** Compute (GKE Cluster, Node Pools, Persistent Disks, Snapshot Schedules, VMs), Networking (VPC, Subnet, Cloud NAT, L7 Application Load Balancer, MCI, Cloud DNS, Google-Managed Certificates), Security (IAM, RBAC, Secrets Manager, Cloud Armor, Service Accounts, Workload Identity)
- **Also worked with:** HTML / CSS, React, Gradle, Django, JQuery, Prometheus, Argo CD, Google chat bots, Chrome Extensions, Intellij Plugins, Autodesk Inventor, LabVIEW

---

## 💻 Projects

#### **[This Resume](https://github.com/sgatewood/resume)**
February 2022 - present
- I didn't have Microsoft Word anymore, so I wrote this in YAML and rendered it into the document you are reading. :-)
- This was just more fun than LaTeX (and it's super nice to tweak my resume with vim and git)

#### **[JobDeployment controller](https://github.com/sgatewood/job-deployment)**
Summer 2025
- Mostly just wanted to get my hands on<a href="https://book.kubebuilder.io/">kubebuilder</a>
- This could in theory solve a DX problem I had with deploying kubernetes jobs from helm

#### **[gcloud-fzf](https://github.com/sgatewood/gcloud-fzf)**
Spring 2025
- Made a go CLI that I wanted for a hyper-specific use case
- The interesting piece is I can install it through my own homebrew tap!

#### **[Portfolio site](https://sgatewood.github.io)**
Spring 2022
- Sorta abused an old Jekyll theme I liked to serve as a portfolio site
- Includes some interesting hacks including dark mode and some MermaidJS magic


---

## 🎓 Education
**University of Virginia** (May 2020) Rodman Scholar, Raven Society
- B.S. Computer Science. GPA 3.95
**Notable Courses:** Computer Graphics, Algorithms, Introduction to Cybersecurity, Software Testing
