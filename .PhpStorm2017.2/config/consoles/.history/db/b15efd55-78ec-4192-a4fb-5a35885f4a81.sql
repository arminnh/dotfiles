update emails set to_email = 'incoming_email@coachteam.net' where to_email = 'postmaster@sandbox475604a9d55b48c4bf0d9daae94d07da.mailgun.org''
;-- -. . -..- - / . -. - .-. -.--
update emails set to_email = 'incoming_email@coachteam.net' where to_email = 'postmaster@sandbox475604a9d55b48c4bf0d9daae94d07da.mailgun.org'
;-- -. . -..- - / . -. - .-. -.--
select * from languages where language like en
;-- -. . -..- - / . -. - .-. -.--
select * from languages where language like 'en'
;-- -. . -..- - / . -. - .-. -.--
select * from languages where language like 'en' or where key like 'en'
;-- -. . -..- - / . -. - .-. -.--
select * from languages where language like 'en' or where `key` like 'en'
;-- -. . -..- - / . -. - .-. -.--
select * from languages where language like 'en' or `key` like 'en'
;-- -. . -..- - / . -. - .-. -.--
select * from languages where language like 'english' or `key` like 'en'
;-- -. . -..- - / . -. - .-. -.--
select orderStatus from coachteambackend_legacy.comod_mk_order group by orderStatus
;-- -. . -..- - / . -. - .-. -.--
select count(*) as c from selftest_actions GROUP BY selftest_id HAVING c > 0
;-- -. . -..- - / . -. - .-. -.--
select count(*) as c from selftest_actions GROUP BY selftest_id HAVING c > 1
;-- -. . -..- - / . -. - .-. -.--
select selftest_id, 
  count(*) as c from selftest_actions GROUP BY selftest_id HAVING c > 1
;-- -. . -..- - / . -. - .-. -.--
select * from selftest_actions where selftest_id = 1333268
;-- -. . -..- - / . -. - .-. -.--
select * from selftest_actions where selftest_id = 1456070
;-- -. . -..- - / . -. - .-. -.--
select selftest_id, count(*) as c from selftest_actions GROUP BY selftest_id HAVING c > 1 ORDER BY c DESC
;-- -. . -..- - / . -. - .-. -.--
select * from selftest_actions where selftest_id = 1930262
;-- -. . -..- - / . -. - .-. -.--
delete * from translations where key_id = 1
;-- -. . -..- - / . -. - .-. -.--
delete from translations where key_id = 1
;-- -. . -..- - / . -. - .-. -.--
select * from translations_flags where exists (select * from translations where translations.key_id = translations_flags.key_id and translations.language_id = translations_flags.language_id)
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.*,
  T2.version
FROM translations_flags AS TF LEFT JOIN translations AS T
    ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND
                                      (T.is_active = 1 AND T2.is_active = 0) OR T.version > T2.version
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND T2.version IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF LEFT JOIN translations AS T
    ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND
                                      (T.is_active = 1 AND T2.is_active = 0) OR T.version > T2.version
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND T2.version IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF LEFT JOIN translations AS T
    ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND
                                      (T.is_active = 0 AND T2.is_active = 1) OR T.version < T2.version
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND T2.version IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF LEFT JOIN translations AS T
    ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND
                                      (T.is_active = 0 AND T2.is_active = 1) OR T.version < T2.version
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND T1.version IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF LEFT JOIN translations AS T
    ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND
                                      (T.is_active = 0 AND T2.is_active = 1) OR T.version < T2.version
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND T.version IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF LEFT JOIN translations AS T
    ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND
                                      (T.is_active = 0 AND T2.is_active = 1) OR T.version < T2.version
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF 
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) OR T.version < T2.version)
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  *
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 1 AND T2.is_active = 0) OR T.version > T2.version)
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  `TF`.*,
  `T2`.`version`
FROM `translations_flags` AS `TF`
  LEFT JOIN `translations` AS `T` ON `TF`.`key_id` = `T`.`key_id` AND `TF`.`language_id` = `T`.`language_id`
  LEFT JOIN `translations` AS `T2` ON `T`.`key_id` = `T2`.`key_id` AND `T`.`language_id` = `T2`.`language_id` AND ((`T`.`is_active` = 1 AND `T2`.`is_active` = 0) OR `T`.`version` > T2.version)
  INNER JOIN `flags_categories` AS `FC` ON `TF`.`category_id` = `FC`.`id`
WHERE `TF`.`is_done` = 0 AND `FC`.`name` = 'needs update' AND `T2`.`version` IS NULL
;-- -. . -..- - / . -. - .-. -.--
`T2`.`version`
;-- -. . -..- - / . -. - .-. -.--
SELECT
  `TF`.*,
  T2.version,
