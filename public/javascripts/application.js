// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


   // When the page is ready
   $(document).ready(function(){
     $(".article .thebody").hide();
     $("#container .article ul")
       .prepend("<li class='readbody'><a href='' title='Read the article'>Read Body</a></li>");
   });


