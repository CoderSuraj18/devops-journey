# DevOps Engineering Portfolio

This repository documents my technical work across cloud infrastructure, Linux administration, automation, containerization, infrastructure as code, and CI/CD. It brings together engineering milestones, operational scripts, technical references, and the deployment workflow for my portfolio website.

## Engineering capabilities

- **Linux administration:** filesystem operations, permissions, users and groups, process management, system inspection, and troubleshooting.
- **Git and GitHub:** repository management, branching, commits, pull requests, collaboration workflows, and automated repository publishing.
- **Bash automation:** file and directory validation, reusable functions, loops, operational checks, and scheduled task concepts.
- **Python automation:** scripting fundamentals, input validation, exception handling, file operations, log inspection, and server-health status aggregation.
- **AWS cloud infrastructure:** EC2, VPC networking, subnets, routing, gateways, security groups, VPC peering, S3, RDS, load balancing, IAM, AWS CLI, and application hosting.
- **DevOps toolchain:** Terraform, Ansible, Docker, Kubernetes, Jenkins, and GitHub Actions.

## Technical milestones

The day-based directories retain the progression of technical work and the scripts or notes associated with each milestone.

| Milestones | Engineering focus | Repository paths |
|---|---|---|
| 01–04 | Linux administration, filesystem management, permissions, process and system monitoring | `day-01-linux` to `day-04-linux` |
| 05 | Git and GitHub repository workflows | `day-05-git` |
| 06–10 | Bash scripting, validation, loops, functions, deployment checks, and scheduled operations | `day-06-bash` to `day-10-bash` |
| 11 | Python scripting, file validation, exception handling, log inspection, and server-health auditing | `day-11-python` |

These directories contain technical exercises and supporting scripts. They are presented according to their actual scope and are not described as production monitoring or deployment platforms.

## DevOps technology references

The following documents consolidate the architecture, service coverage, workflows, and technical areas addressed with each tool:

- [AWS Cloud Infrastructure](aws-project/README.md)
- [Terraform — Infrastructure as Code](terraform-project/README.md)
- [Ansible — Configuration Management](ansible-project/README.md)
- [Docker — Containerization](docker-project/README.md)
- [Kubernetes — Container Orchestration](kubernetes-project/README.md)
- [Jenkins and CI/CD](jenkins-cicd-project/README.md)

The documents describe technical coverage and engineering workflows. Runnable project configurations and independently reproducible end-to-end implementations will be linked from the relevant directories as those assets are committed.

## Portfolio website and CI/CD

The portfolio website is built with HTML and CSS and published through GitHub Pages using GitHub Actions.

- [Portfolio website source](index.html)
- [GitHub Actions deployment workflow](.github/workflows/deploy.yml)
- [Repository workflow runs](https://github.com/CoderSuraj18/devops-journey/actions)

The deployment workflow is a committed implementation in this repository. Its scope is distinct from the Jenkins pipeline concepts documented in the Jenkins reference.

## Next engineering deliverables

The next portfolio deliverables will consolidate related capabilities into independently reproducible implementations. Planned areas include AWS infrastructure provisioned with Terraform, configuration management with Ansible, a containerized application delivery pipeline, and Kubernetes deployment with monitoring. Each deliverable should include source/configuration, architecture, execution steps, validation results, and relevant evidence.

## Documentation standard

Documentation should identify the technical objective, implementation scope, commands or configuration used, validation performed, and observed outcome. Distinguish completed work from conceptual references and planned extensions; make claims traceable to repository evidence.
