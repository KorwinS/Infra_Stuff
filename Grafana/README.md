# Grafana Cloudformation

CloudFormation templates for managing the underlying services that Grafana requires to run in AWS:

- [ ] Grafana-RDS.yaml PostgreSql RDS Clusters (for Grafana's Database)
- [ ] GrafanaElasticCache.yaml - ElasticCache (for loadbalanaced sessions in Grafana)
- [ ] Grafana-app.yaml - The EC2, DNS, Loadbalancing, etc for running Grafana on AWS

## To Do
- [ ] Containerize the EC2 stuff