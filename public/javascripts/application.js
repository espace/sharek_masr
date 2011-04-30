// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var current_uid=null;

var handleFriends = function(response) {
    var divInfo = document.getElementById("divInfo");

    var friends = response.data;

    divInfo.innerHTML += "<h1>My Friends</h1>";

    for (var i = 0; i < friends.length; i++) {
        divInfo.innerHTML += friends[i].name + "<br />";
        divInfo.innerHTML += "<img src=\"" + friends[i].picture + "\" /><br /><br />";
    }
}

var getFacebookFriends = function(){
  FB.api("/me/friends?fields=name,picture", handleFriends);
};

var fbAfterInit=function(){
  getFacebookFriends();
};
