class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :posts

  # def profile

  # end

  def posts 
    self.object.posts.map do |post|
    { 
      title: post.title,
      short_content: "#{post.content[0..39]}...",
      tags: post.tags
    }
    end
  end

  has_one :profile
  has_many :posts
end
