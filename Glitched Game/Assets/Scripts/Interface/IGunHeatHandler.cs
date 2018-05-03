using System;

public interface IGunHeatHandler 
{
	float MaxHeat { get; set; }
	event Action<float> OnHeatChange;
}
