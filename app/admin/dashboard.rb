ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    h1 class: 'title' do
      'Réservations pour les distributions'
    end

    # render bookings calendar
    render partial: 'calendar', locals: { booking: @bookings }

  end # content
end
