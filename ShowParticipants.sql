SELECT conf.id, conf.conference_name, c.country_id, cp.participant_id
FROM ConferenceParticipants
         INNER JOIN Conference conf on conf.id = ConferenceParticipants.conference_id
         INNER JOIN ConferenceParticipants cp on conf.id = cp.conference_id
         INNER JOIN Country c on c.country_id = conf.country_id;