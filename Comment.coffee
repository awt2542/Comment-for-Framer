class module.exports extends Layer
	constructor: (options={}) ->
		options.name ?= "comment"
		options.backgroundColor ?= "#9567D7"
		options.width ?= 20
		options.height ?= 20
		options.borderRadius ?= "50%"
		options.clip = false
		options.shadowBlur = 4
		options.shadowY = 2
		options.shadowColor = "rgba(0,0,0,0.3)"
		options.borderColor = "white"
		options.borderWidth = 2
		super options
		@pixelAlign()
		
		textarea = new Layer
			name: "textarea"
			x: @width + 10
			y: 0
			backgroundColor: "#151517"
			shadowBlur: 5
			shadowY: 2
			shadowColor: "rgba(0,0,0,0.2)"
			borderRadius: 3
			visible: false
			superLayer: @
			html: options.text
		textarea.style =
			fontSize: "13px"
			padding: "10px"
			color: "white"
			fontFamily: "Roboto, 'Helvetica Neue', Helvetica, Arial, sans-serif"
			lineHeight: "1.2em"
		sizeAffectingStyles =
			fontSize: textarea.style["font-size"]
			fontWeight: textarea.style["font-weight"]
			padding: textarea.style["padding"]
			fontFamily: textarea.style["font-family"]
			lineHeight: textarea.style["line-height"]
		constraints = {width: 200} if options.text.length > 35
		textarea.frame = Utils.textSize options.text, sizeAffectingStyles, constraints
		@on Events.MouseOver, -> textarea.visible = true
		@on Events.MouseOut, -> textarea.visible = false