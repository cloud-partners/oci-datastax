#!/bin/bash

cd ~opc

curl https://raw.githubusercontent.com/DSPN/oracle-bmc-terraform-dse/multi-region/userdata/lcm_opscenter.sh > lcm_opscenter.sh

chmod +x lcm_opscenter.sh
