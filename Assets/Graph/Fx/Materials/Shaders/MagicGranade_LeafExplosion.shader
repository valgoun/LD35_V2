// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4462,x:32719,y:32712,varname:node_4462,prsc:2|emission-6398-OUT;n:type:ShaderForge.SFN_Tex2d,id:4448,x:32196,y:32865,ptovrint:False,ptlb:Gradient,ptin:_Gradient,varname:node_4448,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5742-OUT;n:type:ShaderForge.SFN_Tex2d,id:8649,x:31662,y:32751,ptovrint:False,ptlb:Shape,ptin:_Shape,varname:node_8649,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6794-UVOUT;n:type:ShaderForge.SFN_Append,id:5742,x:31923,y:32839,varname:node_5742,prsc:2|A-8649-R,B-8713-OUT;n:type:ShaderForge.SFN_Multiply,id:6398,x:32520,y:32767,varname:node_6398,prsc:2|A-8649-R,B-9968-OUT,C-5927-RGB,D-5927-A;n:type:ShaderForge.SFN_Panner,id:222,x:32047,y:33177,varname:node_222,prsc:2,spu:0,spv:1|UVIN-4241-OUT;n:type:ShaderForge.SFN_Add,id:9968,x:32400,y:32939,varname:node_9968,prsc:2|A-4448-RGB,B-7395-R;n:type:ShaderForge.SFN_Tex2d,id:7395,x:32233,y:33177,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_7395,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-222-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7041,x:30123,y:32382,varname:node_7041,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:5069,x:31382,y:33294,ptovrint:False,ptlb:Stretching,ptin:_Stretching,varname:node_5069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Append,id:4241,x:31845,y:33141,varname:node_4241,prsc:2|A-8436-OUT,B-6907-OUT;n:type:ShaderForge.SFN_Tex2d,id:6894,x:31382,y:33126,ptovrint:False,ptlb:Default,ptin:_Default,varname:node_6894,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6174-OUT;n:type:ShaderForge.SFN_RemapRange,id:7783,x:30861,y:32870,varname:node_7783,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4918-G;n:type:ShaderForge.SFN_ArcTan2,id:8436,x:31237,y:32798,varname:node_8436,prsc:2,attp:2|A-7783-OUT,B-2306-OUT;n:type:ShaderForge.SFN_Vector1,id:8713,x:31845,y:33005,varname:node_8713,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:6907,x:31572,y:33160,varname:node_6907,prsc:2|A-6894-R,B-5069-OUT;n:type:ShaderForge.SFN_Add,id:5350,x:30503,y:32706,varname:node_5350,prsc:2|A-4918-R,B-4003-OUT;n:type:ShaderForge.SFN_Vector1,id:4003,x:30273,y:32730,varname:node_4003,prsc:2,v1:0.15;n:type:ShaderForge.SFN_RemapRange,id:2306,x:30861,y:32705,varname:node_2306,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5350-OUT;n:type:ShaderForge.SFN_TexCoord,id:8285,x:30689,y:33097,varname:node_8285,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:3903,x:30927,y:33208,varname:node_3903,prsc:2|A-8285-V,B-6262-OUT;n:type:ShaderForge.SFN_Append,id:6174,x:31221,y:33126,varname:node_6174,prsc:2|A-8285-U,B-8171-OUT;n:type:ShaderForge.SFN_Vector1,id:6262,x:30755,y:33322,varname:node_6262,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Lerp,id:8171,x:31096,y:33248,varname:node_8171,prsc:2|A-3903-OUT,B-8285-V,T-8285-V;n:type:ShaderForge.SFN_VertexColor,id:5927,x:32268,y:32613,varname:node_5927,prsc:2;n:type:ShaderForge.SFN_Rotator,id:6794,x:30422,y:32350,varname:node_6794,prsc:2|UVIN-7041-UVOUT,ANG-8232-OUT;n:type:ShaderForge.SFN_Vector4Property,id:8069,x:29462,y:31879,ptovrint:False,ptlb:OriginPos,ptin:_OriginPos,varname:node_8069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.5,v3:1,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:644,x:29683,y:31959,varname:node_644,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8069-XYZ;n:type:ShaderForge.SFN_Subtract,id:7481,x:30162,y:31786,varname:node_7481,prsc:2|A-3773-R,B-644-R;n:type:ShaderForge.SFN_ComponentMask,id:3773,x:29708,y:31750,varname:node_3773,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-2495-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:2495,x:29465,y:31664,varname:node_2495,prsc:2;n:type:ShaderForge.SFN_Divide,id:8893,x:30570,y:31895,varname:node_8893,prsc:2|A-7481-OUT,B-1307-OUT;n:type:ShaderForge.SFN_Distance,id:1307,x:30162,y:31917,varname:node_1307,prsc:2|A-3773-OUT,B-644-OUT;n:type:ShaderForge.SFN_ArcCos,id:8232,x:30780,y:31895,varname:node_8232,prsc:2|IN-8893-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4918,x:30319,y:32552,cmnt:Si tu veux débugger ce truc utilise les UV coords au lieu du rotator pauvre fou,varname:node_4918,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6794-UVOUT;n:type:ShaderForge.SFN_Abs,id:5792,x:30399,y:31786,varname:node_5792,prsc:2|IN-7481-OUT;n:type:ShaderForge.SFN_Subtract,id:1162,x:30162,y:32137,varname:node_1162,prsc:2|A-3773-G,B-644-G;n:type:ShaderForge.SFN_ArcTan,id:8249,x:30782,y:32208,varname:node_8249,prsc:2|IN-1885-OUT;n:type:ShaderForge.SFN_Divide,id:1885,x:30579,y:32182,varname:node_1885,prsc:2|A-7481-OUT,B-1162-OUT;proporder:8649-7395-6894-5069-4448-8069;pass:END;sub:END;*/

