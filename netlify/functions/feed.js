const handler = async () => { 
  return { 
    statusCode: 200, 
    headers: { "content-type": "application/json" }, 
    body: JSON.stringify({ 
      v: 1, 
      items: [ 
        { title: "?�스???�스 1", url: "#" }, 
        { title: "?�스???�스 2", url: "#" } 
      ] 
    }) 
  } 
} 
module.exports = { handler } 
