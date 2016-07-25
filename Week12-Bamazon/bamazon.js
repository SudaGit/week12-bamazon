bamazonsql = require("mysql");
bamazonprompt = require("prompt");
 var items_a = [""];

var connection = bamazonsql.createConnection({
 host: "localhost",
 port: 3306,
 user: "root",
 password: "nodeAPP001",
 database: "Bamazon"
});
var user = "";

bamazonprompt.start();


bamazonprompt.get([{name : 'usertype', required: true, description : ' enter Buyer or Manager or Executive', conform: function(usertype){ if (usertype == 'Buyer'|| usertype == 'Manager' || usertype == 'Executive') {return true;} else {return false;}}}], function (err, result) {
    // 
    // Log the results. 
    // 
    console.log('Command-line input received:');
    console.log('  username: ' + result.usertype);
   user = result.usertype;
   switch (user)
   {
   	case 'Buyer':
   	Buyer();
   	//Buy();
   	break;
   	case 'Manager':
   	Report();
   	break;
   	case 'Executive':
   	Report();
   	break;
   }
  
  });



 

function Buyer() {
// get list of items for sale
connection.query({sql: 'SELECT ItemId, ItemName, DEpartmentName, Price, StockQuantity FROM Products'}, function (error, rows) {
  if (error && error.code === 'PROTOCOL_SEQUENCE_TIMEOUT') {
    throw new Error('too long to count table rows!');
  }
 
  if (error) {
    throw error;
  }
  var Item = "";
  var descr = "";
  var len = 0;
 
  console.log( "                     Welcome To Bamazon\n");
  console.log( " shop our deals\n");
  console.log("          " + "Item Code           " +     "Description          "  +    "   Price\n" );

  for (var i = 0; i<rows.length; i++)
  {
  	descr = rows[i].ItemName ;
    len = 20 - rows[i].ItemName.length;
    for (var j = 0; j<= len ; j++){
    	descr += " ";
    }
  console.log("          " + rows[i].ItemId + "          " + descr + "        " + rows[i].Price);
  items_a[i] = rows[i].ItemId;
}
 //console.log(items_a);

bamazonprompt.get([{name: 'itemx', type: 'string', required: true, description: 'Enter Item Code',  conform: function(itemx){ for(var j=0;j< items_a.length;j++) {if ( itemx.toUpperCase() === items_a[j]){var found= "T";}}; if(found == "T"){return true; } else{ return false;}} }
	               ,{name: 'noitem', type: 'number', required: true, description: ' How many ?'}],  function(er1, res){
	console.log("Processing " + res.noitem + " items for " + res.itemx);

connection.query('update Products set StockQuantity = StockQuantity - ? Where ItemId = ? and (StockQuantity - ?) >= 0', [res.noitem, res.itemx, res.noitem],function(er2, res2) {
	if (!er2)
	{
		console.log("\n            your items will reach within next 10 day.\n             Thank you for shopping at Bamazon");
	}
  
});
connection.query('update Department d, Products p Set Sales = Sales + \(? * Price\) where ItemId = ? and d.deptid = p.departmentname ', [res.noitem, res.itemx], function(er3, res3){
  if (!er3)
  {
  	console.log(" your items have shipped. ")
  }
  else
  {
  	console.log(er3);
  }

  })
 	//console.log(res.itemx);
 	//console.log(items_a);
                 });




}); //connection end
//bamazonprompt.stop();
} // end buyer


function Report()
{
   console.log("\n                                  BAMAZON  INVENTORY REPORT                \n ");
   console.log(" Deptid     Description       Overheads     Sales   Item         Description       Price\n     ")
  connection.query( 'SELECT DEPTID, Description, Overheads, Sales, ItemID, ItemName, Price from department d, products p where d.deptid = p.departmentname Order By deptid', function(errep, rep){
  	if (!errep)
  	{
      //console.log(rep);

      for(i=0; i<rep.length; i++)
      { 
         console.log(rep[i].DEPTID + "   "+ rep[i].Description + "      " + rep[i].Overheads + "           " + rep[i].Sales + "       " + rep[i].ItemID + "    " + rep[i].ItemName + "    " + rep[i].Price );
      }
  	} 
  	else
  	{
  		 console.log(errep);
  	}
  	
  	});
}


