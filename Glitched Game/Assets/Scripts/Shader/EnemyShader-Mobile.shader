// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-3121-OUT;n:type:ShaderForge.SFN_Color,id:8671,x:31749,y:32484,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:1481,x:31272,y:32675,ptovrint:False,ptlb:GlowToggle,ptin:_GlowToggle,varname:_GlowToggle,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-196-OUT,B-5863-OUT;n:type:ShaderForge.SFN_Vector1,id:196,x:30784,y:32621,varname:node_196,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5863,x:30784,y:32752,varname:node_5863,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:7258,x:31365,y:33555,ptovrint:False,ptlb:DamageColor,ptin:_DamageColor,varname:_DamageColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1985294,c3:0.1985294,c4:1;n:type:ShaderForge.SFN_Color,id:1777,x:31365,y:33729,ptovrint:False,ptlb:StunColor,ptin:_StunColor,varname:_StunColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.988641,c2:1,c3:0.1764706,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:8082,x:31571,y:33626,ptovrint:False,ptlb:Damage or Stun,ptin:_DamageorStun,varname:_DamageorStun,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7258-RGB,B-1777-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:7240,x:30780,y:33320,ptovrint:False,ptlb:DamageNoiseTex,ptin:_DamageNoiseTex,varname:_DamageNoiseTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:8898,x:30801,y:33050,varname:node_8898,prsc:0,spu:0.5,spv:1|UVIN-9799-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9799,x:30503,y:32896,varname:node_9799,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:4367,x:31418,y:33164,varname:node_483,prsc:0,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-8898-UVOUT,TEX-7240-TEX;n:type:ShaderForge.SFN_Slider,id:6324,x:31072,y:33405,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:_NoiseIntensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Multiply,id:5632,x:31983,y:33202,varname:node_5632,prsc:2|A-4367-R,B-6324-OUT,C-1481-OUT,D-8082-OUT;n:type:ShaderForge.SFN_Multiply,id:1654,x:32186,y:32665,varname:node_1654,prsc:2|A-2371-RGB,B-8671-RGB,C-6988-OUT;n:type:ShaderForge.SFN_Tex2d,id:2371,x:31753,y:32247,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aac1974d0be6af048831585a3f0eff2b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:6988,x:31502,y:32742,ptovrint:False,ptlb:MainTexIntensity,ptin:_MainTexIntensity,varname:_MainTexIntensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Add,id:3121,x:32290,y:33000,varname:node_3121,prsc:2|A-1654-OUT,B-5632-OUT;proporder:8671-1481-7258-1777-8082-7240-6324-2371-6988;pass:END;sub:END;*/

Shader "Shader Forge/EnemyShader-Mobile" {
    Properties {
        _Color_copy ("Color_copy", Color) = (0.07843138,0.3921569,0.7843137,1)
        [MaterialToggle] _GlowToggle ("GlowToggle", Float ) = 0
        _DamageColor ("DamageColor", Color) = (1,0.1985294,0.1985294,1)
        _StunColor ("StunColor", Color) = (0.988641,1,0.1764706,1)
        [MaterialToggle] _DamageorStun ("Damage or Stun", Float ) = 1
        _DamageNoiseTex ("DamageNoiseTex", 2D) = "white" {}
        _NoiseIntensity ("NoiseIntensity", Range(0, 5)) = 5
        _MainTex ("MainTex", 2D) = "white" {}
        _MainTexIntensity ("MainTexIntensity", Range(0, 5)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            // Name "FORWARD"
            // Tags {
            //     "LightMode"="ForwardBase"
            // }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            //#define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase_fullshadows
            //#pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform fixed4 _Color_copy;
            uniform fixed _GlowToggle;
            uniform fixed4 _DamageColor;
            uniform fixed4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DamageNoiseTex; 
            uniform fixed4 _DamageNoiseTex_ST;
            uniform fixed _NoiseIntensity;
            uniform sampler2D _MainTex; 
            uniform fixed4 _MainTex_ST;
            uniform fixed _MainTexIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {

////// Emissive:
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                fixed4 node_9554 = _Time;
                fixed2 node_8898 = (i.uv0+node_9554.g*fixed2(0.5,1));
                fixed4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_8898, _DamageNoiseTex));
                fixed3 emissive = ((_MainTex_var.rgb*_Color_copy.rgb*_MainTexIntensity)+(node_483.r*_NoiseIntensity*lerp( 0.0, 1.0, _GlowToggle )*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )));
                fixed3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
