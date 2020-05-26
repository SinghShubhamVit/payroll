# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create(
  name: 'COMPLITECH SOLUTIONS PRIVATE LIMITED',
  primary_address: 'Parul Nagar Society',
  state: 'Gujarat',
  district: 'Ahmedabad',
  pin: '380061',
  cin: 'U72900GJ2007PTC051398'
)

Company.create(
  name: 'Rails Point',
  primary_address: 'Baner High Street',
  state: 'Maharashtra',
  district: 'Pune',
  pin: '411057',
  cin: 'P72900GJ2007PTC054326'
)
