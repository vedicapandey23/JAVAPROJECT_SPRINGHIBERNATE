/*window.onload=function()
{
	console.log("In window");
	var create=document.getElementById("createform");
	create.reset();
	}
*/
$(':input','createform')
.not(':button, :submit, :reset, :hidden')
.val('')
.prop('checked', false)
.prop('selected', false);