
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

  const [users, setUsers] = useState([])

useEffect(() => {
  fetch('/users')
  .then(res => res.json())
  .then(storeUsers => setUsers(storeUsers))
},[])

console.log(users)

  return(

    <>
  <NavBar />
      <Routes>
        <Route path="/"  element={<Home/>} />
        <Route path="/login" index element={<Login/>}/>
        <Route path="/signup" element={<Signup/>} />
        <Route path="/games" element={<Games/>}  />
        <Route path="/cart" element={<Cart/>}  />
        <Route path="/modifystore" element={<ModifyStore/>}  />
        <Route path="/storeledger" element={<StoreLedger/>}  />
      </Routes>
  </>
    )
}

export default App;