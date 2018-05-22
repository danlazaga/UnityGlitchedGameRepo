using System;

public interface IGunHeatHandler 
{
	float MaxHeat { get; set; }
	event Action<bool> OnOverHeat;
	event Action<float> OnHeatChange;
}
