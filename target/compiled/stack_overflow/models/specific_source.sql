SELECT DISTINCT
  p.Title,
  p.Body,
  p.Score,
  p.Id,
  c.Text
FROM
  "stack_overflow_updated"."raw"."posts" AS p
  LEFT JOIN "stack_overflow_updated"."raw"."comments" AS c ON p.Id = c.PostId
WHERE
  (p.Body ILIKE '%duckdb%')
  OR (p.Title ILIKE '%duckdb%')
  OR (c.Text ILIKE '%duckdb%')