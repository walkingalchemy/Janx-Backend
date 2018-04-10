<p align="center"> <img src="https://png.icons8.com/dusk/64/000000/collaboration.png"> </p>

# Janx
> A simple web enabled chat app

Janx is a demo using WebSockets to allow real time simultaneous messaging between users.  This is the repository for the Ruby on Rails backend that serves the HTTP and WS APIs.  The frontend client repository resides at: [Janx-Frontend](https://github.com/walkingalchemy/Janx-Frontend)

# Demo
<a href="https://www.youtube.com/watch?v=6lECuoTIYco" target="_blank"><img src="http://img.youtube.com/vi/6lECuoTIYco/0.jpg" 
alt="Janx Thumbnail" width="240" height="180" border="10" /></a>

## Installing / Getting started

This project uses [Rails 5.1.4](http://weblog.rubyonrails.org/2017/8/24/Rails-5-1-4-rc1-and-5-0-6-rc1-released/) and its WebSockets library [ActionCable](http://guides.rubyonrails.org/action_cable_overview.html).  It also uses the [Postgres](https://www.postgresql.org/) database. Go check them out if you don't have them locally installed. 

Fork and/or clone the repository down then from within the top level directory run:

```shell
rails db:create
rails db:migrate
```
to get the server database spun up locally.
Then
```shell
rails s
```
to get it serving to your local host.

The frontend client is set by default to point to a backend running on localhost:3000 which is the Rails server default if nothing else is running.

If you need to run the Rails server on another port you can instead use

```shell
  rails s -p <your port>
```
and then change the API_ROOT and API_WS_ROOT to reflect that in /src/constants of the frontend client.

You can also optionally use [ngrok](https://ngrok.com/) to create a URL to your local host and allow multiple clients to test functionality.  Follow the simple [ngrok setup](https://ngrok.com/docs/2) to configure
Unfortunately ngrok does not support WebSockets fully so each computer accessing the URL will have to have the frontend client installed locally.

In either case, from there you should install the [Janx-Frontend](https://github.com/walkingalchemy/Janx-Frontend) repository to see the full application from your browser.

## Api V1 Reference

```
api_v1_chat_sessions GET    /api/v1/chat_sessions(.:format)     api/v1/chat_sessions#index
                     POST   /api/v1/chat_sessions(.:format)     api/v1/chat_sessions#create
 api_v1_chat_session GET    /api/v1/chat_sessions/:id(.:format) api/v1/chat_sessions#show
                     DELETE /api/v1/chat_sessions/:id(.:format) api/v1/chat_sessions#destroy
        api_v1_users GET    /api/v1/users(.:format)             api/v1/users#index
                     POST   /api/v1/users(.:format)             api/v1/users#create
  api_v1_transcripts POST   /api/v1/transcripts(.:format)       api/v1/transcripts#create
```

## Licensing
[MIT](https://oss.ninja/mit?organization=Sebastian%20Royer) 
Copyright 2018 [Sebastian Royer](https://github.com/walkingalchemy) and [Kelly Sample](https://github.com/kstamps)


## Thanks to:
<a href="https://icons8.com">Icon pack by Icons8</a>
