require_relative '../lib/user_account_repository'
require_relative '../lib/post_repository'

def reset_user_accounts_table
  seed_sql = File.read('spec/seeds_social_network.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
  connection.exec(seed_sql)
end

describe UserAccountRepository do
  before(:each) do 
    reset_user_accounts_table
  end

  it 'returns all user_accounts' do
    repo = UserAccountRepository.new
    user_accounts = repo.all

    expect(user_accounts.length).to eq 2

    expect(user_accounts[0].id).to eq '1'
    expect(user_accounts[0].email).to eq 'example@email.com'
    expect(user_accounts[0].username).to eq 'Exampler, the first of his name'

    expect(user_accounts[1].id).to eq '2'
    expect(user_accounts[1].email).to eq 'example2@email.com'
    expect(user_accounts[1].username).to eq 'Exampler, the second of his name'
  end

  it 'retunns a single user_account by id' do
    repo = UserAccountRepository.new
    user_account = repo.find(1)
    binding.irb
    expect(user_account.id).to eq '1'
    expect(user_account.email).to eq 'example@email.com'
    expect(user_account.username).to eq 'Exampler, the first of his name'
  end

  it "Creates a user account" do
    repo = UserAccountRepository.new
    
    new_user_account = UserAccount.new
    new_user_account.email = 'example3@email.com'
    new_user_account.username = 'Exampler, the third of his name'

    repo.create(new_user_account)

    all_user_accounts = repo.all

    expect(all_user_accounts.length).to eq 3
  end

  it "deletes a user account by id" do
    repo = UserAccountRepository.new

    new_user_account = UserAccount.new
    new_user_account.email = 'example3@email.com'
    new_user_account.username = 'Exampler, the third of his name'

    repo.create(new_user_account)
    repo.delete(3)
    all_user_accounts = repo.all

    expect(all_user_accounts.length).to eq 2
  end
  
  it "Updates a user account" do
    repo = UserAccountRepository.new

    update_user_account = UserAccount.new
    update_user_account.id = '1'
    update_user_account.email = 'example1@email.co.uk'
    update_user_account.username = 'Exampler, the first of his name'

    repo.update(update_user_account)

    updated_user_account = repo.find(1)

    expect(updated_user_account.email).to eq 'example1@email.co.uk'
  end
end

describe PostRepository do
  before(:each) do 
    reset_user_accounts_table
  end

  it "returns all posts" do
    repo = PostRepository.new
    posts = repo.all

    expect(posts.length).to eq 2

    expect(posts[0].id).to eq '1'
    expect(posts[0].title).to eq  'A great year'
    expect(posts[0].content).to eq 'Or is it?'
    expect(posts[0].views).to eq '2'
    expect(posts[0].user_account_id).to eq '1'
  end

  it "finds and returns a single object" do
    repo = PostRepository.new

    post = repo.find(1)

    expect(post.id).to eq '1'
    expect(post.title).to eq  'A great year'
    expect(post.content).to eq 'Or is it?'
    expect(post.views).to eq '2'
    expect(post.user_account_id).to eq '1'
  end

  it "Creates a new post" do
    repo = PostRepository.new

    new_post = Post.new
    new_post.title = 'A great year'
    new_post.content = 'Or is it?'
    new_post.views = '2'
    new_post.user_account_id = '1'
    
    repo.create(new_post)
    
    all_posts = repo.all
    
    expect(all_posts.length).to eq 3
  end

  it "Deletes a post by id" do
    repo = PostRepository.new

    new_post = Post.new
    new_post.title = 'A great year'
    new_post.content = 'Or is it?'
    new_post.views = '2'
    new_post.user_account_id = '1'

    repo.create(new_post)

    repo.delete(3)

    all_posts = repo.all

    expect(all_posts.length).to eq 2
  end

  it "Updates a post" do
    repo = PostRepository.new

    update_post = Post.new
    update_post.id = '1'
    update_post.title = 'A great year'
    update_post.content = 'Or is it?'
    update_post.views = '500'
    update_post.user_account_id = '1'

    repo.update(update_post)

    updated_post = repo.find(1)

    expect(updated_post.views).to eq '500'
  end
end