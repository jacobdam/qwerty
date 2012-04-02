class QwertyAdmin::MenusController < QwertyAdmin::BaseController
  actions :all, :except => [ :show ]
  
  # def create
  #   create! { default_redirect }
  # end
  # 
  # def update
  #   update! { default_redirect }
  # end

  private

  def default_redirect
    qwerty_admin_menus_path
  end
end
