//Cependant, jamais cr�er ses propres exception... Galere pour reutilisation. Utiliser les coonues (ici numberformatexception)
// Ainsi ca �vite ici d'appeller super, et m�me de d�clarer la classe !!!
public class NbHabitsException extends Exception {

	public NbHabitsException(String pMessage)
	{
		super(pMessage);
	}
}
