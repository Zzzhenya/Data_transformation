# Data Transformation dbt repository

Data pipeline to transform shopping data based on daily forex rates for visualization.

Looker visualization: https://lookerstudio.google.com/reporting/177f7681-8063-4f04-8631-4c6772106fc1

![Looker Dashboard](https://github.com/Zzzhenya/Data_transformation/blob/main/Looker%20Dashboard%202023-06-24%20at%202.56.18%20PM.png)

dbt DAG

![dbt dag](https://github.com/Zzzhenya/Data_transformation/blob/main/dbt-dag.png)

## Data and Tools
### Data Sources
* Shopping data source: https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset
* Forex source: https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/eurofxref-graph-try.en.html
### Tools

* Warehouse: Google BigQuery

* Transformation: dbt core

* Visualization: Google Looker Studio

## Setting up

### How to setup
https://medium.com/@zzzzhenya/following-dbt-fundamentals-with-dbt-core-9edb5b8f12d6

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
