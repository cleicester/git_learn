Public Class Particle
    Inherits CodeGenerator

    Private mdblX As Double
    Private mdblY As Double
    Private mdblZ As Double

    Private mdblXVelocity As Double
    Private mdblYVelocity As Double
    Private mdblZVelocity As Double

    Private mdblMass As Double
    Private mlngCharge As Long

    Private mstrName As String

    Private mdblRadius As Double

    Public PublicDescription As String

    Public Sub New(ByVal Value As Double)
        mdblRadius = Value
        PublicDescription = "This is the value of the PublicDescription public field"
    End Sub

    Public Sub New()
        mdblRadius = 1.0
    End Sub

    Property X() As Double
        Get
            Return mdblX
        End Get
        Set(ByVal Value As Double)
            mdblX = Value
        End Set
    End Property

    Property Y() As Double
        Get
            Return mdblY
        End Get
        Set(ByVal Value As Double)
            mdblY = Value
        End Set
    End Property

    Property Z() As Double
        Get
            Return mdblZ
        End Get
        Set(ByVal Value As Double)
            mdblZ = Value
        End Set
    End Property

    Property XVelocity() As Double
        Get
            Return mdblXVelocity
        End Get
        Set(ByVal Value As Double)
            mdblXVelocity = Value
        End Set
    End Property

    Property YVelocity() As Double
        Get
            Return mdblYVelocity
        End Get
        Set(ByVal Value As Double)
            mdblYVelocity = Value
        End Set
    End Property

    Property ZVelocity() As Double
        Get
            Return mdblZVelocity
        End Get
        Set(ByVal Value As Double)
            mdblZVelocity = Value
        End Set
    End Property

    Property Mass() As Double
        Get
            Return mdblMass
        End Get
        Set(ByVal Value As Double)
            mdblMass = Value
        End Set
    End Property

    ReadOnly Property Diameter() As Double
        Get
            Return mdblRadius * 2.0
        End Get
    End Property

End Class
