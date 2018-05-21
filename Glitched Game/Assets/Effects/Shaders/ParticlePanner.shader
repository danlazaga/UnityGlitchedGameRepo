Shader "Custom/ParticlePanner" {
    Properties {
        _Tint ("Tint", Color) = (0.07843138,0.3921569,0.7843137,1)
        _MainTex ("Base (RGBA)", 2D) = "white" {}
        _TintStrength ("TintStrength ", Range(0, 5)) = 1
		_LeftRight ("LeftRight ", Range(-5, 5)) = 1
		_UpDown ("UpDown ", Range(-5, 5)) = 1
		_Clip ("Clip ", Range(0, 1)) = 1

    }
    SubShader {
        Tags 
        { 
                "RenderType"="TransparentCutout"
				"Queue"="AlphaTest"
                "IgnoreProjectore" = "True"
                //"RenderType"="Opaque" 
        }
        Blend SrcAlpha One
        Lighting Off
        ColorMask RGB
        Cull Off
        ZWrite Off
        Pass
        {
        
        
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #pragma target 2.0
        

        #include "UnityCG.cginc"
               
        struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                fixed4 color : COLOR;   
                 };
                //float4 color : COLOR;
                //UNITY_VERTEX_INPUT_INSTANCE_ID
       

        struct VertexOutput {
            float2 uv0 : TEXCOORD0;
            float4 pos: SV_POSITION;
            fixed4 color : COLOR;
           
           // float4 color0 : COLOR;
        };

        
     
        VertexOutput vert (VertexInput v)
        {
            VertexOutput o; 
            o.pos = UnityObjectToClipPos(v.vertex);
            o.color = v.color;
            o.uv0 = v.texcoord0;
            
            return o;

            
        }

        sampler2D _MainTex;
		float4 _MainTex_ST;
        fixed4 _Tint;
        fixed _TintStrength;
		float _LeftRight;
		float _UpDown;
		float _Clip;

        float4 frag(VertexOutput i) : SV_Target
        {
			float4 timeContainer = _Time;
			
			//float4 _MainTex_Var = tex2D(_MainTex, TRANSFORM_TEX(panner, _MainTex));
			//clip(_MainTex_Var.a - _Clip);
            //float4 col = (tex2D(_MainTex, i.uv0) * _Tint)*_TintStrength;
            float2 panner =(i.uv0+timeContainer.g*float2(_LeftRight, _UpDown));
            float4 _MainTex_Var = tex2D(_MainTex, TRANSFORM_TEX(panner, _MainTex));
			float4 col = i.color*_MainTex_Var*_TintStrength*_Tint;
            
            
			//float colorAlpha = i
			          

            //float3 color0 = (col.rgb*_Tint*_TintStrength);
            //float3 finalColor = color0;

            return col;
        }
        
        //void surf (Input IN, inout SurfaceOutput o) {            o.Emission = _Illumi.rgb;}
    
        ENDCG
        }
    }
    FallBack "Unlit"
}