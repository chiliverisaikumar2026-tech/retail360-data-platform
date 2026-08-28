# Retail360 Data Platform

End-to-end retail data engineering project built using Google Cloud Platform, Databricks, PySpark, Delta Lake, Terraform, and Git.

## Business Problem

Retail360 receives customer, product, order, and order-item data from multiple operational systems.

The objective of this project is to build an automated lakehouse pipeline that ingests raw retail data, performs data-quality checks and transformations, and produces analytics-ready datasets for business reporting.

## Architecture

The project follows the Medallion Architecture:

**Source Data → Google Cloud Storage → Bronze → Silver → Gold → Analytics**

### Bronze Layer

Stores raw source data with minimal transformation.

### Silver Layer

Performs cleansing, datatype validation, deduplication, NULL handling, and business-rule validation.

### Gold Layer

Creates business-level datasets such as:

* Daily sales
* Product performance
* Category performance
* Customer 360
* Revenue metrics

## Technologies

* Google Cloud Platform
* Google Cloud Storage
* Databricks
* Apache Spark
* PySpark
* Delta Lake
* Databricks Auto Loader
* Lakeflow Spark Declarative Pipelines
* Databricks Jobs
* Unity Catalog
* Terraform
* Git
* GitHub
* VS Code

## Project Status

Project is currently under development.
