Passive Reconnaissance Report – holbertonschool.com

## Introduction

This report provides an analysis of the **holbertonschool.com** domain, based on passive reconnaissance using publicly available sources.
Information was gathered using **Shodan** and DNS queries, which do not involve direct interaction with the target infrastructure.

The goal of this report is to:

* Identify the IP addresses and IP ranges associated with the domain.
* Enumerate visible subdomains.
* Observe the technologies and services exposed to the internet.

---

## Hosting and Infrastructure

The domain **holbertonschool.com** is hosted on **Amazon Web Services (AWS)**, primarily using the **eu-west-3 (Paris, France)** region, which is known for providing scalability, reliability, and geographic redundancy.

### Hosting Providers:

* **Amazon Data Services France (AWS)**
* **A100 ROW Inc.** (related to AWS infrastructure)

These findings indicate the use of **AWS** for hosting, ensuring high availability and elasticity in the cloud environment.

---

## Identified IP Addresses

The following **IP addresses** were observed for different subdomains of **holbertonschool.com**:

| IP Address     | Subdomain                  | Hosting Provider            | Location      |
| -------------- | -------------------------- | --------------------------- | ------------- |
| 75.2.70.75     | Main Domain                | Amazon Data Services France | Paris, France |
| 99.83.190.102  | Main Domain                | Amazon Data Services France | Paris, France |
| 192.0.78.131   | blog.holbertonschool.com   | Amazon Data Services France | Paris, France |
| 192.0.78.230   | blog.holbertonschool.com   | Amazon Data Services France | Paris, France |
| 13.38.216.13   | lvl2-discourse-staging     | Amazon Data Services France | Paris, France |
| 13.38.122.220  | staging-apply-forum        | Amazon Data Services France | Paris, France |
| 54.86.136.129  | v1.holbertonschool.com     | A100 ROW Inc.               | Paris, France |
| 34.203.198.145 | v2.holbertonschool.com     | A100 ROW Inc.               | Paris, France |
| 54.89.246.137  | v3.holbertonschool.com     | A100 ROW Inc.               | Paris, France |
| 52.47.143.83   | yriry2.holbertonschool.com | Amazon Data Services France | Paris, France |

These IP addresses confirm the use of **AWS** infrastructure in the **Paris, France** region, with several subdomains pointing to **load-balanced** or **redundant systems**.

---

## IP Ranges

As the infrastructure is hosted on **AWS**, the IP addresses belong to shared cloud IP ranges. The following **IP ranges** were observed for **holbertonschool.com**:

* **13.38.0.0/16**
* **13.39.0.0/16**
* **15.237.0.0/16**
* **51.44.0.0/16**
* **52.47.0.0/16**

These ranges are shared with other customers of **AWS**, meaning that they are not unique to **holbertonschool.com** but are part of **Amazon’s** cloud infrastructure.

---

## Subdomains Discovered

Through passive enumeration and **Shodan** scans, the following **subdomains** were identified for **holbertonschool.com**:

* **_dmarc.holbertonschool.com**
* **apply.holbertonschool.com**
* **assets.holbertonschool.com**
* **beta.holbertonschool.com**
* **blog.holbertonschool.com**
* **en.fr.holbertonschool.com**
* **fr.holbertonschool.com**
* **fr.webflow.holbertonschool.com**
* **help.holbertonschool.com**
* **lvl2-discourse-staging.holbertonschool.com**
* **rails-assets.holbertonschool.com**
* **read.holbertonschool.com**
* **smile2021.holbertonschool.com**
* **staging-apply.holbertonschool.com**
* **staging-apply-forum.holbertonschool.com**
* **staging-rails-assets-apply.holbertonschool.com**
* **support.holbertonschool.com**
* **v1.holbertonschool.com**
* **v2.holbertonschool.com**
* **v3.holbertonschool.com**
* **webflow.holbertonschool.com**
* **[www.holbertonschool.com](http://www.holbertonschool.com)**
* **yriry2.holbertonschool.com**

The presence of subdomains like **staging**, **apply**, and **support** suggests that **holbertonschool.com** is actively managing a variety of services, including **customer support**, **development environments**, and **public-facing websites**.

---

## Technologies Observed

### **Web Server**:

* **Nginx** is used as the web server across most of the subdomains, with the version being **Nginx/1.20.0**.
  This suggests the infrastructure is optimized for high performance and scalability, as **Nginx** is widely used for load balancing, reverse proxying, and serving static content.

### **Operating System**:

* The **operating system** powering the infrastructure is **Ubuntu**.
  This is a common choice for server environments due to its stability, security features, and ease of use within cloud platforms like **AWS**.

### **Reverse Proxies**:

* **Nginx** is also used as a **reverse proxy** across many of the subdomains.
  This improves security, load balancing, and caching.

## Conclusion

This passive reconnaissance report on **holbertonschool.com** reveals a well-structured, secure, and cloud-based infrastructure powered by **Amazon Web Services (AWS)**.
The use of **Nginx** for web servers and reverse proxies and **Ubuntu** for the underlying OS.

Additionally, the presence of development and staging subdomains indicates that **holbertonschool.com** is actively evolving its web applications, while security headers ensure the site is protected from common web-based threats.
