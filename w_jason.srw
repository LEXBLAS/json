$PBExportHeader$w_jason.srw
forward
global type w_jason from window
end type
type cb_1 from commandbutton within w_jason
end type
type dw_2 from datawindow within w_jason
end type
type dw_1 from datawindow within w_jason
end type
end forward

global type w_jason from window
integer width = 2587
integer height = 1848
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_2 dw_2
dw_1 dw_1
end type
global w_jason w_jason

on w_jason.create
this.cb_1=create cb_1
this.dw_2=create dw_2
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_2,&
this.dw_1}
end on

on w_jason.destroy
destroy(this.cb_1)
destroy(this.dw_2)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within w_jason
integer x = 475
integer y = 1504
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;dw_1.accepttext( )
dw_2.accepttext( )

messagebox("",uf_json(dw_1,dw_2))

end event

type dw_2 from datawindow within w_jason
integer x = 101
integer y = 564
integer width = 2409
integer height = 824
integer taborder = 20
string title = "none"
string dataobject = "dwext_detalle"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.insertrow(1)
this.insertrow(2)
this.insertrow(3)
this.insertrow(4)
end event

type dw_1 from datawindow within w_jason
integer x = 105
integer width = 2386
integer height = 524
integer taborder = 10
string title = "none"
string dataobject = "dwext_cabecera"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.insertrow( 1)
end event

