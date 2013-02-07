module.exports = ()->
	util = require('util')
	class Helper
		linkify: (source) ->
			source = source.toLowerCase()
			source = source.replace(/^\s*|\s*$/g, '')
			source = source.replace(/:+/g, '')
			source = source.replace(/\s+/g, '-')
			source.replace(/[?#&]+/g, '') 
			util.format("%s/%s", @.dateNow(), source)
			
		dateNow: ()->
			dateNow = new Date()
			mm = dateNow.getMonth() + 1
			if mm < 10
				mm = '0' + mm
			yy = dateNow.getFullYear()
			util.format('%s/%s',yy, mm)
			
	return new Helper()