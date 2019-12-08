/* Pojavljivanje teksta u Author */
$(document).ready(function(){
  $('#toggleButton').click(function(){
    $('#sakrivenP').toggle('slow', function(){
      alert('Hvala na interesovanju!')
    });
    
    if($('#sakrivenP').is(':visible')) {
      $(this).val('Prikaži manje');
    } else {
      $(this).val('Prikaži više');
    }
  });
});

/* Slideshow u Author */

$(document).ready(function(){
  rotatePics(1);
});

function rotatePics(currentPhoto) {
  var numberOfPhotos = $('#photos img').length;
  currentPhoto = currentPhoto % numberOfPhotos;
	
  $('#photos img').eq(currentPhoto).fadeOut(function() {
		
    $('#photos img').each(function(i) {
      $(this).css(
        'zIndex', ((numberOfPhotos - i) + currentPhoto) % numberOfPhotos
      );
    });
    $(this).show();
    setTimeout(function() {rotatePics(++currentPhoto);}, 4000);
  });
}

/* Slideshow u photos */

$(document).ready(function(){
  rotatePics(1);
});

function rotatePics(currentPhoto) {
  var numberOfPhotos = $('#photos1 img').length;
  currentPhoto = currentPhoto % numberOfPhotos;
	
  $('#photos1 img').eq(currentPhoto).fadeOut(function() {
		
    $('#photos1 img').each(function(i) {
      $(this).css(
        'zIndex', ((numberOfPhotos - i) + currentPhoto) % numberOfPhotos
      );
    });
    $(this).show();
    setTimeout(function() {rotatePics(++currentPhoto);}, 4000);
  });
}

/* contact */

	function provera(){
		
		var greske = [];
		var mail = document.getElementById('email').value;
		reg_mail = /^[a-zA-Z0-9.]+[@]+[a-zA-Z0-9]+(\.)[a-z]{2,4}$/;
		if (mail.match(reg_mail)){
			document.getElementById('gemail').innerHTML = "";
		}
		else{
			greske.push("Incorrect email format!");
			document.getElementById('gemail').innerHTML = "Email nije ispravan!";
		};
		var reg_ime = /^[A-Z](\w){2,15}$/;
		var imev = document.getElementById('ime').value;
		if (imev.match(reg_ime)){
			document.getElementById('gname').innerHTML = '';
		} 
		else {greske.push("Incorrect name format!");
			document.getElementById('gname').innerHTML = "Unesite vaše ime. pr. Miloš.";
		};
		
		var telefonv = document.getElementById('telefon').value;
		var reg_telefon = /^(\d){1,3}-(\d){2}-(\d){2}-(\d){3}/;
		if (telefonv.match(reg_telefon)){
			document.getElementById('gtelefon').innerHTML = '';
		}
		else {greske.push("Neispravan unos!");
			document.getElementById('gtelefon').innerHTML = 'Format nije ispravan. Format unosa: (0x)x-xx-xx-xxx.';
			document.getElementById('gtelefon').style.color = 'red';
			};
        
        var kolicina = document.getElementById('kolicina1').value;
		var reg_kolicina = /^[0-9]{1,15}$/;
		if (kolicina.match(reg_kolicina)){
			document.getElementById('gkolicina').innerHTML = '';
		}
		else {greske.push("Neispravan unos!");
			document.getElementById('gkolicina').innerHTML = 'Unos nije ispravan.';
			document.getElementById('gkolicina').style.color = 'red';
			};
        
        var adresav = document.getElementById('adresa1').value;
		var reg_adresa = /^.*$/;
		if (adresav.match(reg_adresa)){
			document.getElementById('gadresa').innerHTML = '';
		}
		else {greske.push("Neispravan unos!");
			document.getElementById('gadresa').innerHTML = 'Adresa nije ispravna.';
			document.getElementById('gadresa').style.color = 'red';
			};
		
		
		var help = document.getElementById('help').value;
		if (help.trim() == 'Please, be clear and specific about your problem.' || help.trim()=='')
			{
				greske.push("Help is not correct!");
				document.getElementById('help').style.color = 'red';
				document.getElementById('help').innerHTML = 'Niste uneli tekst poruke.';
			};
		
		
		if (greske.length!=0)
			{
			alert('Neke informacije nisu ispravne, osvežite stranicu i pokušajte opet.');
			return false;
			}
		else {
			return true;
			};
	};
	
	/* kolacic */
function f3(){
		if (document.cookie == ''){}
		else {
			var niz = document.cookie.split(';');
			for (var i=0;i<niz.length;i++){
			var imekolaca = niz[i].split(';')[0].split('=')[0];
			if (imekolaca=="Red_Eye"){
				var sadrzajk = niz[i].split(';')[0].split('=')[1];
				var imke = sadrzajk.split('&')[0];
				var mailk = sadrzajk.split('&')[1];
				var telefonk = sadrzajk.split('&')[2];
				document.getElementById('ime').value = imke;
				document.getElementById('email').value = mailk;
				document.getElementById('telefon').value = telefonk;
				};
			};
		};
};