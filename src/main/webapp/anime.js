const drop=document.getElementById("out");
	const bun=document.getElementById("bttn");
	const close=document.getElementById("close");
	bun.addEventListener('click',()=>{
		drop.classList.add("drop");
	});
	
	
	
	close.addEventListener('click',()=>{
		drop.classList.remove("drop");
	})
	
	
	