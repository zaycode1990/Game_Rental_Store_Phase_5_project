
import React, { useEffect, useState} from 'react';
import './App.css';
import NavBar from './components/NavBar';
import Login from './components/Login';
import Signup from './components/GameReview';
import Home from './components/Home';
import Games from './components/Games';
import Cart from './components/Cart';
import ModifyStore from './components/ModifyStore';
import StoreLedger from './components/StoreLedger';
import {Route, Routes } from 'react-router-dom';
import {UserContext} from './UserContext'
// import { useState, useEffect } from "react";

function App() {
// useSelector hook to get state and use useDispatch

  const [user, setUser] = useState({ id: false });
  const [games, setGames] = useState([])
  const [gamesInCart, setGamesInCart] = useState([])
  const [errors, setErrors] = useState([])
useEffect(() => {
  fetch('/games')
  .then(res => res.json())
  .then(storeGames => {setGames(storeGames)
  console.log(storeGames)
  }).catch(err => setErrors(err))
},[])
 
console.log(errors)
// useEffect(() => {
//   getUser()
// }, [])


// async function getUser() {
//   const resp = await fetch('/me')
//   const data = await resp.json()
//   if (resp.ok) {
//     setUser(data)
//   }
// }
// console.log(user)

// console.log(games)


const handleClick = (game) => {
  setGamesInCart([...gamesInCart, game])
}

const handleDelete = (id) => {
  const gamesFilter = games.filter(gameItem => gameItem.id !== id)
setGames(gamesFilter)

fetch(`games/${id}`,
{
method: "DELETE",
headers: {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}
}).catch((err) => setErrors(err))
}


  return(


    <>
  <UserContext.Provider value={{user, setUser}}>
  <NavBar gamesInCart={gamesInCart}/>
      <Routes>
        <Route path="/"  element={<Home/>} />
        <Route path="/login" index element={<Login errors={errors} setErrors={setErrors}/>}/>
        
        {user.admin ? <>
        <Route path="/games" element={<Games setErrors={setErrors} games={games} handleClick={handleClick} handleDelete={handleDelete}/>}  />
        <Route path="/cart" element={<Cart gamesInCart={gamesInCart}/>}  />
        <Route path="/modifystore" element={<ModifyStore/>}  />
        <Route path="/storeledger" element={<StoreLedger/>}  />
        </>
          :
          <>
          <Route path="/games" element={<Games games={games} handleClick={handleClick}/>}  />
          <Route path="/cart" element={<Cart gamesInCart={gamesInCart}/>}  />
          </>
}
      </Routes>
       </UserContext.Provider>
    
  </>
    )
}

export default App;

