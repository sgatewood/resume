# Sean Gatewood

hello@sgatewood.dev |
[LinkedIn](https://linkedin.com/in/sean-t-gatewood) |
[GitHub](https://github.com/sgatewood)

---

## 🔍 Summary

Senior-leaning DevOps / Platform Engineer with a focus on the <code>dev</code> side of DevOps. I build scalable, reproducible, and reliable production environments with Kubernetes ecosystems, Infrastructure as Code, and CI/CD pipelines. I bring strong development skills to the infra world, elevating production environments with seamless automation, custom microservices, proactive application-level fixes, and spikes that push the boundaries of what is possible.

---

## 💼 Experience

#### **DevOps Engineer**, Digital Asset
(New York, NY / remote) April 2023 - present
- Developed infrastructure and automation around critical kubernetes services, applying SRE practices to ensure reliability and minimize operational toil.
- Played an instrumental role in the launch of our blockchain network by owning the greenfield deployment and management of a core validator node.
- Utilized Terraform, Jsonnet, Bash, and Helm to automate deployments in a flexible manner, enabling the success of more than 70 weekly upgrades.
- Orchestrated a complex blockchain migration process in the deployment automation, reducing required live-on-zoom code changes down to 0.
- Migrated our node's cluster across GCP regions with only 2 minutes of downtime.
- Instrumented monitoring/alerts with DataDog to maintain 99.5% uptime and tune our configuration to minimize cloud costs.
- Communicated deployment designs with partner companies, helping them overcome similar hurdles and accelerating the launch of our blockchain network.
- Mentored 2 teammates on how the validator deployment worked so they could contribute to the codebase and participate in support rotations.
- Authored a Prometheus metrics exporter in Go, providing a programmatic framework for custom metrics. Closed 8 critical gaps in production observability.
- Authored a Kubernetes operator in Go to streamline our backup/restore process, eliminating operational tasks on a product entering maintenance mode.
- Migrated Kubernetes manifests from a legacy system to public helm charts, allowing external customers to deploy our product.
- Orchestrated our internal helm installations using Helmfile to reduce our deployment process from 35 commands to 1 and pave the way for using GitOps.
- Built isolated blockchain test environments in both k3d (for local dev) and vClusters, allowing developers to effortlessly spin up fully independent networks.
- Developed CI/CD pipelines using Google Cloud Build and CircleCI.
- Participated in on-call rotations, triaging a multitude of production alerts and maintaining the reliability of our services.

#### **Software Engineer II**, Appian Corporation
(McLean, VA / remote) August 2020 - April 2023
- Worked on a Development Experience team that owned a variety of tooling and infrastructure to accelerate and modernize development workflows.
- Contributed to a remote development platform allowing devs to build/develop/test on dedicated EC2s, improving cycle time and stability by at least 50%.
- Built a Gitlab pipeline to precook warm builds that devs could take and use instantly, reducing startup time from ~12m to ~5s for many common test cases.
- Architected a separate mode using <a href="https://mutagen.io/documentation/synchronization/">Mutagen</a> to enable bi-directional file syncing and enhance stability.
- Deployed a LaunchDarkly <a href="https://launchdarkly.com/docs/sdk/relay-proxy">relay proxy</a> in Kubernetes, satisfying a FedRAMP security requirement for our modern feature toggles initiative.
- Contributed to a team effort to integrate LaunchDarkly with a legacy product, including developing our own Java client.
- Regularly initiated & led architectural design discussions, and spiked a wide variety of prototypes.
- Regularly unblocked developers by assisting in troubleshooting technical issues, improving our local build stability.
- Utilized an ELK stack to collect diagnostics from our development tool, greatly enhancing visibility into command utilization and user flows.
- Enhanced our documentation by injecting Matplotlib graphs (refreshed daily via Gitlab deployment pipeline) to show metrics on our codebase over time.
- Treasured high code quality standards and contributed to our data-driven goal to lead the department in code quality.
- Mentored two interns as a Summer Intern Manager, meeting with them weekly to optimize their internship experience.
- Gained a high standard for usability that continues to shape my tooling designs today.

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

- **Languages:** Python, Bash, Go, Java, TypeScript, C++
- **Cloud Platforms:** GCP, AWS
- **Kubernetes:** Helm, Helmfile, FluxCD, Istio, Custom Operators
- **Monitoring:** Grafana, Prometheus, Datadog
- **IaC:** Terraform, Pulumi
- **CI/CD:** GitLab, Github Actions, CircleCI, GCB, Jenkins
- **Other technologies:** Docker, Docker Compose, SQL, LaunchDarkly, MermaidJS, Nix, Jsonnet, Auth0, Kotlin, Gradle, Linux, jq, Justfile, Git, GitHub
- **Cloud Infra ("I've terraformed it!"):** Compute (GKE Cluster, Node Pools, Persistent Disks, Snapshot Schedules, VMs), Networking (VPC, Subnet, Cloud NAT, L7 Application Load Balancer, MCI, Cloud DNS, Google-Managed Certificates), Security (IAM, RBAC, Secrets Manager, Cloud Armor, Service Accounts, Workload Identity)
- **Also worked with:** HTML / CSS, React, Gradle, Django, JQuery, Argo CD, Google chat bots, Chrome Extensions, Intellij Plugins, Autodesk Inventor, LabVIEW

---

## 💻 Projects

#### **[This Resume](https://github.com/sgatewood/resume)** (February 2022 - present)

Written in YAML and templated into the document you are reading. :-)


#### **[JobDeployment controller](https://github.com/sgatewood/job-deployment)** (Summer 2025)

Spiked an idea I had using <a href="https://book.kubebuilder.io/">kubebuilder</a> to solve a DX problem with deploying Job objects in helm charts.


#### **[gcloud-fzf](https://github.com/sgatewood/gcloud-fzf)** (Spring 2025)

Wrote a Go CLI I wanted. The interesting part is I actually distributed it via homebrew.


#### **[Portfolio site](https://sgatewood.github.io)** (Spring 2022)

Used an old Jekyll theme I liked to serve as my website. Includes some interesting dark mode & MermaidJS hacks.



---

## 🎓 Education
**University of Virginia** (May 2020) Rodman Scholar, Raven Society
- B.S. Computer Science. GPA 3.95
**Notable Courses:** Computer Graphics, Algorithms, Introduction to Cybersecurity, Software Testing
