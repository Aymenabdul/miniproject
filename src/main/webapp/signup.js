/**
 *SignUp Form Validation. 
 **/
 
 window.addEventListener('load', function() {
   

 
 const form=document.getElementById("form");
const name=document.getElementById("name");
const email=document.getElementById("email");
const number=document.getElementById("number");
const password=document.getElementById("password");
const cpassword=document.getElementById("cpassword");




form.addEventListener('submit',e=>{
	checkInput(e); 
})
function checkInput(e){
	const nameval=name.value.trim();
	const emailval=email.value.trim();
	const numberval=number.value.trim();
	const passwordval=password.value.trim();
	const cpasswordval=cpassword.value.trim();
	if(nameval===''){
		setError(name,"Don't Leave The Field Empty",e);
	}
	else{
		setSuccess(name);
	}
	if(emailval==''){
		setError(email,"Don't Leave The Field Empty",e);
	}
	else{
		setSuccess(email);
	}
	if(numberval==''){
		setError(number,"Don't Leave The Field Empty",e);
	}
	else{
		setSuccess(number)
	}
	if(passwordval==''){
		setError(password,"Don't Leave The Field Empty",e);
	}
	else{
		setSuccess(password)
	}
	if(cpasswordval==''){
		setError(cpassword,"Don't Leave The Field Empty",e);
	}
	else if(cpasswordval!=passwordval){
		setError(cpassword,"Please Enter The Password Correctly",e)
	}
	else{
		setSuccess(cpassword)
	}


}
function setError(input,message,e){
	
const formcontrol=input.parentElement;
const small=formcontrol.querySelector('small');
formcontrol.className='form-control error';
small.innerText = message;
e.preventDefault();
}
function setSuccess(input){
	const formcontrol=input.parentElement;
	formcontrol.className='form-control success';
	 
	}
	});
	