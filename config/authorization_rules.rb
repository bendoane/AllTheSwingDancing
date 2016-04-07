authorization do

  role :guest do
    has_permission_on :events, :to => [:index, :show, :attendance_status_check]
  end

  role :admin do
    includes :guest
    has_permission_on :events, :to => [:new, :create, :edit, :update, :attendance_status_check, :destroy]
  end

  role :user do
    includes :guest
    has_permission_on :events, :to => [:new, :create, :edit, :update, :destroy] do
      if_attribute :user => is {user}
    end
  end
end
