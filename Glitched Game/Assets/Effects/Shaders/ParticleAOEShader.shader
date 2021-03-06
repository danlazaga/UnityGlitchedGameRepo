// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-8449-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31859,y:32053,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3559-UVOUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31874,y:32579,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:7213,x:30862,y:32486,varname:node_7213,prsc:2,uv:2,uaff:True;n:type:ShaderForge.SFN_Multiply,id:5378,x:32083,y:32364,varname:node_5378,prsc:2|A-1831-Z,B-6074-R;n:type:ShaderForge.SFN_Multiply,id:8449,x:32523,y:32606,varname:node_8449,prsc:2|A-2053-RGB,B-5378-OUT,C-1831-W,D-9721-RGB;n:type:ShaderForge.SFN_Color,id:9721,x:32246,y:32945,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:9243,x:31288,y:31932,varname:node_9243,prsc:2,spu:0,spv:1|UVIN-1831-UVOUT,DIST-7213-U;n:type:ShaderForge.SFN_TexCoord,id:1831,x:30790,y:31948,varname:node_1831,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Panner,id:3559,x:31638,y:31969,varname:node_3559,prsc:2,spu:1,spv:0|UVIN-9243-UVOUT,DIST-7213-V;proporder:6074-9721;pass:END;sub:END;*/

Shader "Shader Forge/ParticleAOEShader2" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (0.5,0.5,0.5,1)
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            //#define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            //#pragma multi_compile_fwdbase
            //#pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float4 texcoord0 : TEXCOORD0;
                float4 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 uv2 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float2 node_3559 = ((i.uv0+i.uv2.r*float2(0,1))+i.uv2.g*float2(1,0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3559, _MainTex));
                float3 emissive = (i.vertexColor.rgb*(i.uv0.b*_MainTex_var.r)*i.uv0.a*_MainColor.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
