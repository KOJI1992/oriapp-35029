class Review < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'とてもお勧めできる' },
    { id: 2, name: 'お勧めできる' },
    { id: 3, name: 'どちらでもない' },
    { id: 4, name: 'あまりお勧めできない' },
    { id: 5, name: 'お勧めできない' },
  ]

  include ActiveHash::Associations
  has_many :games

end