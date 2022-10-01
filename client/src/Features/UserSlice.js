import {createSlice} from "@reduxjs/toolkit"

const initialState = {
user: {username: ""}, 
}

const userSlice = createSlice({
    name: "users",
    initialState,
    reducers: {
        loginUser: (state, action) => {
           state.user = action.payload
        }
    } 
})
console.log(userSlice);
export const {loginUser} = userSlice.actions
export default userSlice.reducer  
