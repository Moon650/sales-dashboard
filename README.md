# Sales Performance Dashboard

An interactive sales dashboard built with React and Chart.js. It runs in the browser with no build step and reads its data live from a Supabase table.

## What's in this repo

- `index.html`: the dashboard. Host it with GitHub Pages or open it in a browser.
- `supabase/schema.sql`: creates the `sales` table, turns on read-only public access, and loads 24 sample rows.
- `sales_data.xlsx`: the original sample spreadsheet. The dashboard does not read this file. It is kept for reference.

## Where the data comes from

On load, the page requests rows from the Supabase `sales` table. If that request fails, it shows a built-in copy of the sample rows and says so at the top of the page.

- The page uses Supabase's public (publishable) key, which is meant to be visible in browser code.
- Row Level Security allows reading only. There are no insert, update or delete policies, so the public key cannot change any data.
- Edit rows in the Supabase dashboard (Table Editor). Click **Refresh data** on the page, or reload it, to see the changes.
- The secret `service_role` key must never be added to this page.

To use your own Supabase project, run `supabase/schema.sql` in its SQL editor, then replace `SUPABASE_URL` and `SUPABASE_KEY` near the top of the script in `index.html`.

## Features

- KPI strip: revenue, profit, profit margin and average unit price
- Monthly revenue, profit and margin trend
- Region, sales channel, top product and revenue-against-margin charts
- Filters for region, sales channel, month, category and product. Clicking a chart also applies the filter.
- Sortable sales ledger with totals
- "Load another file" button that reads any `.xlsx` or `.csv` with the same columns, in your browser only

## Data columns

`sale_date`, `region`, `product`, `category`, `sales_channel`, `unit_price`, `revenue`, `cost`, and `profit` (generated as revenue minus cost). The sample figures are illustrative.

## Publish it

Go to **Settings → Pages**, choose **Deploy from a branch**, then select `main` and `/ (root)`.
