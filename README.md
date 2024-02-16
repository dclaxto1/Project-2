# Project-2 - ETL
## All about ETL <br />
### Extract:
In this project I created an ETL pipeline using Python, Pandas, and other Python dictionary methods and regular expressions to extract and transform the required data. <br />
*Example:* contact_num = contact_info_df_copy['info'].str.extractall('(\d{4})') <br />
<br />
![image](https://github.com/dclaxto1/Project-2/assets/128431134/1c0c0042-3ba5-4661-b828-eba4489c9862)

### Transform:
After I transformed the data, I create four (4) CSV files and used the CSV files data to create an ERD and a table schema. <br />
*Example:* campaign_cleaned.to_csv("Resources/campaign.csv", index=False)
![ERD1](https://github.com/dclaxto1/Project-2/assets/128431134/e8aaaa49-7e10-4bfa-bc9f-2a217e7cda72)

### Load:
Finally, I uploaded the CSV file data into a PostgresQL database I made.
![image](https://github.com/dclaxto1/Project-2/assets/128431134/19686170-8dbc-4b64-abbf-bf0feb2d3326)
