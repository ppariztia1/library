class Author < ApplicationRecord
    has_many :books

    validates :first_name, presence: true
    validates :last_name, presence: true
    
    # Callbacks: antes de la validacion que haga esto, sino, que falle
    before_validation :strip_name
    before_validation :titleize_name


    def full_name
        "#{first_name} #{last_name}"
    end

    def strip_name
        self.first_name = first_name.strip
        self.last_name = last_name.strip
    end

    def titleize_name # Pone la primera letra en mayuscula
        self.first_name = first_name.titleize
        self.last_name = last_name.titleize
    end
end