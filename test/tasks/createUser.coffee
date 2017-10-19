import createUser from '../Services/createUser.coffee'
import getUser from '../Services/getUsers.coffee'

export default createUserDemo = ->
  createUser()

  .then (data) ->
    data

  .catch (error) ->
    console.log error


