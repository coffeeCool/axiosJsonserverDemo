import deleteUser from '../Services/deleteUser.coffee'
import getUsers from './getUsers.coffee'

export default deleteUserDemo = ->
  getUsers()

  .then (data) ->
    if data.length > 0
      i = data.length
      while i > 0
        i--
        deleteUser(data[i])
        .then (data) ->
          console.log '删除user成功:::'
          , data
  
  .catch (error) ->
    console.log error