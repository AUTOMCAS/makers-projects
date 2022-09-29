require_relative 'post'

class PostRepository
  def all
    sql = 'SELECT id, title, content, views, user_account_id FROM posts;'
    results_set = DatabaseConnection.exec_params(sql, [])

    posts = []

    results_set.each do |record|
      post = Post.new
      post.id = record['id']
      post.title = record['title']
      post.content = record['content']
      post.views = record['views']
      post.user_account_id = record['user_account_id']

      posts << post
    end

    return posts
  end

  def find(id)
    sql = 'SELECT id, title, content, views, user_account_id FROM posts WHERE id = $1;'
    param = [id]

    results_set = DatabaseConnection.exec_params(sql, param)

    find_post = results_set.first

    post = Post.new
    post.id = find_post['id']
    post.title = find_post['title']
    post.content = find_post['content']
    post.views = find_post['views']
    post.user_account_id = find_post['user_account_id']

    return post

  end

  def create(post)
      sql = 'INSERT INTO posts (title, content, views, user_account_id) VALUES ($1, $2, $3, $4);'
      params = [post.title, post.content, post.views, post.user_account_id]

      DatabaseConnection.exec_params(sql, params)

    return nil
  end

  def delete(id)
    sql = 'DELETE FROM posts WHERE id = $1;'
    param = [id]

    DatabaseConnection.exec_params(sql, param)

    return nil
  end

  def update(post)
    sql = 'UPDATE posts SET title = $1, content = $2, views = $3, user_account_id = $4 WHERE id = $5;'
    params = [post.title, post.content, post.views, post.user_account_id, post.id]

    DatabaseConnection.exec_params(sql, params)

    return nil
  end
end