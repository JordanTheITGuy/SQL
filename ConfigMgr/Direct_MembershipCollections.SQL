SELECT V_CollectionRuleDirect.CollectionID as 'CollectionID'
	, V_Collections.CollectionName as 'Collection Name'
	, COUNT (V_CollectionRuleDirect.CollectionID) AS 'TOTAL'
 FROM v_CollectionRuleDirect
LEFT OUTER JOIN v_Collections on V_Collections.SiteID = v_CollectionRuleDirect.CollectionID
WHERE v_CollectionRuleDirect.ResourceType = '5'
GROUP BY v_CollectionRuleDirect.CollectionID , V_Collections.CollectionName
ORDER BY TOTAL DESC