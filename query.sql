# Create schemas

# Create tables
CREATE TABLE IF NOT EXISTS Bike_Score_Data
(
    city_id VARCHAR(100) NOT NULL,
    "Overall Score" FLOAT(2),
    Ridership FLOAT(2),
    Safety FLOAT(2),
    Acceleration FLOAT(2),
    Network FLOAT(2),
    Reach FLOAT(2),
    PRIMARY KEY(city_id)
);

CREATE TABLE IF NOT EXISTS "Good Weather Score Data"
(
    cities_id VARCHAR(100) NOT NULL,
    "Good Weather Percentile" INT,
    PRIMARY KEY(cities_id)
);

CREATE TABLE IF NOT EXISTS Safety
(
    city_id VARCHAR(100) NOT NULL,
    "Average Fatalities All Mode" FLOAT(2),
    "All Mode Fatality Rate" FLOAT(2),
    "All Mode Fatality Points" FLOAT(2),
    "Average Fatalities Bike" FLOAT(2),
    "Bike Fatality Rate" FLOAT(2),
    "Bike Fatality Points" FLOAT(2),
    "All Mode Injuries" FLOAT(2),
    "All Mode Injury Rate" FLOAT(2),
    "All Mode Injury Points" FLOAT(2),
    "Bike Injuries" FLOAT(2),
    "Bike Injury Rate" FLOAT(2),
    "Bike Injury Points" FLOAT(2),
    "All mode safety points" FLOAT(2),
    "Bike Safety Points" FLOAT(2),
    "Community Survey Safety Score" FLOAT(2),
    "Total Safety Points" FLOAT(2)    
);

CREATE TABLE IF NOT EXISTS Network
(
    city_id VARCHAR(100) NOT NULL,
    BNA FLOAT(2),
    "BNA Points" FLOAT(2),
    "Community Survey Network Score" FLOAT(2),
    "Total Nework Points" FLOAT(2)    
);

CREATE TABLE IF NOT EXISTS Acceleration
(
    city_id VARCHAR(100) NOT NULL,
    "City Snapshot Points" FLOAT(2),
    "Community Survey Acceleration Score"FLOAT(2),
    "Total Acceleration Points" FLOAT(2)    
);

CREATE TABLE IF NOT EXISTS Ridership
(
    city_id VARCHAR(100) NOT NULL,
    "ACS Bike-to-Work Mode Share" VARCHAR(20),
    "Land Area" FLOAT(2),
    Population VARCHAR(100),
    "ACS Target" VARCHAR(100),
    "ACS Normalized Score" FLOAT(2),
    "ACS Ridership Points" FLOAT(2),
    "SMS Recreation Riding" VARCHAR(100),
    "SMS Points" FLOAT(2),
    "Community Survey Ridership Score" FLOAT(2),
    "Total ridership score" FLOAT(2)    
);

CREATE TABLE IF NOT EXISTS Reach
(
    city_id VARCHAR(100) NOT NULL,
    "Percent Communities of Concern" FLOAT(2),
    "Number Underserved Communities" FLOAT(2),
    "Average BNA" FLOAT(2),
    "BNA Underserved Communities" FLOAT(2),
    "BNA Gap" FLOAT(2),
    "BNA Tier" FLOAT(2),
    "BNA Target" FLOAT(2),
    Distance FLOAT(2),
    "BNA Points.1" FLOAT(2),
    "ACS Bike-to-Work Mode Share Men" FLOAT(2),
    "ACS Bike-to-Work Mode Share Women" FLOAT(2),
    "ACS Gap" FLOAT(2),
    "ACS Tier" FLOAT(2),
    ACS_Target FLOAT(2),
    "Distance.1" FLOAT(2),
    "ACS Points" FLOAT(2),
    "Total Reach Points" FLOAT(2)    
);

CREATE TABLE IF NOT EXISTS "Bike & Weather Score"
(
    c_id VARCHAR(100) NOT NULL,
    Reach FLOAT(2),
    Network FLOAT(2),
    Acceleration FLOAT(2),
    Safety FLOAT(2),
    Ridership FLOAT(2),
    "Overall Score" FLOAT(2),
    Value INT,
    PRIMARY KEY(c_id)
);


# Create FKs
ALTER TABLE Safety
    ADD    FOREIGN KEY (city_id)
    REFERENCES Bike_Score_Data(city_id)
;
    
ALTER TABLE Acceleration
    ADD    FOREIGN KEY (city_id)
    REFERENCES Bike_Score_Data(city_id)
;
    
ALTER TABLE Network
    ADD    FOREIGN KEY (city_id)
    REFERENCES Bike_Score_Data(city_id)
;
    
ALTER TABLE Reach
    ADD    FOREIGN KEY (city_id)
    REFERENCES Bike_Score_Data(city_id)
;
    
ALTER TABLE Ridership
    ADD    FOREIGN KEY (city_id)
    REFERENCES Bike_Score_Data(city_id)
;