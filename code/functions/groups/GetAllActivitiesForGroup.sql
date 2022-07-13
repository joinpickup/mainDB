select *
from "Event"
inner join "GroupEvent"
on "GroupEvent".EventID = "Event".EventID
where "GroupEvent".GroupID = groupID;
