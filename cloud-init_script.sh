#cloud-config
users:
  - name: ubuntu
    groups: [ adm, dialout, cdrom, floppy, sudo, audio, dip, video, plugdev, lxd, netdev ]
    sudo: [ "ALL=(ALL) NOPASSWD:ALL" ]
    shell: /bin/bash

runcmd:
 - mkdir /home/ubuntu/test
 - mkdir /home/ubuntu/compute
 - [ wget, "http://slashdot.org", -O, /home/ubuntu/test/index.html ]
 #- [ curl, -O, "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/src/apache-tomcat-9.0.56-src.tar.gz", -o, /home/ubuntu/test/apache-tomcat-9.0.56-src.tar.gz ]
 - [ wget, "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/src/apache-tomcat-9.0.56-src.tar.gz", -P, /home/ubuntu ]
 - [ touch, /home/ubuntu/text.html ]
 - [ wget, "https://test5167.s3.amazonaws.com/install.sh", -P, /home/ubuntu ]
 - sudo chmod 755 /home/ubuntu/install.sh
 - sh /home/ubuntu/install.sh
 - sudo curl  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/src/apache-tomcat-9.0.56-src.tar.gz -o /home/ubuntu/compute/apache-tomcat-9.0.56-src.tar.gz