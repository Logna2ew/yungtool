YungTool

A collection of command-line tools for geolocating IP addresses and tracing DNS records.
Tools
1. IP Geolocation

    ipgeo.bat: A Batch script that uses the ipapi.co API to geolocate an IP address and extract city, region, country, latitude, and longitude information.

2. DNS Trace

    dns_trace.bat: A Batch script that performs a DNS trace using the nslookup command and extracts name servers and DNS resolution information.

Usage
IP Geolocation

    Save ipgeo.bat to a directory on your system.
    Run ipgeo.bat in a Command Prompt window.
    Enter the IP address to geolocate when prompted.

DNS Trace

    Save dns_trace.bat to a directory on your system.
    Run dns_trace.bat in a Command Prompt window.
    Enter the domain to trace when prompted.

Requirements

    curl command-line tool (for IP geolocation)
    nslookup command-line tool (for DNS trace)

Note

    Be aware of the API usage limits and terms of service for ipapi.co.
    Be aware of the DNS resolution limits and terms of service for your DNS provider.


Contributions are welcome! If you'd like to add new features or improve existing ones, please submit a pull request.
Issues

If you encounter any issues or have questions, please open an issue on this repository.
