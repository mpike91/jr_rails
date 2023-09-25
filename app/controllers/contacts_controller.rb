class ContactsController < InheritedResources::Base

  def index
    sort_by = params[:sort_by]

    if sort_by == 'name'
      @contacts = Contact.order(:name)
    elsif sort_by == 'email'
      @contacts = Contact.order(:email)
    elsif sort_by == 'birthday'
      @contacts = Contact.order(:birthday)
    else
      @contacts = Contact.all
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :birthday)
  end

end