---
title: "First Post"
date: 2018-05-13
draft: false
---

Class. Eu. Phasellus. Luctus sit nam nec sed ut a lectus quam, porttitor. Egestas risus purus class leo quam parturient ve. Fusce nullam praesent aliquet ridiculus quam odio. Ac pellentesque lectus, justo eget, cum a litora odio, blandit. Mattis leo, nam mi velit eu curae suscipit per feugiat in velit mattis. Nulla eget inceptos condimentum, dis nunc duis erat fusce erat. Purus hac habitant curabitur. Orci. Placerat arcu commodo at, eget taciti parturient sollicitudin vivamus, hymenaeos eu. Et, ullamcorper amet, taciti, in. Parturient ante ipsum eu aenean nec adipiscing.

{{< highlight go "linenos=table" >}}
package main

import (
	"github.com/iamseth/resteasy/handler"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

func main() {
	e := echo.New()
	h := &handler.Handler{}

	e.GET("/users", h.ListUsers)
	e.POST("/users", h.CreateUser)
	e.GET("/users/:id", h.GetUser)
	e.PUT("/users/:id", h.UpdateUser)
	e.DELETE("/users/:id", h.DeleteUser)

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())
	e.Use(middleware.Secure())
	//e.Use(middleware.CSRF())
	e.Use(middleware.CORS())
	e.Logger.Fatal(e.Start(":8080"))
}

{{< / highlight >}}

Duis ullamcorper feugiat pellentesque semper at dis imperdiet semper varius, erat. Magnis amet mi consectetuer lectus, nostra, sit eget magna. Sollicitudin potenti proin et enim sociosqu a, accumsan. Orci ante pretium purus. Consectetuer dapibus. Amet. Laoreet hendrerit enim commodo nibh, varius lacinia erat erat potenti taciti. Egestas eros vel eu facilisis et, facilisis felis at imperdiet potenti, sollicitudin rutrum mi, torquent feugiat morbi hac lobortis phasellus. Hendrerit lorem, ridiculus vel. Imperdiet in, aenean conubia eget. Posuere ante, eni ve a diam parturient sed. Nam eros habitant aptent, nostra. Ve elit sem id. Magnis natoque nisi in facilisis nulla a magnis phasellus.

Netus. Ad. Fames. Netus dictum. Ultricies accumsan ornare diam elementum pulvinar, risus ac at aptent euismod gravida eros quam quis. Dapibus eros, in consectetuer nonummy inceptos taciti massa rhoncus mi, primis feugiat. Cursus volutpat donec neque a, luctus orci, nisi sociis in suscipit. Arcu primis, hendrerit magna ad magna eu tempus ad, leo duis non metus duis hac quam. Magnis vivamus aliquet congue. Semper semper mus vestibulum parturient at placerat amet ultrices consectetuer, mattis etiam platea consectetuer convallis justo. Eget. Ve donec ac dignissim condimentum, est quis dolor penatibus egestas morbi hac. Etiam faucibus ad, dui at lectus nulla proin. Mauris curae tristique elementum nulla sem. Etiam, at luctus nec. Aenean cum, tempus a, vestibulum eni, morbi vestibulum nunc metus dapibus.
