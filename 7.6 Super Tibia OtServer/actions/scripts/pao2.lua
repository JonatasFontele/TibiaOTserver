
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 0 then

elseif item2.itemid == 1775 or 2562 or 2005 or 2006 or 2007 or 2008 or 2009 or 2011 or 2012 or 2013 
or 2014 or 2015 or 2023 or 2031 or 2032 or 2033 and type >= 1 then
doTransformItem(item.uid,2693)
doChangeTypeItem(item2.uid,0)

end
return 1
end
