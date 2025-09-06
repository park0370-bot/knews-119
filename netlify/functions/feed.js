const handler = async () => { 
  return { 
    statusCode: 200, 
    headers: { "content-type": "application/json" }, 
    body: JSON.stringify({ 
      v: 1, 
      items: [ 
        { title: "?ŒìŠ¤???´ìŠ¤ 1", url: "#" }, 
        { title: "?ŒìŠ¤???´ìŠ¤ 2", url: "#" } 
      ] 
    }) 
  } 
} 
module.exports = { handler } 
