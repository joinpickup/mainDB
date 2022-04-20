select *
from "User"
inner join "GroupMember"
on "GroupMember".UserID = "User".UserID
where "GroupMember"."GroupID" = groupID;