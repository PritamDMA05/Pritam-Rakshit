

use database ig_clone;
#Prjct 201 q2

select username, created_at from users order by created_at asc limit 5;



#Prjct 201 q3

select * from users where id not in( select user_id from photos); 


#Prjct 201 q4

select u.username,l.photo_id,count(*) as total_likes from likes l join photos p on l.photo_id=p.id join users u on p.user_id=u.id
 group by u.username,l.photo_id order by total_likes desc limit 1;
 
 
 #Prjct 201 q5

select  user_id,count(*) as posts, avg(user_id) as avg_posts from photos group by user_id;


 #Prjct 201 q6
 
select tag_name as photo_type,tag_id, count(*) as top_five from photo_tags pt join tags t
on pt.tag_id=t.id group by tag_id order by top_five desc limit 5;



#Prjct 201 q7



select u.username,count(*) from users u where id in(select l.user_id from likes l join photos p on l.photo_id=p.id 
or u.id=p.user_id and l.user_id=p.id
group by u.username,count(*));



#Prjct 201 q8

select username, created_at from users where extract( month from created_at)=5
order by created_at desc limit 5;


#Prjct 201 q9

select u.username from users u where id in(select l.user_id from likes l join photos p on l.photo_id=p.id and u.id=p.user_id and u.id=l.user_id 
and u.username rlike '^[c].*[^a-z]');


#Prjct 201 q10

select username,user_id,count(*) as photos_range from photos p join users u on u.id=p.user_id
 group by username,user_id having count(*) between 3 and 5 limit 30;












 










 
 
 
 