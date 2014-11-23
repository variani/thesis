## Thesis site

The site is powered by [Github Pages](http://pages.github.com).

View the site [here](http://variani.github.io/thesis).


## Notes

### Testing site locally

On the topic [Testing your site locally](http://kbroman.github.io/simple_site/pages/local_test.html)

* Follow the [instructions](http://askubuntu.com/a/91780) to install ruby 1.9.2.

## Web page development

### Toggling button

* http://stackoverflow.com/a/11968675
* http://stackoverflow.com/a/25451085
  * demo: http://jsfiddle.net/maybolles/opbyvbv4/2/

JS code:
  
```
$('#more').click(function () {
if($('button span').hasClass('glyphicon-chevron-down'))
{
    $('#more').html('<span class="glyphicon glyphicon-chevron-up"></span> Less Info'); 
}
else
{
    $('#more').html('<span class="glyphicon glyphicon-chevron-down"></span> More Info'); 
}
}); 
```
  
