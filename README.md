# VPC creating :  

Step 1 : Create vpc - my-project-vpc   CIDR (10.30.0.0/16)  

step 2 : create subnets : <br>  
           - Jenkins-master-public-subnet  <br>
           - Bastion-host-public-subnet  <br>
           - DEV-A-private-subnet <br>
           - QA-A-private-subnet <br>
           - DB-private-subnet <br>

step 3 : Create Route tabel <br>
          - Public Route Table - Jenkins-master-public-subnet, Bastion-host-public-subnet <br>
          - Private Route Table - DEV-A-private-subnet, QA-A-private-subnet, DB-private-subnet <br>

step 4 : Create Internet gateway and NAT gateway  <br>
          - Internet Gateway - Public Route Table <br>
          - NAT Gateway - Private Route Table <br> 

================================================================================================================================

