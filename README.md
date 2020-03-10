# weatherETL
ETL for state air quality and green initiative spending <br>
-------
Kelly Priest &
Devin Milligan
-------
Websites used <br>
https://cityratings.peopleforbikes.org/all-cities-ratings/ 
https://www.currentresults.com/Weather/US/average-annual-state-precipitation.php
--------
Extract Data <br>
For the bike scores in each city data, downloaded raw data from https://cityratings.peopleforbikes.org/methodology/ to get city bike data scores.
This was downloaded as an excel file with multiple sheets. Unused sheets to delete were the Canada Data sheets and the US 2018 data from the excel file, so left was the US 2019 data and saved that as a csv.

For the good weather score data, webscrapped this page *https://wallethub.com/edu/cities-with-the-best-worst-weather/5043/* to get the score and city:state. We made this into the *Cities CSV*
________________________________________________________________________________________________________________________________________
Transform Data <br>
To view and edit the data we used Pandas and jupyter notebook. 
The bike data came in with 55 columns and we only needed 7 columns. First I had to print out all the column names to find the names of the columns I needed. Two columns had major typos, the Overall column was 'Total Ponts' and the Network column was 'Total Nework Points' and some columns had point some had scores. Put the needed columns into a dictionary and then made that dicitonary into a dataframe. Export the final cleaned dataframe into a new csv.
The good weather score data





