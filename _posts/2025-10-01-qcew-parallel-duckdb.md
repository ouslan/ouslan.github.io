---
title: "Querying the QCEW with parallel downloads and DuckDB"
date: 2025-10-01
permalink: /posts/2025/10/qcew-parallel-duckdb/
excerpt: "The Quarterly Census of Employment and Wages (QCEW) is one of the richest public sources on U.S."
tags:
  - data engineering
  - python
  - duckdb
---

> **Test entry.** This post is placeholder content to preview the blog layout. Replace it with your own writing.

![Querying the QCEW with parallel downloads and DuckDB (placeholder image)](/images/blog/qcew-parallel.svg)

The Quarterly Census of Employment and Wages (QCEW) is one of the richest public sources on U.S. employment, but it is spread across many files. In this post I outline the approach I used:

1. Download the files asynchronously in parallel from the Bureau of Labor Statistics.
2. Store them as Parquet.
3. Query them all at once with DuckDB and SQL.

```python
import duckdb

con = duckdb.connect()
con.sql("""
    SELECT year, qtr, SUM(month3_emplvl) AS employment
    FROM 'data/qcew/*.parquet'
    WHERE area_fips LIKE '72%'
    GROUP BY year, qtr
    ORDER BY year, qtr
""").show()
```

The tools are available in [jp-qcew](https://github.com/gitinference/jp-qcew) and [jp-tools](https://github.com/gitinference/jp-tools).
