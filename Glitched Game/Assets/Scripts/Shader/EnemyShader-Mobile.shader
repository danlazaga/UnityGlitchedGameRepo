// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-934-OUT;n:type:ShaderForge.SFN_Color,id:5029,x:31621,y:32358,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:3524,x:31047,y:32521,ptovrint:False,ptlb:GlowToggle,ptin:_GlowToggle,varname:_GlowToggle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6700-OUT,B-6074-OUT;n:type:ShaderForge.SFN_Vector1,id:6700,x:30559,y:32467,varname:node_6700,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6074,x:30559,y:32598,varname:node_6074,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:6456,x:31237,y:33427,ptovrint:False,ptlb:DamageColor,ptin:_DamageColor,varname:_DamageColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1985294,c3:0.1985294,c4:1;n:type:ShaderForge.SFN_Color,id:7912,x:31237,y:33601,ptovrint:False,ptlb:StunColor,ptin:_StunColor,varname:_StunColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.988641,c2:1,c3:0.1764706,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:8459,x:31443,y:33498,ptovrint:False,ptlb:Damage or Stun,ptin:_DamageorStun,varname:_DamageorStun,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6456-RGB,B-7912-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:7846,x:30652,y:33192,ptovrint:False,ptlb:DamageNoiseTex,ptin:_DamageNoiseTex,varname:_DamageNoiseTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:605,x:30673,y:32922,varname:node_605,prsc:2,spu:0.5,spv:1|UVIN-2906-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2906,x:30375,y:32768,varname:node_2906,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6019,x:31290,y:33036,varname:node_483,prsc:2,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-605-UVOUT,TEX-7846-TEX;n:type:ShaderForge.SFN_Slider,id:6176,x:30944,y:33277,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:_NoiseIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Multiply,id:1144,x:31855,y:33074,varname:node_1144,prsc:2|A-6019-R,B-6176-OUT,C-3524-OUT,D-8459-OUT;n:type:ShaderForge.SFN_Multiply,id:9143,x:32058,y:32539,varname:node_9143,prsc:2|A-357-RGB,B-5029-RGB,C-8560-OUT;n:type:ShaderForge.SFN_Tex2d,id:357,x:31625,y:32121,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aac1974d0be6af048831585a3f0eff2b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:8560,x:31486,y:32591,ptovrint:False,ptlb:MainTexIntensity,ptin:_MainTexIntensity,varname:_MainTexIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Add,id:934,x:32162,y:32872,varname:node_934,prsc:2|A-9143-OUT,B-1144-OUT;proporder:5029-3524-6456-7912-8459-7846-6176-357-8560;pass:END;sub:END;*/

Shader "Shader Forge/EnemyShader-Mobile" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
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
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform fixed _GlowToggle;
            uniform float4 _DamageColor;
            uniform float4 _StunColor;
            uniform fixed _DamageorStun;
            uniform sampler2D _DamageNoiseTex; uniform float4 _DamageNoiseTex_ST;
            uniform float _NoiseIntensity;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MainTexIntensity;
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
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_6189 = _Time;
                float2 node_605 = (i.uv0+node_6189.g*float2(0.5,1));
                float4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_605, _DamageNoiseTex));
                float3 emissive = ((_MainTex_var.rgb*_Color.rgb*_MainTexIntensity)+(node_483.r*_NoiseIntensity*lerp( 0.0, 1.0, _GlowToggle )*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