FROM `translations_flags` AS `TF`
  LEFT JOIN `translations` AS `T` ON `TF`.`key_id` = `T`.`key_id` AND `TF`.`language_id` = `T`.`language_id`
  LEFT JOIN `translations` AS `T2` ON `T`.`key_id` = `T2`.`key_id` AND `T`.`language_id` = `T2`.`language_id` AND ((`T`.`is_active` = 1 AND `T2`.`is_active` = 0) OR `T`.`version` > T2.version)
  INNER JOIN `flags_categories` AS `FC` ON `TF`.`category_id` = `FC`.`id`
WHERE `TF`.`is_done` = 0 AND `FC`.`name` = 'needs update' AND `T2`.`version` IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  `TF`.*,
  T2.version
FROM `translations_flags` AS `TF`
  LEFT JOIN `translations` AS `T` ON `TF`.`key_id` = `T`.`key_id` AND `TF`.`language_id` = `T`.`language_id`
  LEFT JOIN `translations` AS `T2` ON `T`.`key_id` = `T2`.`key_id` AND `T`.`language_id` = `T2`.`language_id` AND ((`T`.`is_active` = 1 AND `T2`.`is_active` = 0) OR `T`.`version` > T2.version)
  INNER JOIN `flags_categories` AS `FC` ON `TF`.`category_id` = `FC`.`id`
WHERE `TF`.`is_done` = 0 AND `FC`.`name` = 'needs update' AND `T2`.`version` IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM `translations_flags` AS `TF`
  LEFT JOIN `translations` AS `T` ON `TF`.`key_id` = `T`.`key_id` AND `TF`.`language_id` = `T`.`language_id`
  LEFT JOIN `translations` AS `T2` ON `T`.`key_id` = `T2`.`key_id` AND `T`.`language_id` = `T2`.`language_id` AND ((`T`.`is_active` = 1 AND `T2`.`is_active` = 0) OR `T`.`version` > T2.version)
  INNER JOIN `flags_categories` AS `FC` ON `TF`.`category_id` = `FC`.`id`
WHERE `TF`.`is_done` = 0 AND `FC`.`name` = 'needs update' AND `T2`.`version` IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 1 AND T2.is_active = 0) OR T.version > T2.version)
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND T2.version IS NULL
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 1 AND T2.is_active = 0) OR T.version > T2.version)
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) OR T.version > T2.version)
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) )
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) OR T.version < T2.version)
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.comment,
  T.id, T.key_id, T.language_id, T.version, T.is_active,
  T2.id, T2.key_id, T2.language_id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) OR (T.is_active = 0 AND T.version < T2.version))
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.key_id, TF.language_id, TF.comment,
  T.id, T.version, T.is_active,
  T2.id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) OR (T.is_active = 0 AND T.version < T2.version))
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
WHERE TF.is_done = 0 AND FC.name = 'needs update'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  TF.id, TF.key_id, TF.language_id, TF.comment,
  T.id, T.version, T.is_active,
  T2.id, T2.version, T2.is_active,
  T.translation, T2.translation
FROM translations_flags AS TF
  LEFT JOIN translations AS T ON TF.key_id = T.key_id AND TF.language_id = T.language_id
  LEFT JOIN translations AS T2 ON T.key_id = T2.key_id AND T.language_id = T2.language_id AND ((T.is_active = 0 AND T2.is_active = 1) OR (T.is_active = 0 AND T.version < T2.version))
  INNER JOIN flags_categories AS FC ON TF.category_id = FC.id
  INNER JOIN users_settings_languages as USL ON TF.language_id = USL.language_id
