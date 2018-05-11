// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-8683-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:30016,y:31508,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe85db2f82fe604084455e03c6794c3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:31582,y:32061,varname:node_2393,prsc:2|A-1561-OUT,B-3637-OUT,C-2472-Z;n:type:ShaderForge.SFN_VertexColor,id:2053,x:30942,y:31296,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:30537,y:32090,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2124784,c2:0.9632353,c3:0.8700379,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2472,x:30807,y:32292,varname:node_2472,prsc:2,uv:0,uaff:True;n:type:ShaderForge.SFN_Vector1,id:6771,x:30355,y:31073,varname:node_6771,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7030,x:30681,y:31243,varname:node_7030,prsc:2|A-6771-OUT,B-6074-B;n:type:ShaderForge.SFN_Multiply,id:1561,x:31167,y:31677,varname:node_1561,prsc:2|A-305-OUT,B-4865-OUT;n:type:ShaderForge.SFN_Multiply,id:1106,x:30776,y:31730,varname:node_1106,prsc:2|A-6074-R,B-8318-OUT,C-3202-OUT;n:type:ShaderForge.SFN_Sin,id:55,x:29916,y:31950,varname:node_55,prsc:2|IN-5084-OUT;n:type:ShaderForge.SFN_Time,id:1557,x:29551,y:31960,varname:node_1557,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5084,x:29738,y:31950,varname:node_5084,prsc:2|A-1557-T,B-8949-OUT;n:type:ShaderForge.SFN_Slider,id:8949,x:29376,y:32152,ptovrint:False,ptlb:Sin Rate(Pulsating Rate),ptin:_SinRatePulsatingRate,varname:_SinRatePulsatingRate,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.129858,max:5;n:type:ShaderForge.SFN_TexCoord,id:7999,x:30026,y:33153,varname:node_7999,prsc:2,uv:1,uaff:True;n:type:ShaderForge.SFN_Add,id:8137,x:30874,y:32757,varname:node_8137,prsc:2|A-2472-Z,B-7999-Z;n:type:ShaderForge.SFN_RemapRange,id:8318,x:30073,y:31963,varname:node_8318,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-55-OUT;n:type:ShaderForge.SFN_Append,id:3637,x:31620,y:31577,varname:node_3637,prsc:2|A-2053-RGB,B-4865-OUT;n:type:ShaderForge.SFN_Vector1,id:3202,x:30559,y:31820,varname:node_3202,prsc:2,v1:10;n:type:ShaderForge.SFN_ConstantClamp,id:4865,x:30964,y:31791,varname:node_4865,prsc:2,min:0.5,max:0.9|IN-1106-OUT;n:type:ShaderForge.SFN_Multiply,id:305,x:30907,y:31500,varname:node_305,prsc:2|A-7030-OUT,B-3041-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3041,x:30556,y:31546,ptovrint:False,ptlb:node_3041,ptin:_node_3041,varname:_node_3041,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:555,x:32154,y:32821,varname:node_555,prsc:2|A-7421-OUT,B-2393-OUT;n:type:ShaderForge.SFN_Multiply,id:7421,x:31453,y:32747,varname:node_7421,prsc:2|A-797-RGB,B-6787-OUT;n:type:ShaderForge.SFN_Vector1,id:6787,x:31200,y:32808,varname:node_6787,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8683,x:32493,y:32800,varname:node_8683,prsc:2|A-4112-OUT,B-555-OUT;n:type:ShaderForge.SFN_Vector1,id:4112,x:32257,y:32687,varname:node_4112,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:8195,x:31365,y:32331,varname:node_8195,prsc:2|A-6074-G;proporder:6074-797-8949-3041;pass:END;sub:END;*/

Shader "Shader Forge/AOEBarrier" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.2124784,0.9632353,0.8700379,1)
        _SinRatePulsatingRate ("Sin Rate(Pulsating Rate)", Range(0, 5)) = 4.129858
        _node_3041 ("node_3041", Float ) = 1
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
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _SinRatePulsatingRate;
            uniform float _node_3041;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_1557 = _Time;
                float node_4865 = clamp((_MainTex_var.r*(sin((node_1557.g*_SinRatePulsatingRate))*0.5+0.5)*10.0),0.5,0.9);
                float3 emissive = (0.2*((_TintColor.rgb*0.5)+((((1.0*_MainTex_var.b)*_node_3041)*node_4865)*float4(i.vertexColor.rgb,node_4865)*i.uv0.b))).rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
