import React, {useContext} from 'react'
import {
  MDBCard,
  MDBCardBody,
  MDBCardTitle,
  MDBCardText,
  MDBCardImage,
  MDBBtn
} from 'mdb-react-ui-kit';
import {UserContext} from '../UserContext'
function Games({games, handleClick, handleDelete}) {

const{user} = useContext(UserContext)
  
const gamesImage = games.map( game => {
  console.log(game.img)
  return (
  <div>
   <MDBCard key={game.id}>
      <MDBCardImage src={game.img} position='top' alt='video game' width={400} height={400}/>
      <MDBCardBody>
        <MDBCardTitle>{game.title}</MDBCardTitle>
        <MDBCardText>
         {game.platform} | {game.publisher}
        </MDBCardText>
       {user.admin ?  <MDBBtn onClick={()=> handleDelete(game.id)} className='mx-2' color='danger'> Delete Game</MDBBtn> : <MDBBtn onClick={user.id === false ? null : () => handleClick(game)}>Add to cart</MDBBtn> } 
      </MDBCardBody>
    </MDBCard>
    </div>
  )
}
  );
  
  


  return (
   <div className='flexgames'>
    {gamesImage}
    </div>
  )
}

export default Games