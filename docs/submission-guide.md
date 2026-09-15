# Submission evidence guide

Capture the following evidence after applying the Terraform configuration:

1. **Working application:** open the `web_url` Terraform output in a browser. Include the address bar and the Skyward page in the screenshot.
2. **Alarm:** open CloudWatch → Alarms → `skyward-capstone-ec2-high-cpu`; capture the metric, `GreaterThanThreshold`, 70 percent threshold, two evaluation periods, and SNS action.
3. **Subscription:** open SNS → Topics → the deployed alerts topic → Subscriptions; capture the confirmed email endpoint (redact the address if required).
4. **Network:** capture the VPC resource map or use `docs/architecture.svg` as the architecture diagram.

Do not commit screenshots that expose a personal email address, public IP address, account ID, key material, or the Terraform state file.
