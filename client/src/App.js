
import React, { useEffect, useState } from 'react';
import './App.css';
import NavBar from './components/NavBar';
import Login from './components/Login';
import Signup from './components/Signup';
import Home from './components/Home';
import Games from './components/Games';
import Cart from './components/Cart';
import ModifyStore from './components/ModifyStore';
import StoreLedger from './components/StoreLedger';
import {Route, Routes } from 'react-router-dom';
// import { useState, useEffect } from "react";

function App() {
// useSelector hook to get state and use useDispatch


  const [games, setGames] = useState([])
  const [gamesInCart, setGamesInCart] = useState([])

useEffect(() => {
  fetch('/games')
  .then(res => res.json())
  .then(storeGames => setGames(storeGames))
},[])

console.log(games)

  return(

    <>
  <NavBar gamesInCart={gamesInCart}/>
      <Routes>
        <Route path="/"  element={<Home/>} />
        <Route path="/login" index element={<Login/>}/>
        <Route path="/signup" element={<Signup/>} />
        <Route path="/games" element={<Games games={games}/>}  />
        <Route path="/cart" element={<Cart/>}  />
        <Route path="/modifystore" element={<ModifyStore/>}  />
        <Route path="/storeledger" element={<StoreLedger/>}  />
      </Routes>
  </>
    )
}

export default App;