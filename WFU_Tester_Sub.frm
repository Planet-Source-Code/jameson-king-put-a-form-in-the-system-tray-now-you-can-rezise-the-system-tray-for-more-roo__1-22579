VERSION 5.00
Begin VB.Form WFU_Tester_Sub 
   BorderStyle     =   0  'None
   Caption         =   "WFU_TESTER_DUMMY_FORM"
   ClientHeight    =   810
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1425
   Icon            =   "WFU_Tester_Sub.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   810
   ScaleWidth      =   1425
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "WFU_Tester_Sub"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Terminate()
Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Me
End Sub
