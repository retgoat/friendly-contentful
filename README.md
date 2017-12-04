# Contentful investigation

## Report

![response-latency](https://raw.githubusercontent.com/retgoat/friendly-contentful/master/_data/response-latency.png)

Label|# Samples|Average|Min|Max|Std. Dev.|Error %|Throughput|KB/sec|Avg. Bytes
-----|---------|-------|---|---|---------|-------|----------|------|----------
Thread Group:Maru (Elixir) get all dummies|5000|21|7|505|16.38|0.00%|12.2|305.72|25609.0
Thread Group:Rails (Ruby) get all dummies|5000|3943|59|7849|551.54|0.00%|12.2|399.28|33594.0
Thread Group:Grape (Ruby) get all dummies|5000|119|30|1001|67.30|0.00%|12.2|399.34|33501.0
TOTAL|15000|1361|7|7849|1854.29|0.00%|36.5|1101.43|30901.3


## Installation

### Rails

Ruby: 2.4.1
[Rails](https://github.com/rails/rails): 5.1.4


Create DB according to `database.yml_sample`

Prepare the data:

* `bundle install`
* `rake db:create`
* `rake db:migrate`
* `rake db:seed`

Run application: `rails s`

### Grape

Ruby: 2.4.1
[Grape](https://github.com/ruby-grape/grape): 0.13.0

Install `grape-cli` for convenience: `gem install grape-cli`

Create DB according to `database.yml_sample` if not created before.

Prepare the data:

* `bundle install`
* !! **Database should be already created**

Seeds exists only in `rails` app.

### Maru

Elixir: 1.4.4
[Maru](https://github.com/elixir-maru/maru): 0.12


Install elixir for your platform. Here is the [guide](https://elixir-lang.org/install.html)

Prepare the app: `mix deps.get`

Add `inserted_at` column to the table:

```sql
alter table dummies add column if not exists inserted_at timestamp;
```


Run the app: `iex -S mix`

## Launch apache jmeter

Install Apache jmeter http://jmeter.apache.org

Run jmeter and open [testing scenario](https://raw.githubusercontent.com/retgoat/friendly-contentful/master/_data/contentful.jmx)

Run testing scenario.

