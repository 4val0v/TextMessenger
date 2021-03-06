-- Add several users
INSERT INTO `user` (`login`, `email`, `password`, `first_name`, `last_name`, `profile_photo`, `created_at`,`is_enabled`) VALUES ('test', 'test@gmail.com', '$2a$10$Nxv31bE4lCSQtJoGy.x3SOlzjUqnxLBvGHqII69caX0LQf53tpCy6', 'test', 'test','https://my-text-messages.s3.us-east-2.amazonaws.com/userAvatar/0a83b188-2f42-46ee-8f2d-8231c225c022.jpeg','2008-03-01 17:05:33',true);
INSERT INTO `user` (`login`, `email`, `password`, `first_name`, `last_name`, `profile_photo`, `created_at`,`is_enabled`) VALUES ('sarah', 'sarah.g@gmail.com', '$2a$10$20ElDZ3ZSC8CAb1kBSPpqOSadUVD9n8EzU18.flmO8wwG3DDghWQu', 'Sarah', 'Garcia', 'https://randomuser.me/api/portraits/women/82.jpg' ,'2008-03-01 17:04:33',true);
INSERT INTO `user` (`login`, `email`, `password`, `first_name`, `last_name`, `profile_photo`, `created_at`,`is_enabled`) VALUES ('johny', 'j.doe@gmail.com', '$2a$10$eXm0aTgTNKJIMFYhFrHLDuZx.P/wUJUABaQzJHUf/Hsr5zgi55OeG', 'John', 'Doe', 'https://randomuser.me/api/portraits/men/43.jpg', '2008-11-10 20:05:12',true);
INSERT INTO `user` (`login`, `email`, `password`, `first_name`, `last_name`, `profile_photo`, `created_at`,`is_enabled`) VALUES ('samurai', 'typeserf@yahoo.com', '$2a$10$Xa8X.CA8HTl6YlvDdLaUEeJJ8lNgbtEHAtJQ5yJ.SZ3BHwGmOV7/y', 'Tanaka', 'Shirakawa', 'https://randomuser.me/api/portraits/women/60.jpg', '2010-12-08 04:05:37',true);
INSERT INTO `user` (`login`, `email`, `password`, `first_name`, `last_name`, `profile_photo`, `created_at`,`is_enabled`) VALUES ('alex007', 'alexgType@gmail.com', '$2a$10$5SigsXwJ1a5/Tm30APjt5O4Cg3hsulWn9nmTQvON4hXriAMBWed.m', 'Alex', 'Green', 'https://randomuser.me/api/portraits/men/79.jpg', '2011-01-07 07:12:24',true);
INSERT INTO `user` (`login`, `email`, `password`, `first_name`, `last_name`, `profile_photo`, `created_at`,`is_enabled`) VALUES ('amilyUta', 'lang@kito.org', '$2a$10$O49KTEH/a7Y1BfGweedKROrCIq9hjxkYxmDpk/5QxFGtXW4duLdDC', 'Rio', 'Sanchez', 'https://randomuser.me/api/portraits/men/86.jpg', '2016-09-02 18:54:03',true);


-- Add several posts
INSERT INTO `post` (`content`, `created_at`,                `user_id`) VALUES ('Thanksgiving is a time to be thankful for all that we have, express gratitude to those we love, and offer help to those in need. The Thanksgiving, we want to give back. For every LIKE on the post today, we will be donating $5 to the Hunger Task, Inc. to help feed hungry families.', '2008-09-17 09:52:47', 1);
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`) VALUES ('#NewYearsResolutionIn5Words Do something good for others.', '2008-12-31 19:24:38', '2008-12-31 20:01:42', 1);
INSERT INTO `post` (`content`, `created_at`,                `user_id`) VALUES ('What tools are must haves when it comes to cooking at home? I give you a list of the essentials in my latest Cooking Class!', '2008-10-11 11:57:30', 2);
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`) VALUES ('Want to learn a little more about the origins of our company and how we stay successful? Check out this video: https://www.youtube.com/watch?v=VuukRMmh9-8', '2011-07-05 19:25:34', '2011-10-05 04:30:49', 3);
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`) VALUES ('“Wisdom is the reward you get for a lifetime of listening when you would rather have talked.” – Mark Twain ', '2008-03-01 17:04:33', '2008-03-02 12:06:36', 1);
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`,`img_url`,`img_key`) VALUES ('People don’t read on Facebook. They skim. To maximize engagement with your posts you need to quickly and easily communicate how your Fans can participate.', '2012-05-03 17:04:33', '2012-03-07 12:06:36', 1,'https://my-text-messages.s3.us-east-2.amazonaws.com/postImage/f8c46cb0-ccb3-4849-a36e-16ca49fb2b9c.jpeg','postImage/f8c46cb0-ccb3-4849-a36e-16ca49fb2b9c.jpeg');
INSERT INTO `post` (`content`, `created_at`,                `user_id`,`img_url`,`img_key`) VALUES ('Workers distracted by email and phone calls suffer a fall in IQ more than twice that found in marijuana smokers, new research has claimed.', '2011-02-07 17:04:33', 4,'https://my-text-messages.s3.us-east-2.amazonaws.com/postImage/9c15b9af-960d-4819-9732-6e08bac47680.jpeg','postImage/9c15b9af-960d-4819-9732-6e08bac47680.jpeg');
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`,`img_url`,`img_key`) VALUES ('I was recently diagnosed with testicular cancer. Yes, the dreaded c word. It’s probably not what you are thinking. I don’t look at this health issue as an anchor. I look at this as an opportunity for growth.', '2016-07-07 09:04:10', '2016-09-17 14:16:29', 5, 'https://my-text-messages.s3.us-east-2.amazonaws.com/postImage/7145a486-8d9b-44e7-a56d-19b0f125a64c.jpeg', 'postImage/7145a486-8d9b-44e7-a56d-19b0f125a64c.jpeg');
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`,`img_url`,`img_key`) VALUES ('Hello world.', '2016-07-07 09:06:10', '2016-09-17 14:18:29', 5, 'https://my-text-messages.s3.us-east-2.amazonaws.com/postImage/fc9f8618-7fd2-4c53-af90-996b01a99c77.jpeg', 'postImage/fc9f8618-7fd2-4c53-af90-996b01a99c77.jpeg');
INSERT INTO `post` (`content`, `created_at`, `last_update`, `user_id`,`img_url`,`img_key`) VALUES ('I want to be here', '2016-07-07 09:10:30', '2016-09-17 14:17:39', 2, 'https://my-text-messages.s3.us-east-2.amazonaws.com/postImage/11cc8ab7-545c-411b-a157-9f29c02d0619.jpeg', 'postImage/11cc8ab7-545c-411b-a157-9f29c02d0619.jpeg');

