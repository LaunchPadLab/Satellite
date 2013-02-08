# Satellite

## A simple embeddable contact form

Satellite is a contact form that can be embeded site via an iframe.

Just drop in an iframe wherever you want a contact form

    <iframe src="http://satellite.herokuapp.com/contact" class="satellite"></iframe>

Don't forget to style it. Some examples:

    iframe.satellite {
    	border: 0
    	height: 500px;
			width: 400px;
    }

    satellite-form input {
    	width: 200px
    }

    satellite-form textarea {
    	height: 80px
    }