# Sales Performance Dashboard

An interactive sales dashboard built with React and Chart.js. It runs entirely in the browser, with no build step.

## What's in this repo

- `index.html`: the dashboard. Open it in a browser, or host it with GitHub Pages.
- `sales_data.xlsx`: the sample data (24 sales lines across 6 regions) the dashboard is built from.

## Features

- KPI strip: revenue, profit, profit margin and average unit price
- Monthly revenue, profit and margin trend
- Region, sales channel, top product and revenue-against-margin charts
- Filters for region, sales channel, month, category and product. Clicking a chart also applies the filter.
- Sortable sales ledger with totals
- "Load another file" button that reads any `.xlsx` or `.csv` with the same columns

## Data columns

`Date`, `Region`, `Product`, `Sales Channel`, `Unit Price`, `Revenue`, `Cost`, `Profit` (Profit = Revenue - Cost).

Product categories are grouped inside `index.html` because the data file has no category column. The sample figures are illustrative.

## Run it

Open `index.html` in a browser. The page loads React, Chart.js and SheetJS from the cdnjs CDN, so it needs an internet connection.

To publish it, go to **Settings → Pages**, choose **Deploy from a branch**, then select `main` and `/ (root)`.
