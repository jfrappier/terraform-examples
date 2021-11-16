#Description

This is an example of how to get the public IP address of a host running `terraform apply`

#Use Cases

You are deploying resources and require access (e.g. web server, database server) but do not want to open the system to `0.0.0.0/0`

#Preview

Run the following commands to see the output (via outputs.tf)

- `terraform init`
- `terraform apply`

You should see `ipinfo = x.x.x.x` where x.x.x.x is your public IP address.

#Limitations

ipinfo.io only allows a limited number of calls per day with out a plan. Please consult with ipinfo.io for more information.

#Disclaimer

This is for learning purposes only. 
