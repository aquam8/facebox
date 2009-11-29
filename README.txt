 === Facebox ===

Original Facebox plugin by:
  http://famspam.com/facebox/

Forked by Kimos and can now be found:
  http://github.com/kimos/facebox

A Facebook-style Ligthbox script for jQuery.

This fork combines the support for multiple images to be viewed as a gallery and for closing the modal window when clicking outside of the Facebox.

Requires at least jQuery 1.2


 === How to use ===

Include the Facebox javascript after the jQuery core library.
<script src="/javascripts/facebox.js" type="text/javascript"></script>

Include the stylesheet.
<link href="/stylesheets/facebox.css" rel="stylesheet" type="text/css" />

Copy over all the images from the images folder. Edit the .css file to match your directory structure if required.

Specify links to be shown in the Facebox by adding the rel="facebox" attribute.
<a href="path/to/image.jpg" rel="facebox"><img src="path/to/thumbnail.jpg" /></a>

Lightbox-ize the links on page load. 
<script type="text/javascript">
  $(document).ready(function($) {
    $('a[rel=facebox]').facebox();
  }); 
</script>


 === Options ===

Options can be passed into the Facebox call to customize behavior like so:
$('a[rel=facebox]').facebox({
  option: 'value',
  anotherOption: 'another value'
});

Supported options are:
      opacity       : Opacity amount
      overlay       : Overlay boolean
      loadingImage  : Path to override the default throbber/loading image
      closeImage    : Path to override the default close image
      nextImage     : Path to override the default next arrow image for the gallery
      previousImage : Path to override the default previous arrow image for the gallery
      imageTypes    : Array of strings which represent the file extensions to be recognized as images.
      faceboxHtml   : Block of HTML to draw as the Facebox overlay. (this should not be changed unless you know what elements are expected with what CSS attributes).
