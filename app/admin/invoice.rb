ActiveAdmin.register Invoice do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :customer_id, :amount, :description, :notes

 controller do
   def create(options={}, &block)
     super do |success, failure|
       block.call(success, failure) if block
       success.html {
         CustomerMailer.notify(resource).deliver
          redirect_to admin_invoices_url and return if resource.valid?
       }
       failure.html { render :edit }
     end
   end
 end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
