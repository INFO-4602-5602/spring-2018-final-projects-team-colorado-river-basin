# Physicalization of Western U.S. Snowpack data

Project by Jen Liu and Jordan Wirfs-Brock

## What's in this repo?

To view a video of our project in action (the best part!) go to: https://youtu.be/1KUeiy6wBUc

Documentation of our project is in the snowpack_writeup_final.pdf file.

### Data files
* SNOTEL_download.csv - This is the [raw data downloaded from the NRCS custom report generator](https://wcc.sc.egov.usda.gov/reportGenerator/view_csv/customMultiTimeSeriesGroupByStationReport/monthly/start_of_period/network=%22SNTL%22%20AND%20element=%22WTEQ%22%20AND%20outServiceDate=%222100-01-01%22|name/POR_BEGIN,POR_END:M|3/stationId,name,WTEQ::pctOfNormal_1981), with the header text removed
* SNOTEL_stations.csv - This is the raw metadata for station locations (lat/lon) downloaded from the [NRCS custom report generator](https://wcc.sc.egov.usda.gov/reportGenerator/view/customMultiTimeSeriesGroupByStationReport/daily/start_of_period/network=%22SNTL%22%20AND%20outServiceDate=%222100-01-01%22%7Cname/0,0/stationId,name,elevation,latitude,longitude?fitToScreen=false)
* snowpack-data.csv - This is the cleaned data file generated from the Python code
* stations-data.csv - This is the cleaned station metadata file generated from the Pyton code
* merged-data.csv - This is the merge of snowpack-data.csv and stations-data.csv (merge done in Fusion Tables)

### Images
The folder "SNOTEL-images" contains images from the 5x5 images grid (years 1985, 1995, 2005, 2015, 2018; relative snowpack percentages 0-40%, 40-80%, 80-120%, 120-160%, 160+%) that we used to populate our dynamic display.

### Code files
* JWB-SNOTEL-analysis.ipynb - This has the Python code used to do data cleaning and generate the visualizations
* talktome - Arduino files for reading potentiometer
* snowpack_viz - Processing files for displaying data

# Sound files
Here's our "sonic color ramp" scale:
* 0 - 40% of historic snowpack - [slow drip](https://freesound.org/people/InspectorJ/sounds/271334/)
* 40 - 80% of historic snowpack - [medium drip](https://freesound.org/people/zimbot/sounds/395181/)
* 80 - 120% of historic snowpack - [medium trickle](https://freesound.org/people/Edo333/sounds/396060/)
* 120 - 160% of historic snowpack - [small stream](https://freesound.org/people/javetakami/sounds/197088/)
* 160+% of historic snowpack - [large stream](https://freesound.org/people/movingplaid/sounds/165287/)

All sounds are from freesound.org via users InspectorJ, zimbot, Edo333, javetakami and movingplaid.
