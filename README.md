# Forcasting Dengue Outbreaks based on Climatic data
## A Google Data Analytics Professional Certificate Capstone Project Case Study
In this capstone project, we would like to analyze climatic dengue data from three different regions namely : San Juan, Iquitos, and Ahmedabad, to see how rainfall co-relates to dengue outbreak and explore different prediction models to forecast dengue outbreak based on climatic factors. These insights will be helpful for policy makers, caregivers, and hospital administrators to guide and allocate resources accordingly. 
## Ask

* What topic are we exploring?<br>
Ans: In this study, we am exploring the  dependency of dengue outbreaks on climatic factors.
* What is the problem we are trying to solve? <br>
Answer: our task is to predict the number of dengue cases each week (in each location) based on the climatic conditions and an understanding of the relationship between climate and dengue dynamics has been established in this study. This can improve research initiatives and resource allocation to help fight life-threatening epidemics with our proposed early warning system.
* What metrics will be used to measure our data to achieve our objective? <br>
Answer: Accuracy
* Who are the stakeholders? <br>
Answer: Patients, Doctors, Policy makers, Caregivers, Hospital administrators
* Who is our audience? <br>
Answer: Policymakers, Caregivers
* How can our insights help our client make decisions? <br>
Answer: By allocating resources based on forecasting.

## Prepare 

### Data source: 

We analyze the data from a paper An ensemble neural network approach to forecast Dengue outbreak based on climatic condition: https://www.sciencedirect.com/science/article/pii/S0960077923000255. Climatic Dengue data is available on [Github](https://github.com/mad-stat/XEWNet/tree/main) in 3 CSV files. This study uses three multivariate time series datasets (weekly) to generate a short-term (26 weeks) and long-term (52 weeks) forecast of dengue incidence in the San Juan, Iquitos, and Ahmedabad regions

### Limitations
* Since we utilized data from three specific regions, it may not accurately reflect the characteristics of other regions.
* We're only looking at rainfall data, but there might be other weather and cultural factors that are important for predicting dengue outbreaks.
## Process
* R is used to load, transform, analyzed and visualize data.
* As part of our data processing, we start by checking if any data files have empty entries. After that, we change the week numbers so that they always go up as the years pass.
 

## Analyze

![Example Image](Images/Figure1.png)

## Act

## Share
