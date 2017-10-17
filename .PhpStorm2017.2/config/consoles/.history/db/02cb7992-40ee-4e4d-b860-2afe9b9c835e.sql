select * from venyous where title_nl = NULL
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where title_nl = ''
;-- -. . -..- - / . -. - .-. -.--
delete * from venyous where title_nl = ''
;-- -. . -..- - / . -. - .-. -.--
delete from venyous where title_nl = ''
;-- -. . -..- - / . -. - .-. -.--
select *from venyous where title_nl = ''
;-- -. . -..- - / . -. - .-. -.--
select *from venyous where title_nl = NULL
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where title_nl = <null>
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where title_nl = null
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where title_nl == null
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where title_nl <> null
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where `title_nl` <> null
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where `title_nl` is null
;-- -. . -..- - / . -. - .-. -.--
select * from venyous where title_nl is null
;-- -. . -..- - / . -. - .-. -.--
delete from venyous where title_nl is null
;-- -. . -..- - / . -. - .-. -.--
update venyous where venyous.title_nl is null and picture_headerID is not null set picture_headerID null
;-- -. . -..- - / . -. - .-. -.--
update venyous set picture_headerID = null where venyous.title_nl is null and picture_headerID is not null
;-- -. . -..- - / . -. - .-. -.--
delete from pictures where venyouID is not null