WHERE TF.is_done = 0 AND FC.name = 'needs update' AND USL.uid = 3 AND USL.can_edit = 1
;-- -. . -..- - / . -. - .-. -.--
select * from `translations` where `key_id` in (select `translations_keys`.`id` from `translations_keys`) and `language_id` in (1, 2, 3, 4, 5)
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, max(version) from translations
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, version from translations
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, version order by key_id, language_id from translations
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, version order by key_id order by language_id from translations
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, version from translations order by key_id order by language_id
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, version from translations order by key_id, language_id
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, version from translations order by key_id, language_id, version
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, max(version) from translations order by key_id, language_id
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, max(version) from translations order by key_id, language_id group by version
;-- -. . -..- - / . -. - .-. -.--
select id, key_id, language_id, max(version) from translations group by version order by key_id, language_id
;-- -. . -..- - / . -. - .-. -.--
select category_id, count(*) from translations_keys
;-- -. . -..- - / . -. - .-. -.--
select category_id, count(*) from translations_key GROUP BY category_id
;-- -. . -..- - / . -. - .-. -.--
select category_id, count(*) from translations_keys GROUP BY category_id
;-- -. . -..- - / . -. - .-. -.--
select count(*) from translations_flags where category_id = 2 and is_done = 0
;-- -. . -..- - / . -. - .-. -.--
select count(*) from translations_flags where category_id = 2 and is_done = 0 group by key_id
;-- -. . -..- - / . -. - .-. -.--
select key_id, count(*) from translations_flags where category_id = 2 and is_done = 0 group by key_id
;-- -. . -..- - / . -. - .-. -.--
select count(*) from translations_flags where category_id = 1 and is_done = 0 group by key_id
;-- -. . -..- - / . -. - .-. -.--
select key_id, count(*) from translations_flags where category_id = 1 and is_done = 0
;-- -. . -..- - / . -. - .-. -.--
select count(*) from translations_flags where category_id = 1 and is_done = 0
;-- -. . -..- - / . -. - .-. -.--
select key_id, count(*) from translations_flags where category_id = 1 and is_done = 0 group by key_id
;-- -. . -..- - / . -. - .-. -.--
update translations set is_active = 0, waiting_for_approval = 1 where key_id = 3277 and language_id = 2
;-- -. . -..- - / . -. - .-. -.--
select *
from translations as T1
  left join translations as T2 on T1.key_id = T2.key_id
  inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, TK.key, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left join translations as T2 on T1.key_id = T2.key_id
  inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, TK.key, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left join translations as T2 on T1.key_id = T2.key_id
  inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.language_id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, TK.key, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left OUTER JOIN translations as T2 on T1.key_id = T2.key_id
  inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.language_id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, TK.key, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left JOIN translations as T2 on T1.key_id = T2.key_id
  inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.language_id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select * from translations where waiting_for_approval = 1
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, TK.key, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left JOIN translations as T2 on T1.key_id = T2.key_id
  inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 #and (T2.language_id = 1 or T2.language_id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left JOIN translations as T2 on T1.key_id = T2.key_id
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 #and (T2.language_id = 1 or T2.language_id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left JOIN translations as T2 on T1.key_id = T2.key_id
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.language_id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.id as from_id, T2.language_id as from_language_id,
  T2.translation as from_translation, T1.id as to_id,
  T1.translation as to_translation, T1.language_id as to_language_id
from translations as T1
  left JOIN translations as T2 on T1.key_id = T2.key_id
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.key_id,
  T2.id as from_id, T2.language_id as from_language_id, T2.translation as from_translation, 
  T1.id as to_id,   T1.language_id as to_language_id,   T1.translation as to_translation
from translations as T1
  left JOIN translations as T2 on T1.key_id = T2.key_id
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, 
  T1.id as to_id,   T1.language_id as to_language_id,   T1.translation as to_translation
from translations as T1
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.key_id,
  T2.id as from_id, T2.language_id as from_language_id, T2.translation as from_translation,
  T1.id as to_id,   T1.language_id as to_language_id,   T1.translation as to_translation
from translations as T1
  LEFT OUTER JOIN translations as T2 on T1.key_id = T2.key_id
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.id is null)
order by T1.language_id asc, T1.id asc
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.key_id,
  T2.id as from_id, T2.language_id as from_language_id, T2.translation as from_translation,
  T1.id as to_id,   T1.language_id as to_language_id,   T1.translation as to_translation
from translations as T1
  LEFT OUTER JOIN translations as T2 on T1.key_id = T2.key_id
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1 and (T2.language_id = 1 or T2.id is null)
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id,
  T1.id as to_id,   T1.language_id as to_language_id,   T1.translation as to_translation
from translations as T1
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1
;-- -. . -..- - / . -. - .-. -.--
select T1.key_id, T2.key_id,
  T2.id as from_id, T2.language_id as from_language_id, T2.translation as from_translation,
  T1.id as to_id,   T1.language_id as to_language_id,   T1.translation as to_translation
from translations as T1
  LEFT OUTER JOIN translations as T2 on T1.key_id = T2.key_id and (T2.language_id = 1 or T2.id is null)
#   inner join translations_keys as TK on T1.key_id = TK.id
where T1.language_id in (1, 2, 3, 4, 5) and T1.waiting_for_approval = 1
;-- -. . -..- - / . -. - .-. -.--
select * from translations where key_id = 164 and language_id = 1
;-- -. . -..- - / . -. - .-. -.--
update translations set is_active = 0, waiting_for_approval = 1 where key_id = 3051 and language_id = 2
;-- -. . -..- - / . -. - .-. -.--
update translations set is_active = 0, waiting_for_approval = 0 where key_id = 14 and language_id = 1
;-- -. . -..- - / . -. - .-. -.--
select * from translations where key_id = 14 and language_id = 1
;-- -. . -..- - / . -. - .-. -.--
update translations set is_active = 1 where id = 53
;-- -. . -..- - / . -. - .-. -.--
select category_id, count(*) from translations_keys group by category_id
;-- -. . -..- - / . -. - .-. -.--
update translations set is_active = 0, waiting_for_approval = 0 where key_id = 164 and language_id = 1