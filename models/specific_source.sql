SELECT DISTINCT
  p.Title,
  p.Body,
  p.Score,
  p.Id,
  c.Text
FROM
  {{ source('stack_overflow_updated', 'posts') }} AS p
  LEFT JOIN {{ source('stack_overflow_updated', 'comments') }} AS c ON p.Id = c.PostId
WHERE
  (p.Body ILIKE '%duckdb%')
  OR (p.Title ILIKE '%duckdb%')
  OR (c.Text ILIKE '%duckdb%')