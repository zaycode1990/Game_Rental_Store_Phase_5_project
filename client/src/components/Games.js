import React, {useContext} from 'react'
import {useNavigate} from 'react-router-dom'
import {
  MDBCard,
  MDBCardBody,
  MDBCardTitle,
  MDBCardText,
  MDBCardImage,
  MDBBtn,
  MDBCardLink
} from 'mdb-react-ui-kit';
import {UserContext} from '../UserContext'
function Games({games, handleClick, handleDelete, grabGameIdNavToForm, setCurrentGame}) {

const nav = useNavigate()
  
const{user} = useContext(UserContext)
  
const gamesImage = games.map( game => {
  console.log(game.img)
  return (
  <div >
   <MDBCard key={game.id}>
      <MDBCardImage onClick={()=>{
        setCurrentGame({...game})
        nav(`/games/${game.id}`)
        }} src={game.img} position='top' alt='video game' width={400} height={400}/>
      <MDBCardBody>
        <MDBCardTitle>{game.title}</MDBCardTitle>
        <MDBCardText>
         {game.platform} | {game.publisher}
        </MDBCardText>
        {game.game_reviews.map(review =>{
          return (<div>
            <h1>{review.user.username}</h1>
            <MDBCardText>{review.title}</MDBCardText>
            <MDBCardText>{review.desc}</MDBCardText>
            <MDBCardLink href='#'>Another link</MDBCardLink>
          </div>)
        })}
       {user.admin ? <>
      
       <MDBBtn onClick={()=> {handleDelete(game.id) ; console.log("clicked delete")}} className='mx-2' color='danger'> Delete Game</MDBBtn> 
       <MDBBtn onClick={()=> {grabGameIdNavToForm(game.id)}} className='mx-2' color='success'> Update Game</MDBBtn> 
  
       </> 

        : 
        <MDBBtn onClick={user.id === false ? null : () => handleClick(game)}>Add to cart</MDBBtn> } 
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