-- Set users liked posts
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (2, 1);  -- user 2 like post 1
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (1, 7);  -- user 1 like post 7
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (1, 8);  -- etc.
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (3, 1);
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (5, 1);
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (2, 3);
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (4, 1);
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (1, 3);
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (5, 4);
INSERT INTO `favorites` (`user_id`, `post_id`) VALUES (4, 2);

-- Add comments to posts
INSERT INTO `comment` (`content`, `user_id`, `post_id`, `created_at`) VALUES ('Have nice Thanksgiving day!', 3, 1, '2008-09-17 10:11:24');
INSERT INTO `comment` (`content`, `user_id`, `post_id`, `created_at`) VALUES ('Yes, you absolutely right.', 1, 1, '2008-01-18 10:17:01');
INSERT INTO `comment` (`content`, `user_id`, `post_id`, `created_at`) VALUES ('This day is cool for us.', 4, 1, '2008-01-18 17:12:14');
INSERT INTO `comment` (`content`, `user_id`, `post_id`, `created_at`) VALUES ('Happy new year', 4, 2, '2008-12-31 22:27:42');
INSERT INTO `comment` (`content`, `user_id`, `post_id`, `created_at`) VALUES ('Happy new year folks, wish you best luck', 3, 2, '2008-12-31 22:31:11');
INSERT INTO `comment` (`content`, `user_id`, `post_id`, `created_at`) VALUES ('I wonder why the wisdom is always wise', 3, 5, '2008-03-04 02:14:59');

-- Add dialogs between users
INSERT INTO `dialog` (`created_at`, `last_update`) VALUES ('2008-01-27 14:39:07', '2008-02-10 16:42:00');
INSERT INTO `dialog` (`created_at`, `last_update`) VALUES ('2009-01-27 14:39:07', '2009-02-10 16:42:00');
INSERT INTO `dialog` (`created_at`, `last_update`) VALUES ('2009-01-27 14:39:07', '2009-02-10 16:42:00');

-- Add connection between users and messages through dialog
INSERT INTO `user_dialog` (`user_id`, `dialog_id`) VALUES (1, 2);
INSERT INTO `user_dialog` (`user_id`, `dialog_id`) VALUES (2, 2);
INSERT INTO `user_dialog` (`user_id`, `dialog_id`) VALUES (1, 3);
INSERT INTO `user_dialog` (`user_id`, `dialog_id`) VALUES (3, 3);

-- Add messages to dialog
INSERT INTO `message` (`content`, `dialog_id`, `user_id`, `created_at`) VALUES ('hello', 2, 1, '2009-02-28 14:00:00');
INSERT INTO `message` (`content`, `dialog_id`, `user_id`, `created_at`) VALUES ('nice to meet you', 2, 2, '2009-02-28 14:01:00');
INSERT INTO `message` (`content`, `dialog_id`, `user_id`, `created_at`) VALUES ('bla', 3, 1, '2009-01-28 14:01:00');
INSERT INTO `message` (`content`, `dialog_id`, `user_id`, `created_at`) VALUES ('meet you', 3, 3, '2009-03-28 14:01:00');
