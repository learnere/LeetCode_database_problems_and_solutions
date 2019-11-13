SELECT distinct tb1.id, tb1.visit_date, tb1.people
FROM stadium as tb1, stadium as tb2, stadium as tb3
WHERE tb1.people>=100 AND tb2.people>=100 AND tb3.people>=100
      AND ((tb1.id+1 = tb2.id AND tb1.id+2 = tb3.id)
      OR  (tb1.id-1 = tb2.id AND tb1.id+1 = tb3.id)
      OR  (tb1.id-1 = tb2.id AND tb1.id-2 = tb3.id))
ORDER BY tb1.id;