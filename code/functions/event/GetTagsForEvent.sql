select *
from Tag
inner join EventTag
on Tag.TagID = EventTag.TagID
where EventTag.EventID = eventID