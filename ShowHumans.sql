SELECT *
FROM humans
         INNER JOIN genders g on g.gender_id = humans.sex
         INNER JOIN nations n on n.nation_id = humans.nationality;

