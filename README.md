# Migration Repo template
This repo is a template repository for the files needed for migrating Inventory data from a source system into FOLIO,

It contains example data and mapping files to help you kick-start a data migration into FOLIO

# Getting started/ Giving it a try
This is a quick guide on how to transform and load bib-level MARC records into a FOLIO tenant. 
## Prerequisites
* Make sure you have **Python 3.13** or higher installed. We recommend using [uv](https://github.com/astral-sh/uv#installation) for managing various Python versions and your project's dependencies
* You need access to a FOLIO tenant, with the following properties:
   * The **Gateway url** to the tenant (formerly Okapi URL)
   * The **Tenant id** for the tenant
   * A **username** and **password** for a user with the right permission sets
* A file of MARC21 Bib records in .mrc (binary) format
## 1. Create a git repository for your settings and data
###  Create a repo or clone this one
Either use the GitHub button below to create your own repo based on this template    
![image](https://user-images.githubusercontent.com/1894384/215045112-6964ecfb-a446-4036-99d0-323104f262c5.png)   

Or clone the repo by running 
```bash
git clone git@github.com:FOLIO-FSE/migration_repo_template.git
```

### Step into the repo and create the example folder structure py running
```bash
cd migration_repo_template
uv run create_folder_structure.py
```
Also, you can use this script for creating folder structures for different iterations.

Your repository should look like this:    
![image](https://user-images.githubusercontent.com/1894384/215044991-5b648501-aa10-46e2-873f-0b0996180a16.png)

## 2. Add your data, and configure the settings
1. Locate the MARC file you want to use, and move it into the ```iterations/test_iteration/source_data/instances``` folder.
2. Open up the mapping_files/exampleConfiguration.json file in a text editor and replace the outlined values in the picture below with your values:   
![image](https://user-images.githubusercontent.com/1894384/215045374-fa84f983-fbee-4a54-8383-78934af77484.png)
3. Save the file   

## 3. Install the tools and make sure they can run
### Using uv
1. Create virtual environment, install dependencies, and activate
```bash
uv sync install
uv run python
```
2. Test the installation by showing the help pages
```bash
uv run folio-migration-tools -h
```
3. Activate your virtual environment so you can stop typing `uv run`
```bash
source .venv/bin/activate
```
4. Create a `.env` file for your project's FOLIO credentials
```bash
touch .env
```
5. Open the `.env` file and add lines like this
```bash
USERNAME=diku_admin
PASSWORD=admin
```
## Transform the bibs into FOLIO Instances and SRS records
The following command will invoke the first of the three tasks in the configuration task, the **transform_bibs** one. Have your password ready.
```bash
folio-migration-tools mapping_files/exampleConfiguration.json --base_folder_path ./ transform_bibs
```
Congratulations! You have now completed the first step. Take a lookaround in the results and reports folders in iterations/test_iteration to get an understanding for what has happened.
## Post the Instances into FOLIO Instances and SRS records
```bash
folio-migration-tools mapping_files/exampleConfiguration.json --base_folder_path ./ post_instances
```
Now, you can go off and explore the records in the FOLIO tenant! Make sure to check all the reports and lists of failed records in the reports and results folders!


For complete documentation on how to run the process, refer to [Read the Docs](https://folio-migration-tools.readthedocs.io/)
