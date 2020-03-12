# weatherETL
ETL for bike friendly scores and good weather scores in US cities <br>
________________________________________________________________________________________________________________________________________
#### Kelly Priest & Devin Milligan
________________________________________________________________________________________________________________________________________
## Extract Data <br>
For the bike scores in each city data, downloaded raw data from https://cityratings.peopleforbikes.org/methodology/ to get city bike data scores. Also from that site there is a detailed reprot about each category and how they got each score.
This was downloaded as an excel file with multiple sheets. Unused sheets to delete were the Canada Data sheets and the US 2018 data from the excel file, so left was the US 2019 data and saved that as PlacesForBikes.csv.

For the good weather score data, webscrapped this page *https://wallethub.com/edu/cities-with-the-best-worst-weather/5043/* to get the score and city:state. We made this into the *Cities CSV*
________________________________________________________________________________________________________________________________________
## Transform Data <br>
The environment used for these transformation:

1. Open jupyter notebook and create a new python notebook
2. Import dependencies 'import pandas as pd'
3. Load in PlacesForBikes.csv and make 6 CSVs
    1. bike_data.csv has just the overall bike score and the category scores. To make this, create a dictionary with the columns that are needed; city, overall bike score, acceleration, network, safety, reach, and ridership. *Note that the column for overall bike score is called 'Total Ponts' and network is called 'Total Nework Points'* Then put this dictionary using pandas .DataFrame() and save it as a csv.
    2. The category (Ridership, Acceleration, Safety, Network, Reach) csvs have the overall score for the category and the data used to make that score. 
        1. For each category make an initial dictionary with the cities. 
        2. Put each column related to the category into the dictionary. *The PlacesForBike.csv has the columns already organized (double and quadrouple checkec!) by category which means a loop can be used to make the dictionaries* Ridership column index 3-12, Safety column index 13-28, Acceleration column index 29-31, Network column index 32-35, Reach column index 36-52. 
        3. In a for loop go through each column in the PlacesForBikes.csv while tracking how many times you have entered the loop starting at 0. Using if statements, if the counter is in the index range for a category, put that column into that category dictionary. 
        4. Once out of the loop these dictionaries can then be made into dataframes with pandas .DataFrame() and saved as csvs.
4. Create a new python notebook
5. Import dependencies 'import pandas as pd' and 'import scipy.stats'    
6. Load in the bike_data.csv and Cities.csv
7. Do an 'inner' merge on City *Note that the csvs have different formats for cities. Do a string upper on the City column in the Cities csv*
First open jupyter notebook and create paths to the CSVs bike_

The good weather score data



