update venyous set picture_headerID = null where venyous.title_nl is null and picture_headerID is not null ;
delete from pictures where venyouID is not ;
delete from venyous where title_nl is null;