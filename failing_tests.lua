local describe = require("least")

describe("least lets you organize your tests by suite",function(_ENV)
    describe("least supports sub-suites and sub-suites with sub-suites, and so on",function()
        it("has basic assertions",function()
            assert.falsey(true)
        end)
        
        it("supports truthy/falsey/nil checks",function()
            assert.falsey(true)
            assert(false)
            assert.truthy(nil)
        end)
        
        it.should.pass("when truthy is given a false value",function()
            assert.truthy(false)
        end)
        it.should("when truthy is given a nil value",function()
            assert.truthy(nil)
        end)
        it.should("when isNil is given a false value",function()
            assert.isNil(false)
        end)
        it.should("when isNil is given a true value",function()
            assert.isNil(true)
        end)
    end)
    
    suite("another suite",function()
        test("test 3",function()
            assert.falsey(true)
        end)
        
        test("test 4",function()
            assert.falsey(true)
        end)
    end)
    
    test("test 5",function()
        assert.falsey(true)
    end)
    
    test("test 6",function()
        assert.falsey(true)
    end)
end)