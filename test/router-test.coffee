chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-router', ->
	beforeEach ->
		@robot =
			respond: sinon.spy()
			hear: sinon.spy()

		require('../src/router')(@robot)

	it 'responds to "mitch me"', ->
		expect(@robot.respond).to.have.been.calledWith sinon.match( (val) ->
			val.test /mitch me/
		)
