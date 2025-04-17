![image](https://github.com/user-attachments/assets/5b588e1d-9972-492d-9156-fb7085c9af22)


# 📊 Grok Exporter for HAProxy Custom Metrics

This setup enables you to extract **custom metrics** from **HAProxy logs** using **Grok Exporter**, converting them into a Prometheus-compatible format for advanced monitoring. Also logrotate will rotate logs either every 1day or the based on the filesize.

---

## 🔍 Overview

**Grok Exporter** is essential when HAProxy logs contain rich performance and request-level data that are **not natively available** in Prometheus metrics. It parses logs using Grok patterns and exposes the parsed data as metrics.

---

## ✅ Why Use Grok Exporter with HAProxy?

- **Log Parsing to Metrics**  
  HAProxy typically logs in syslog format (plain text). Grok Exporter can parse these and turn them into Prometheus metrics.

- **Custom Metric Extraction**  
  Extract metrics like status codes, response times, routes, or backend info based on your specific HAProxy log format.

- **Real-time Observability**  
  Enables fine-grained monitoring—such as latency buckets, HTTP status trends, or client insights—beyond built-in HAProxy Prometheus exporters.

- **Highly Flexible**  
  Define Grok patterns and metrics to suit your needs. You have full control over what gets exposed.

---

![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)


