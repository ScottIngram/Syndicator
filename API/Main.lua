local _, addonTable = ...

function Syndicator.API.GetInventoryInfo(itemLink, sameConnectedRealm, sameFaction)
  local success, key = pcall(Syndicator.Utilities.GetItemKey, itemLink)
  if not success then
    error("Bad item link. Try using one generated by a call to GetItemInfo.")
    return
  end

  return Syndicator.ItemSummaries:GetTooltipInfo(key, sameConnectedRealm == true, sameFaction == true)
end

function Syndicator.API.RegisterShowItemLocation(callback)
  addonTable.ShowItemLocationCallback = callback
end