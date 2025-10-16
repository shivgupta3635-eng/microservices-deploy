<<<<<<< HEAD
=======
<<<<<<< HEAD
# microservices-deploy
=======
>>>>>>> 5a9f615 (variable)
# microservices-deploy

This project provisions Ubuntu EC2 instances using Terraform and configures Dockerized microservices + monitoring using Ansible.

## Features
- Terraform creates VPC, subnet, security group, key pair and EC2 instances.
- Terraform writes an Ansible inventory (ansible/inventory.ini).
- Ansible roles:
  - docker: installs Docker & Docker Compose
  - microservices: deploys microservices via Docker Compose
  - monitoring: Prometheus, Grafana, cAdvisor, node_exporter

## Quick start (high level)
1. Install Terraform, AWS CLI, Ansible, and community.docker collection.
2. Update `terraform/variables.tf` or pass `-var` values for `ami_id`, `key_name`, `public_key_path`.
3. Run terraform from terraform/:
   ```
   terraform init
   terraform apply -auto-approve -var 'ami_id=ami-xxxx' -var 'key_name=your-key' -var 'public_key_path=~/.ssh/id_rsa.pub'
   ```
4. Terraform will generate `ansible/inventory.ini`.
5. From ansible/:
   ```
   ansible-galaxy collection install community.docker
   ansible-playbook -i inventory.ini playbook.yml --private-key ~/.ssh/id_rsa -u ubuntu
   ```
6. Access services on the first host:
   - Grafana: http://<first-host-ip>:3000
   - Prometheus: http://<first-host-ip>:9090
   - Microservices: http://<host-ip>:8001,8002,8003

## Notes
- This is a starter blueprint. Replace the example nginx images with your actual microservice images.
- Secure your SSH access by setting `my_ip_cidr` in terraform/variables.tf.
<<<<<<< HEAD
=======
>>>>>>> 6212bde (Initial commit - Microservices Deployment using Terraform & Ansible)
>>>>>>> 5a9f615 (variable)
