# ICC T20I Cricket Player Rankings

![ICC Cricket Logo](insert_image_url_here)

## Description

This project is a web scraping application that retrieves the latest ICC T20 International (T20I) cricket player rankings for batting from the official ICC Cricket website. The data is extracted from the website and saved into a CSV file for further analysis and reference.

## Data Source

The data is sourced from the following URL:
[ICC Cricket T20I Player Rankings - Batting](https://www.icc-cricket.com/rankings/mens/player-rankings/t20i/batting?at=2022-11-01)

## Prerequisites

Before running the script, ensure that you have the following libraries installed in your R environment:

- `robotstxt`
- `rvest`

## Installation

To run the script, follow these steps:

1. Install the required libraries by running the following commands in your R environment:
   install.packages("robotstxt")
install.packages("rvest")

2. Download the `icc_t20_rankings.R` script from this repository.

3. Open the R script in your R editor or RStudio.

4. Execute the script to initiate web scraping and data extraction.

## Usage

The `icc_t20_rankings.R` script uses web scraping techniques to extract the latest ICC T20I cricket player rankings for batting. The data is saved into a CSV file named `icct20.csv`.

