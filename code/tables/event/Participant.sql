create table if not exists "Participant"(
    "ParticipantID" serial primary key,
    "UserID" int,
    foreign key ("UserID") references "User"("UserID"),

    -- TODO: add more participant details
    "Status" "ParticipantStatus"
    "Type" "ParticipantType"
    "Attended" boolean
)