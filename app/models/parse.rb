class Parse < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    fname :string
    timestamps
  end
  attr_accessible :fname

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
