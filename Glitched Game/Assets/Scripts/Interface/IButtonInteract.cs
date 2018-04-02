using System;

public interface IButtonInteract  
{
	event Action OnInteract;
	void OnClick();
}
