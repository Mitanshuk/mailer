ActiveAdmin.register User do

  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :user_type, :confirmed_at, :confirmation_token, :confirmation_sent_at, :unconfirmed_email

  permit_params :name, :is_active
end
