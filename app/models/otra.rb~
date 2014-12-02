class Otra < ActiveRecord::Base
	has_many :personas
	belongs_to :grupo
        belongs_to :locate
        attr_accessible :fuenteingre, :cualfuen, :cuentab, :numcuent, :tarjetdc, :cuantarj, :prestam, :tipoprestamo,:grupo_id,:locate_id
	#validates :fuenteingre, presence: {message:"campo obligatorio"}
	validates :cualfuen, presence: {message:"campo obligatorio"}
	#validates :cuentab,uniqueness:{message:"No puede estar Repetido"}, presence: {message:"campo obligatorio"}
	validates :numcuent, presence: {message:"campo obligatorio"}
	#validates :tarjetdc, presence: {message:"campo obligatorio"}
	validates :cuantarj, presence: {message:"campo obligatorio"}
	#validates :prestam, presence: {message:"campo obligatorio"}
	validates :tipoprestamo, presence: {message:"campo obligatorio"}
	validates :grupo_id, presence: {message:"campo obligatorio"}
end
