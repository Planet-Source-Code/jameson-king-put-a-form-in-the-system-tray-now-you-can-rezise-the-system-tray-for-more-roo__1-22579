VERSION 5.00
Begin VB.Form WFU_Tray 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "CPG-WFU"
   ClientHeight    =   735
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1710
   LinkTopic       =   "Form1"
   ScaleHeight     =   735
   ScaleWidth      =   1710
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Scroll 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   930
      Top             =   270
   End
   Begin VB.Timer ChkEngine 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   1170
      Top             =   180
   End
   Begin VB.Label vText 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   210
      Width           =   915
   End
End
Attribute VB_Name = "WFU_Tray"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public ScrollBuffer As String

Private Sub ChkEngine_Timer()
Call CheckEngine
End Sub

Private Sub Command1_Click()
For X = 1 To 11
    ResizeTray 1
Next X
End Sub

Private Sub Form_Load()
ScrollBuffer = "Put Anyting In the Tray.  Then make the Tray Bigger!  "
ChkEngine.Enabled = True
End Sub

Private Sub Form_Paint()
    With vText
        .Width = Me.Width
        .Height = Me.Height
        .Top = 0
        .Left = 0
    End With
End Sub

Private Sub Form_Resize()
    With vText
        .Width = Me.Width
        .Height = Me.Height
        .Top = 0
        .Left = 0
    End With
End Sub

Private Sub Scroll_Timer()
strng$ = ScrollBuffer
DoEvents
    Buffer$ = Mid(strng, 1, 1)
    Buffer_2$ = Mid(strng, 2, Len(strng) - 1)
    ScrollBuffer = Buffer_2 & Buffer
    vText.Caption = ScrollBuffer
End Sub

