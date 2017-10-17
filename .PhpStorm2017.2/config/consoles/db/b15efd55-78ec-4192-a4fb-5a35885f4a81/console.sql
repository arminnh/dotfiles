update translations set is_active = 0, waiting_for_approval = 0 where key_id = 164 and language_id = 1;

select * from translations where key_id = 14 and language_id = 1;

update translations set is_active = 1 where id = 53;

select category_id, count(*) from translations_keys group by category_id;