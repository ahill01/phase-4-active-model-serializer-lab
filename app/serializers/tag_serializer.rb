class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts

  def posts
    self.object.posts
  end

  has_many :post_tags
  has_many :posts, through: :post_tags
end
