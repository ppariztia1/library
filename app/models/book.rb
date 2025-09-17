class Book < ApplicationRecord
    belongs_to :author

    validates :title, presence: true, uniqueness: true
    # Ponemos que se valide para la integridad de los datos:
    # para que el libro sea valido el libro debe tener titulo
    # y que no haya otro libro con el mismo titulo
end