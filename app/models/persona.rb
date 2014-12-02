class Persona < ActiveRecord::Base
        belongs_to :grupo
	belongs_to :otra
	belongs_to :locate
	        attr_accessible :nombre, :edad, :sexo, :cedula, :lugfam, :nivestu, :titul, :servsalud, :cajcomp, :pension, :etnia, :actiecom, :gruporel, :cualgrup, :sectortrab, :locate_id, :grupo_id, :otra_id
	
	validates :nombre,uniqueness:{message:"No puede estar Repetido"}, presence: {message:"campo obligatorio"}
	validates :edad, presence: {message:"campo obligatorio"}
	validates :cedula,uniqueness:{message:"No puede estar Repetido"}, presence: {message:"campo obligatorio"}
	validates :lugfam, presence: {message:"campo obligatorio"}
	validates :sexo, presence: {message:"campo obligatorio"}
	validates :nivestu, presence: {message:"campo obligatorio"}
	validates :titul, presence: {message:"campo obligatorio"}
	validates :servsalud, presence: {message:"campo obligatorio"}
	validates :cajcomp, presence: {message:"campo obligatorio"}
	validates :pension, presence: {message:"campo obligatorio"}
	validates :etnia, presence: {message:"campo obligatorio"}
	validates :actiecom, presence: {message:"campo obligatorio"}
	
	validates :cualgrup, presence: {message:"campo obligatorio"}
	validates :sectortrab, presence: {message:"campo obligatorio"}
	validates :grupo_id, presence: {message:"campo obligatorio"}
	validates :otra_id, presence: {message:"campo obligatorio"}
end
