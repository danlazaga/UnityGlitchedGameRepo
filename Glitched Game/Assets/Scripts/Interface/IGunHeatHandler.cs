using System;

public interface IGunHeatHandler 
{
	event Action<float> OnHeatChange;
}
