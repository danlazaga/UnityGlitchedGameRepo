Shader "Custom/UnlitTriplanar"
{
    Properties
    {
        _MainTex1 ("Texture1", 2D) = "white" {}
        _Blend1   ("TextureBlend1", Float) = 1.0
        _TintColor1 ("Color1", Color) = (0.5,0.5,0.5,1)
        _TintStrength1 ("ColorStr1", Range(1,5)) = 1


		_MainTex2 ("Texture2", 2D) = "white" {}
        _Blend2   ("TextureBlend2", Float) = 1.0
        _TintColor2 ("Color2", Color) = (0.5,0.5,0.5,1)
        _TintStrength2 ("ColorStr2", Range(1,5)) = 1


		_MainTex3 ("Texture3", 2D) = "white" {}
        _Blend3   ("TextureBlend3", Float) = 1.0
        _TintColor3 ("Color3", Color) = (0.5,0.5,0.5,1)
        _TintStrength3 ("ColorStr3", Range(1,5)) = 1


        _Tiling ("Tiling", Float) = 1.0
        _OcclusionMap("Occlusion", 2D) = "white" {}
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct v2f
            {
                half3 objNormal : TEXCOORD0;
                float3 coords : TEXCOORD1;
                float2 uv : TEXCOORD2;
                float4 pos : SV_POSITION;
            };

            fixed _Tiling;

            v2f vert (float4 pos : POSITION, float3 normal : NORMAL, float2 uv : TEXCOORD0)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(pos);
                o.coords = pos.xyz * _Tiling;
                o.objNormal = normal;
                o.uv = uv;
                return o;
            }

            sampler2D _MainTex1;
			sampler2D _MainTex2;
			sampler2D _MainTex3;
            fixed _Blend1;
            fixed _Blend2;
            fixed _Blend3;

            fixed4 _TintColor1;
            fixed4 _TintColor2;
            fixed4 _TintColor3;

            fixed _TintStrength1;
            fixed _TintStrength2;
            fixed _TintStrength3;

            sampler2D _OcclusionMap;
            
            fixed4 frag (v2f i) : SV_Target
            {
                // use absolute value of normal as texture weights
                half3 blend = abs(i.objNormal);
                // make sure the weights sum up to 1 (divide by sum of x+y+z)
                blend /= dot(blend,1.0);
                // read the three texture projections, for x,y,z axes
                fixed4 cx = tex2D(_MainTex1, i.coords.yz*_Blend1);
                fixed4 cy = tex2D(_MainTex2, i.coords.xz*_Blend2);
                fixed4 cz = tex2D(_MainTex3, i.coords.xy*_Blend3);
                // blend the textures based on weights
                fixed4 c = (cx*_TintColor1*_TintStrength1) * blend.x + (cy*_TintColor2*_TintStrength2) * blend.y + (cz*_TintColor3*_TintStrength3) * blend.z;
                // modulate by regular occlusion map
               // c *= tex2D(_OcclusionMap, i.uv);
                return c;
            }
            ENDCG
        }
    }
}