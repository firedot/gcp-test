# gcp-test
Example for TF configuration of a very basic GCP infrastructure


**TO-DO**

- create main.tf that uses gcp provider
- add a google compute instance resource
- add network resource
- add subnets to the networking module
- add firewall config that allows all trafic for the subnets created
- create a module for the network and firewall resources
- create a module for the google compute instances
- reuse the google compute instance module and connect the machines to each subnetwork created
- add all subnetworks to the firewall rule

**DONE**
