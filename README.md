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

======================================================================================

# EC2-instance creation : <br>
1) Jenkins-master-server : <br>
2) Bastion-host-server : <br>
3) DEV-A-server : <br>
4) QA-A-server : <br>

Security groups : <br>
 - Bastion-host-security-group : <br>
     - SSH - port 22 - My-IP <br>
     - HTTP - port 80 - My-IP <br>
     - custom TCP - port 8080 - My-IP <br>

 - Jenkins-master-security-group : <br>
     - SSH - Port 22 - My-IP <br>
     - HTTP - port 80 - My-IP <br>
     - custom TCP - port 8080 - My-IP <br>


- DEV-security-group :  <br>
      - SSH - port 22 - Bastion-host-security-group <br>
      - HTTP - port 80 - Bastion-host-security-group <br>
      - custom TCP - port 8080 - Bastion-host-security-group <br>
      - custom TCP - port 8080 - My-IP <br>

- QA-security-group : <br> 
      - SSH - port 22 - Bastion-host-security-group <br>
      - HTTP - port 80 - Bastion-host-security-group <br>
      - custom TCP - port 8080 - Bastion-host-security-group <br>
      - custom TCP - port 8080 - My-IP <br>
