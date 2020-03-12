# weatherETL
ETL for bike friendly scores and good weather scores in US cities <br>
________________________________________________________________________________________________________________________________________
#### Kelly Priest & Devin Milligan
________________________________________________________________________________________________________________________________________
## Extract Data <br>
For the bike scores in each city data, downloaded raw data from https://cityratings.peopleforbikes.org/methodology/ to get city bike data scores. Also from that site there is a detailed reprot about each category and how they got each score.
This was downloaded as an excel file with multiple sheets. Unused sheets to delete were the Canada Data sheets and the US 2018 data from the excel file, so left was the US 2019 data and saved that as PlacesForBikes.csv.

For the good weather score data, webscrapped this page *https://wallethub.com/edu/cities-with-the-best-worst-weather/5043/* to get the score and city:state. We made this into the *Cities CSV*

## Transform ##
We transformed our webscrape data into a csv using replace and split functions to clean it up. and put them into dictionaries which we then made into a csv. The bikestores data was downloaded as a csv. We further transformed our data into a pandas DataFrame using Jupyter Notebook. 

To See how the Good Weather CSV was extracted and transformed review file: weatherScoreScrape.ipynb
    *Note that if grading from the campus the IP Address may be blocked. 
To See how the biking CSVs were transformed review file: Clean_BikeData.ipynb
To See how all of our CSVs were merged review file: Merging_Data.ipynb 

## Load ##



________________________________________________________________________________________________________________________________________
Steps:
1. Make Sure you are working with a clean environment
2. To get the modules needed to run our code you must use: 
    pip install requirements.txt
3. Open Postgres
4. Use Schema file to Create tables needed for SQL Database
    Schema File: *Schema File Name*
5. Import CSV's Into Corresponding Table Names









