SELECT *
FROM Human
         INNER JOIN gender g on g.gender_id = humans.sex
         INNER JOIN nation n on n.nation_id = humans.nationality;

