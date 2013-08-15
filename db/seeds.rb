user2 = User.new(username: 'user2')
user2.password = 'password'
user2.save

user3 = User.new(username: 'user3')
user3.password = 'password'
user3.save

user4 = User.new(username: 'user4')
user4.password = 'password'
user4.save

post1 = user2.posts.create(title: 'title1', link: 'link1')
post2 = user2.posts.create(title: 'title2', link: 'link2')
comment1 = user2.comments.create(content: 'content1', post_id: 1)
comment2 = user2.comments.create(content: 'content2', post_id: 1)


comment3 = user3.comments.create(content: 'content3', post_id: 1)
comment4 = user3.comments.create(content: 'content4', post_id: 2)


comment5 = user3.comments.create(content: 'content5', post_id: 1)
comment6 = user4.comments.create(content: 'content6', post_id: 2)

