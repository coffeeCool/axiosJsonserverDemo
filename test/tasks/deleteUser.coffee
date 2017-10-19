import deleteUser from '../Services/deleteUser.coffee'

export default deleteUserDemo = ->
  deleteUser()

  .then (data) ->
    console.log '删除user成功:::'
    , data

  .catch (error) ->
    console.log error