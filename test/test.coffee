wassat = require "../"
require( "chai" ).should()

str = "abc"
num = 123
obj = key: "value"
arr = ["a", 1]
date = new Date()
regexp = new RegExp()
args = do ->
  arguments

describe "main function", ->
  it "works for strings", ->
    wassat( str ).should.equal "string"

  it "works for numbers", ->
    wassat( num ).should.equal "number"

  it "works for plain objects", ->
    wassat( obj ).should.equal "object"

  it "works for arrays", ->
    wassat( arr ).should.equal "array"

  it "works for dates", ->
    wassat( date ).should.equal "date"

  it "works for regexes", ->
    wassat( regexp ).should.equal "regexp"

  it "works for arguments", ->
    wassat( args ).should.equal "arguments"

describe "'is' methods", ->
