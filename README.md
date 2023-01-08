<h1 align = "center">First Infrastructure as Code (IaC) project</h1>
<p align = "center">This is my first IaC project using Terraform e ansible</p>

We have a simple project made with Terraform and Ansible, to run EC2 instance on AWS. This project is what we call Infrastructure as Code, which made possible to manage and provide infrastructure through code instead of through manual processes.

## Setting up Environment
You need to install Terraform, AWS CLI and Ansible
### Terraform
#### Ubuntu
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform
```
####  MacOS
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

```
#### Windows
```bash
choco install terraform
```
#### Manual Installation

Just go to the [download page](https://developer.hashicorp.com/terraform/downloads), select which version to download, giving preference to 64-bit, extract the file and install it.
### Ansible
#### Ubuntu
```
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible
```
#### MacOS
```
brew install ansible
```

#### Windows
```
python -m pip install --user ansible
python -m pip install --user paramiko
```

### AWS CLI
If you haven't installed the AWS CLI yet, just go to the [AWS CLI page](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2.html) and follow the instructions for your operating system.

Once installed, you can configure AWS using the `aws configure` command where the secret key (secret key) will be requested, which can be created [on this page](https://console.aws.amazon.com/iam/home?#/security_credentials) by clicking on "Create Access Key" in the "AWS IAM Credentials" tab.

## Create an Instance

Commands to create the instance, using the following commands
```bash
terraform init
terraform plan
terraform apply

```

With instance created, it is possible to use the Ansible to manage the EC2 to configuration. Now, to execute this configuration just use:
```
ansible-playbook playbook.yml -u ubuntu --private-key your-ssh-key.pem -i hosts.yml
```

An observation: you will need to configure some of the network and SSH settings.

## License
Distributed under the MIT license. See [LICENSE](LICENSE) for more information.

  ---
## Author

Made by Rafael Ribeiro with ❤️ Contact me!

  [![Linkedin Badge](https://img.shields.io/badge/-Rafael-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/tgmarinho/)](https://www.linkedin.com/in/rafael-mgr/)
  [![Gmail Badge](https://img.shields.io/badge/-Gmail-red?style=flat-square&link=mailto:nelsonsantosaraujo@hotmail.com)](mailto:ribeirorafaelmatehus@gmail.com)