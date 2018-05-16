// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33387,y:32398,varname:node_3138,prsc:2|emission-5605-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32427,y:31957,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:794,x:31853,y:32120,ptovrint:False,ptlb:GlowToggle,ptin:_GlowToggle,varname:_GlowToggle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5507-OUT,B-2705-OUT;n:type:ShaderForge.SFN_Vector1,id:5507,x:31365,y:32066,varname:node_5507,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2705,x:31365,y:32197,varname:node_2705,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:3331,x:32043,y:33026,ptovrint:False,ptlb:DamageColor,ptin:_DamageColor,varname:_DamageColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.1985294,c3:0.1985294,c4:1;n:type:ShaderForge.SFN_Color,id:1469,x:32043,y:33200,ptovrint:False,ptlb:StunColor,ptin:_StunColor,varname:_StunColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.988641,c2:1,c3:0.1764706,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:3702,x:32249,y:33097,ptovrint:False,ptlb:Damage or Stun,ptin:_DamageorStun,varname:_DamageorStun,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3331-RGB,B-1469-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:6936,x:31458,y:32791,ptovrint:False,ptlb:DamageNoiseTex,ptin:_DamageNoiseTex,varname:_DamageNoiseTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:3898,x:31479,y:32521,varname:node_3898,prsc:2,spu:0.5,spv:1|UVIN-3877-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3877,x:31181,y:32367,varname:node_3877,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:2105,x:32096,y:32635,varname:node_483,prsc:2,tex:e958c6041cfe445e987c73751e8d4082,ntxv:0,isnm:False|UVIN-3898-UVOUT,TEX-6936-TEX;n:type:ShaderForge.SFN_Slider,id:2908,x:31750,y:32876,ptovrint:False,ptlb:NoiseIntensity,ptin:_NoiseIntensity,varname:_NoiseIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Multiply,id:2037,x:32661,y:32673,varname:node_2037,prsc:2|A-2105-R,B-2908-OUT,C-794-OUT,D-3702-OUT;n:type:ShaderForge.SFN_Multiply,id:1011,x:32864,y:32138,varname:node_1011,prsc:2|A-1497-RGB,B-7241-RGB,C-7174-OUT;n:type:ShaderForge.SFN_Tex2d,id:1497,x:32431,y:31720,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aac1974d0be6af048831585a3f0eff2b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7174,x:32292,y:32190,ptovrint:False,ptlb:MainTexIntensity,ptin:_MainTexIntensity,varname:_MainTexIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Add,id:5605,x:32968,y:32471,varname:node_5605,prsc:2|A-1011-OUT,B-2037-OUT;proporder:7241-58-2190-4110-622-2239-9876-794-3331-1469-3702-6936-2908-1497-7174;pass:END;sub:END;*/

Shader "Shader Forge/EnemyShader-Mobile" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_2149 ("node_2149", 2D) = "white" {}
        _node_3945 ("node_3945", 2D) = "white" {}
        _node_7433 ("node_7433", 2D) = "white" {}
        _node_4946 ("node_4946", 2D) = "white" {}
        _node_6919 ("node_6919", 2D) = "white" {}
        _node_3778 ("node_3778", 2D) = "white" {}
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
                float4 node_6917 = _Time;
                float2 node_3898 = (i.uv0+node_6917.g*float2(0.5,1));
                float4 node_483 = tex2D(_DamageNoiseTex,TRANSFORM_TEX(node_3898, _DamageNoiseTex));
                float _GlowToggle_var = lerp( 0.0, 1.0, _GlowToggle );
                float3 emissive = ((_MainTex_var.rgb*_Color.rgb*_MainTexIntensity)+(node_483.r*_NoiseIntensity*_GlowToggle_var*lerp( _DamageColor.rgb, _StunColor.rgb, _DamageorStun )));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
