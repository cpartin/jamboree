class Rsvp < ActiveRecord::Base

  validates :name, presence: true
  validates :attending, presence: true

  def attending?
    attending == 'yay'
  end

  def name_message
    if attending?
      'WHO IS JAMMING?'
    else
      "WHO CAN'T JAM?"
    end
  end

  def comment_message
    'THOUGHTS, WELL WISHES TO SHARE WITH CPBG?'
  end
end
