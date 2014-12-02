class Grupo < ActiveRecord::Base
	has_many :personas
	has_one :otra
	belongs_to :locate
	attr_accessible :famil, :dir, :tel, :tipcasa, :estrato, :serv, :tipserv, :habit, :picasa, :murcasa, :basura, :eqcoc, :eqsal, :eqhabi, :eqcom, :locate_id
	validates :famil, presence: {message:"campo obligatorio"}
	validates :dir, presence: {message:"campo obligatorio"}
	validates :tel, presence: {message:"campo obligatorio"}
	validates :tipcasa, presence: {message:"campo obligatorio"}
	validates :estrato, presence: {message:"campo obligatorio"}
	validates :tipserv, presence: {message:"campo obligatorio"}
	validates :habit, presence: {message:"campo obligatorio"}
	validates :picasa, presence: {message:"campo obligatorio"}
	validates :murcasa, presence: {message:"campo obligatorio"}
	validates :basura, presence: {message:"campo obligatorio"}
	validates :eqcoc, presence: {message:"campo obligatorio"}
	validates :eqsal, presence: {message:"campo obligatorio"}
	validates :eqhabi, presence: {message:"campo obligatorio"}
	validates :eqcom, presence: {message:"campo obligatorio"}
end
