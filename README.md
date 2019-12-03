# Comment for Framer.js

Framer.js module for making comments in your prototypes

![Comment](https://s3.amazonaws.com/f.cl.ly/items/2Y3t3X1w3S2d3X3W270B/commentmodule.gif)

## Installation

1. Download the Comment.coffee file and drop it inside a Framer Studio project.

More info about how to install modules in Framer: [FramerJS Docs - Modules](http://framerjs.com/docs/#modules)


## Examples

### Basic usage

	new Comment
		text: "not decided on this animation"
		superLayer: featuredScroll.content
		x: 20
		y: 20

	new Comment
		text: "this image is just a placeholder"
		midX: image.x
		midY: image.y

	new Comment
		text: "this feature is not yet implemented in the prototype"
		midX: page.screenFrame.x
		midY: page.screenFrame.y
