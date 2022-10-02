import React from 'react'

function Games({games}) {
  
const gamesImage = games.map( game => 
  <img key={game.id} src={game.img} alt = "games" height={200} width={200}/>
  )
  


  return (
    <div>
     {gamesImage}
    </div>
  )
}

export default Games