# VPC creating : 
Step 1 : Create vpc - my-project-vpc   CIDR (10.30.0.0/16)
step 2 : create subnets : 
           - Jenkins-master-public-subnet
           - Bastion-host-public-subnet
           - DEV-A-private-subnet
           - QA-A-private-subnet
           - DB-private-subnet

step 3 : Create Route tabel 
          - Public Route Table - Jenkins-master-public-subnet, Bastion-host-public-subnet
          - Private Route Table - DEV-A-private-subnet, QA-A-private-subnet, DB-private-subnet

step 4 : Create Internet gateway and NAT gateway 
          - Internet Gateway - Public Route Table
          - NAT Gateway - Private Route Table 

================================================================================================================================

