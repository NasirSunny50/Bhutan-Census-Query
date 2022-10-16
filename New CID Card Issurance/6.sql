select ta.CID_Number, ta.App_Approval_Date, ta.App_Rejection_Date, tcm.DOB, TIMESTAMPDIFF(year, tcm.DOB, CURDATE()) as Age
from t_citizen_master tcm

join t_application ta
on tcm.CID_Number = ta.CID_Number

join t_citizen_dtls tcd
on tcm.CID_Number = tcd.CID_Number

where (tcm.DOB is not null and TIMESTAMPDIFF(year, tcm.DOB, CURDATE())<15) limit 20