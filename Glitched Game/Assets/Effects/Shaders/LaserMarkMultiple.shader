// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:4,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32894,y:31701,varname:node_4795,prsc:2|emission-2393-OUT,clip-7648-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31902,y:31341,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:372c8dd1fbf996f4e95770f1f7c19f64,ntxv:0,isnm:False|UVIN-5983-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32401,y:31725,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-1379-W;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32078,y:30968,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32126,y:31211,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:5983,x:31485,y:31196,varname:node_5983,prsc:2,spu:1,spv:0|UVIN-1379-UVOUT,DIST-1379-Z;n:type:ShaderForge.SFN_TexCoord,id:1379,x:30967,y:31223,varname:node_1379,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Desaturate,id:7648,x:32388,y:31454,varname:node_7648,prsc:2|COL-6074-RGB;proporder:6074-797;pass:END;sub:END;*/

Shader "Shader Forge/LaserMarkMultiply" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend DstColor Zero
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            //#define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase_fullshadows
            //#pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_5983 = (i.uv0+i.uv0.b*float2(1,0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5983, _MainTex));
                clip(dot(_MainTex_var.rgb,float3(0.3,0.59,0.11)) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*i.uv0.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
