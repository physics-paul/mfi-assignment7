This project seeks to analyze risk metrics of publicly-traded companies by year from 1990-1996, by calculating two common risk management metrics: the Value at Risk (VaR) and expected shortfall. Furthermore, the J.P. Morgan RiskMetrics Model, and the GARCH model are used to estimate the volatilty over the time frame 2000-2010.

This task is essentially divided into five parts:

1. Downloading the Data
2. Calculating the VaR and Expected Shortfall for the period 1990-1996
3. Calculating the VaR and Expected Shortfall for the period 2000-2010
4. Estimate the volatility through the JP Morgan RiskMetrics Model
5. Estimate the volatility through the GARCH model

### 1. Downloading the Data

The main source of data used for this project was:
  
a. DSF : The daily stock returns and volume, along with shares outstanding, were obtained by analyzing the DSF SAS file which was obtained through the QCF server. This data file had company information in the form of the CUSIP number and was used to obtain the share price, the return from the previous year, number of shares, and the volatility of the firm's equity value.

In actually scraping and extracting the data, the SAS Software was used in order to prepare the data. SAS was necessary in order to deal with the sheer size of the DSF dataset and was used in an effort to make the data analysis feasible for direct analysis in the R Statistical Package.

### 2. Calculating the VaR and Expected Shortfall for the period 1990-1996

A portfolio of 100 randomly drawn firms was tracked over a 6-year period from 1990-1996 with an initial investment of $1,000,000. The one-day 5% VaR was calculated to be: VaR = -1.17%, which amounts to a one-day 5% $VaR as : $VaR = -$11,749.

Given this 5% VaR, the expected shortfall, which essentially means, "given you are in the lower 5% of returns, how much do you expect to lose in dollars?" This value is : expected shortfall = -$15,758.

### 3. Calculating the VaR and Expected Shortfall for the period 2000-2010

Expanding the date range, the one-day 5% VaR was calculated to be: VaR = -2.04%, which amounts to a one-day 5% $VaR as : $VaR = -$20,394.

Given this 5% VaR, the expected shortfall is : expected shortfall = -$29,146, which would be expected. Given a longer period, the possibility for greater losses over a day is maximized.

### 4. Estimate the volatility through the JP Morgan RiskMetrics Model

The JP Morgan RiskMetric Model seeks to predict the volatility for the next period as a function of the return from the previous period and standard deviation from the previous period. A time-series plot of this model can be calculated for the randomly selected firms in Section 2, and is given by:

<p align="center">
  <img height='400' src="https://raw.githubusercontent.com/physics-paul/mfi-assignment7/master/4graph1.png">
</p>

### 5. Estimate the volatility through the GARCH model

The big differences in most volatility estimation models revolve around how far back to grab historical data in order to estimate the future volatilty. The GARCH Model is very similar to the JP Morgan Model, but places different weights to the previous period's return and standard deviation. Specifically, we can estimate the alpha and beta parameters used in the analysis to be: alpha = 0.044, and beta = 0.931. A time-series plot of this model can be calculated for the randomly selected firms in Section 2, and is given by:

<p align="center">
  <img height='400' src="https://raw.githubusercontent.com/physics-paul/mfi-assignment7/master/4graph2.png">
</p>
