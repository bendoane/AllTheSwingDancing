authorization do
  role :admin do
    has_permission_on :events, :to => [:index, :new, :create, :edit, :show, :update, :attendance_status_check, :destroy]
  end

  role :guest do
    has_permission_on :events, :to => [:index]
  end
end
