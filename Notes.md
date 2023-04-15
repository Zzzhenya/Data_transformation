# Install dbt core for BigQuery

pip install dbt-bigquery

Ref: https://docs.getdbt.com/reference/warehouse-setups/bigquery-setup


# OAuth setup for BigQuery

Ref: https://cloud.google.com/sdk/docs/install

# dbt core setup

Ref: https://docs.getdbt.com/docs/quickstarts/dbt-core/quickstart

# About profiles, targets etc.

Ref: https://docs.getdbt.com/docs/core/connection-profiles

# Building DAG

## Sources

{{ source() }} function

Ref: https://docs.getdbt.com/docs/build/sources

# dbt Docs

dbt docs generate

dbt docs serve

dbt docs -h

# dbt cheat-sheet

* https://medium.com/indiciumtech/17-dbt-commands-you-should-start-using-today-581998dbf8f0


# SQL

* WITH clause 

WITH sub_query_name
AS
(SELECT
    SUM(col_1) as Total
FROM table_name
GROUP BY col_2)
 
SELECT
    AVG(Total) average_total_col_1
FROM csub_query_name;

Ref: https://learnsql.com/blog/what-is-with-clause-sql/

* Group by 1

Group by the first column of the resulting table/view

Ref: https://stackoverflow.com/questions/7392730/what-does-sql-clause-group-by-1-mean

# Git 

* Working on branches

Ref: https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/git-push-new-branch-remote-github-gitlab-upstream-example

* Pull request

Ref: https://git-scm.com/docs/git-request-pull