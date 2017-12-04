# Contentful investigation

![response-latency](https://raw.githubusercontent.com/retgoat/friendly-contentful/master/_data/response-latency.png)

Label|# Samples|Average|Min|Max|Std. Dev.|Error %|Throughput|KB/sec|Avg. Bytes
-----|---------|-------|---|---|---------|-------|----------|------|----------
Thread Group:Maru (Elixir) get all dummies|5000|21|7|505|16.38|0.00%|12.2|305.72|25609.0
Thread Group:Rails (Ruby) get all dummies|5000|3943|59|7849|551.54|0.00%|12.2|399.28|33594.0
Thread Group:Grape (Ruby) get all dummies|5000|119|30|1001|67.30|0.00%|12.2|399.34|33501.0
TOTAL|15000|1361|7|7849|1854.29|0.00%|36.5|1101.43|30901.3
