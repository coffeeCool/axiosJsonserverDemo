import 'shelljs/make'
import dd from 'ddeyes'

import createUserDemo from './tasks/createUser.coffee'
import getUsersDemo from './tasks/getUsers.coffee'
import updateUserDemo from './tasks/updateUser.coffee'
import deleteUserDemo from './tasks/deleteUser.coffee'


target.all = ->
  dd 'start'

  target.createUserDemo()
  target.getUsersDemo()
  target.updateUserDemo()
  target.deleteUserDemo()


target.createUserDemo = ->
  createUserDemo()
  
target.getUsersDemo = ->
  getUsersDemo()

target.updateUserDemo = ->
  updateUserDemo()

target.deleteUserDemo = ->
  deleteUserDemo()