
// When the user scrolls down 50px from the top of the document, resize the header's font size
window.onscroll = function () { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        document.getElementById("header1").style.fontSize = "15px";
    } else {
        document.getElementById("header1").style.fontSize = "1rem";
    }
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        document.getElementById("navbar1").style.background = "#525252";
    } else {
        document.getElementById("navbar1").style.background = "transparent";
    }
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        document.getElementById("logo-image").style.width = "80px";
    } else {
        document.getElementById("logo-image").style.width = "175px";
    }

}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