Shader "L35/MagicGranade_LeafExplosion" {
    Properties {
        _Shape ("Shape", 2D) = "white" {}
        _Cloud ("Cloud", 2D) = "white" {}
        _Default ("Default", 2D) = "white" {}
        _Stretching ("Stretching", Float ) = 0.2
        _Gradient ("Gradient", 2D) = "white" {}
        _OriginPos ("OriginPos", Vector) = (0.5,0.5,1,0)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Gradient; uniform float4 _Gradient_ST;
            uniform sampler2D _Shape; uniform float4 _Shape_ST;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            uniform float _Stretching;
            uniform sampler2D _Default; uniform float4 _Default_ST;
            uniform float4 _OriginPos;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_3773 = i.posWorld.rgb.rb;
                float2 node_644 = _OriginPos.rgb.rb;
                float node_7481 = (node_3773.r-node_644.r);
                float node_6794_ang = acos((node_7481/distance(node_3773,node_644)));
                float node_6794_spd = 1.0;
                float node_6794_cos = cos(node_6794_spd*node_6794_ang);
                float node_6794_sin = sin(node_6794_spd*node_6794_ang);
                float2 node_6794_piv = float2(0.5,0.5);
                float2 node_6794 = (mul(i.uv0-node_6794_piv,float2x2( node_6794_cos, -node_6794_sin, node_6794_sin, node_6794_cos))+node_6794_piv);
                float4 _Shape_var = tex2D(_Shape,TRANSFORM_TEX(node_6794, _Shape));
                float2 node_5742 = float2(_Shape_var.r,0.0);
                float4 _Gradient_var = tex2D(_Gradient,TRANSFORM_TEX(node_5742, _Gradient));
                float4 node_8786 = _Time + _TimeEditor;
                float2 node_4918 = node_6794.rg; // Si tu veux débugger ce truc utilise les UV coords au lieu du rotator pauvre fou
                float2 node_6174 = float2(i.uv0.r,lerp((i.uv0.g+0.3),i.uv0.g,i.uv0.g));
                float4 _Default_var = tex2D(_Default,TRANSFORM_TEX(node_6174, _Default));
                float2 node_222 = (float2(((atan2((node_4918.g*2.0+-1.0),((node_4918.r+0.15)*2.0+-1.0))/6.28318530718)+0.5),(_Default_var.r*_Stretching))+node_8786.g*float2(0,1));
                float4 _Cloud_var = tex2D(_Cloud,TRANSFORM_TEX(node_222, _Cloud));
                float3 emissive = (_Shape_var.r*(_Gradient_var.rgb+_Cloud_var.r)*i.vertexColor.rgb*i.vertexColor.a);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
