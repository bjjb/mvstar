{ assert, expect, should } = require("chai")

describe "Array", ->
  describe "#indexOf", ->
    it "should return -1 for missing values", ->
      assert.equal -1, [1,2,3].indexOf(0)
      assert.equal -1, [1,2,3].indexOf(5)
