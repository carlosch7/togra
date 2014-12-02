class Locate < ActiveRecord::Base
   has_many :personas
   has_one :otra
   attr_accessible :departamento, :municipio, :gobernador, :alcalde, :fecha_inicio
   validates :departamento, presence: {message:"campo obligatorio"}
   validates :municipio, presence: {message:"campo obligatorio"}
   validates :gobernador, presence: {message:"campo obligatorio"}
   validates :alcalde, presence: {message:"campo obligatorio"}
end
