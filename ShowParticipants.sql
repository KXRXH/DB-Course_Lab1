SELECT conf.id, conf.conference_name, c.country_id, cp.participant_id
FROM conference_participants
         INNER JOIN conferences conf on conf.id = conference_participants.conference_id
         INNER JOIN conference_participants cp on conf.id = cp.conference_id
         INNER JOIN countries c on c.country_id = conf.country_id;