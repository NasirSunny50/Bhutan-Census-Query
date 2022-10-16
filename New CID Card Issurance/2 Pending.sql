select ta.CID_Number, ta.App_Approval_Date, ta.App_Rejection_Date
from t_citizen_master tcm
join t_application ta
on tcm.CID_Number = ta.CID_Number
join t_citizen_dtls tcd
on tcm.CID_Number = tcd.CID_Number
where (ta.App_Approval_Date is null AND ta.App_Rejection_Date is null AND ta.Request_Service_Id =2)