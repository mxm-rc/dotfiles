require 'csv'
require_relative 'recipe'
require_relative 'controller'
require_relative 'cookbook'

cookbook = Cookbook.new("lib/recipes.csv")

p cookbook
