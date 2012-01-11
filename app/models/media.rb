class Media < ActiveRecord::Base
  belongs_to :media, :polymorphic => true
end
