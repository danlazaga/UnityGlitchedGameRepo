// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32844,y:32866,varname:node_4795,prsc:2|emission-2393-OUT,alpha-2750-OUT,voffset-3542-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32209,y:32197,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32469,y:32389,varname:node_2393,prsc:2|A-6074-B,B-2053-RGB,C-797-RGB,D-8979-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32209,y:32368,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32209,y:32526,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9705882,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_NormalVector,id:4132,x:31593,y:33108,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:3542,x:32152,y:33241,varname:node_3542,prsc:2|A-4132-OUT,B-2809-OUT,C-5366-OUT;n:type:ShaderForge.SFN_Slider,id:2809,x:31677,y:33392,ptovrint:False,ptlb:Effect,ptin:_Effect,varname:node_2809,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7397524,max:1;n:type:ShaderForge.SFN_TexCoord,id:3883,x:31604,y:32652,varname:node_3883,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8066,x:32096,y:32744,varname:node_8066,prsc:2|IN-3883-V,IMIN-4763-OUT,IMAX-7666-OUT,OMIN-308-OUT,OMAX-6776-OUT;n:type:ShaderForge.SFN_Vector1,id:5254,x:31647,y:32926,varname:node_5254,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Add,id:7666,x:31900,y:32902,varname:node_7666,prsc:2|A-5254-OUT,B-4763-OUT;n:type:ShaderForge.SFN_Vector1,id:308,x:32071,y:33002,varname:node_308,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6776,x:32076,y:33083,varname:node_6776,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:4763,x:31320,y:32909,ptovrint:False,ptlb:Test,ptin:_Test,varname:node_4763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.2,cur:1,max:1;n:type:ShaderForge.SFN_Clamp01,id:5366,x:32324,y:32749,varname:node_5366,prsc:2|IN-8066-OUT;n:type:ShaderForge.SFN_Slider,id:2750,x:32391,y:33334,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_2750,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.764277,max:1;n:type:ShaderForge.SFN_Slider,id:8979,x:32442,y:32647,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_8979,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.324194,max:3;proporder:6074-797-2809-4763-2750-8979;pass:END;sub:END;*/

Shader "Shader Forge/ShieldShader" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.9705882,0,0,1)
        _Effect ("Effect", Range(0, 1)) = 0.7397524
        _Test ("Test", Range(-0.2, 1)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 0.764277
        _ColorIntensity ("ColorIntensity", Range(0, 3)) = 1.324194
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _Effect;
            uniform float _Test;
            uniform float _Opacity;
            uniform float _ColorIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_308 = 0.0;
                v.vertex.xyz += (v.normal*_Effect*saturate((node_308 + ( (o.uv0.g - _Test) * (1.0 - node_308) ) / ((0.1+_Test) - _Test))));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.b*i.vertexColor.rgb*_TintColor.rgb*_ColorIntensity);
                float3 finalColor = emissive;
                return fixed4(finalColor,_Opacity);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
