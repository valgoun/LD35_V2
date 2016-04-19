// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:295,x:33614,y:32695,varname:node_295,prsc:2|emission-1107-OUT;n:type:ShaderForge.SFN_Tex2d,id:3486,x:30430,y:32623,varname:node_3486,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|TEX-7244-TEX;n:type:ShaderForge.SFN_Tex2d,id:2925,x:31998,y:32514,varname:node_2925,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-6110-UVOUT,TEX-7244-TEX;n:type:ShaderForge.SFN_Append,id:7877,x:30946,y:32612,varname:node_7877,prsc:2|A-3486-R,B-3486-G;n:type:ShaderForge.SFN_TexCoord,id:7471,x:30836,y:32420,varname:node_7471,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:7400,x:31144,y:32583,varname:node_7400,prsc:2|A-7471-UVOUT,B-7877-OUT;n:type:ShaderForge.SFN_Multiply,id:5382,x:32551,y:32498,varname:node_5382,prsc:2|A-8905-RGB,B-5740-OUT,C-8905-A;n:type:ShaderForge.SFN_Color,id:8905,x:32067,y:32131,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:8092,x:30435,y:33335,varname:node_8092,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:4425,x:31436,y:33525,cmnt:Utile si on veut faire un scanline,varname:node_4425,prsc:2|A-1291-OUT,B-7769-OUT,C-3635-OUT;n:type:ShaderForge.SFN_Vector1,id:7769,x:31433,y:33651,varname:node_7769,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Slider,id:9559,x:29440,y:33911,ptovrint:False,ptlb:AnimTime,ptin:_AnimTime,varname:node_9559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1350,x:31783,y:33499,varname:node_1350,prsc:2|A-3486-R,B-7793-OUT,C-4425-OUT;n:type:ShaderForge.SFN_Add,id:9333,x:31351,y:33842,varname:node_9333,prsc:2|A-1291-OUT,B-4475-OUT,C-3061-OUT;n:type:ShaderForge.SFN_Vector1,id:4475,x:31365,y:34068,varname:node_4475,prsc:2,v1:-3;n:type:ShaderForge.SFN_Multiply,id:3635,x:31181,y:33558,varname:node_3635,prsc:2|A-8845-OUT,B-4994-OUT;n:type:ShaderForge.SFN_Vector1,id:8845,x:31162,y:33711,varname:node_8845,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3061,x:31099,y:33842,varname:node_3061,prsc:2|A-4994-OUT,B-78-OUT;n:type:ShaderForge.SFN_Vector1,id:78,x:31040,y:34070,varname:node_78,prsc:2,v1:4;n:type:ShaderForge.SFN_OneMinus,id:7488,x:31563,y:33831,varname:node_7488,prsc:2|IN-9333-OUT;n:type:ShaderForge.SFN_Multiply,id:1291,x:31114,y:33326,varname:node_1291,prsc:2|A-9518-OUT,B-7210-OUT;n:type:ShaderForge.SFN_Vector1,id:9518,x:30868,y:33254,varname:node_9518,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7298,x:32940,y:32784,varname:node_7298,prsc:2|A-5382-OUT,B-1350-OUT,C-939-OUT,D-6770-OUT,E-1796-OUT;n:type:ShaderForge.SFN_Panner,id:6110,x:31597,y:32516,varname:node_6110,prsc:2,spu:0.2,spv:1.2|UVIN-7400-OUT;n:type:ShaderForge.SFN_Panner,id:2556,x:31597,y:32675,varname:node_2556,prsc:2,spu:-0.1,spv:0.9|UVIN-7400-OUT;n:type:ShaderForge.SFN_Tex2d,id:2002,x:31998,y:32675,varname:node_2002,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-2556-UVOUT,TEX-7244-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7244,x:31756,y:32278,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_7244,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5762,x:32205,y:32631,varname:node_5762,prsc:2|A-2925-R,B-2002-R;n:type:ShaderForge.SFN_Divide,id:5740,x:32378,y:32685,varname:node_5740,prsc:2|A-5762-OUT,B-8350-OUT;n:type:ShaderForge.SFN_Vector1,id:8350,x:32378,y:32809,varname:node_8350,prsc:2,v1:2;n:type:ShaderForge.SFN_TexCoord,id:9773,x:32487,y:33434,varname:node_9773,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:1921,x:32487,y:33584,varname:node_1921,prsc:2,v1:-0.8;n:type:ShaderForge.SFN_Add,id:370,x:32675,y:33494,varname:node_370,prsc:2|A-9773-V,B-1921-OUT;n:type:ShaderForge.SFN_Multiply,id:1995,x:32906,y:33468,varname:node_1995,prsc:2|A-370-OUT,B-8783-OUT;n:type:ShaderForge.SFN_Vector1,id:8783,x:32769,y:33578,varname:node_8783,prsc:2,v1:5;n:type:ShaderForge.SFN_OneMinus,id:7535,x:33083,y:33468,varname:node_7535,prsc:2|IN-1995-OUT;n:type:ShaderForge.SFN_Add,id:1524,x:32717,y:33709,varname:node_1524,prsc:2|A-4481-OUT,B-986-OUT;n:type:ShaderForge.SFN_Multiply,id:3665,x:32917,y:33668,varname:node_3665,prsc:2|A-1524-OUT,B-8783-OUT;n:type:ShaderForge.SFN_Vector1,id:986,x:32487,y:33658,varname:node_986,prsc:2,v1:-0.8;n:type:ShaderForge.SFN_OneMinus,id:4481,x:32546,y:33790,varname:node_4481,prsc:2|IN-9773-V;n:type:ShaderForge.SFN_OneMinus,id:8592,x:33113,y:33658,varname:node_8592,prsc:2|IN-3665-OUT;n:type:ShaderForge.SFN_Clamp01,id:939,x:33273,y:33468,varname:node_939,prsc:2|IN-7535-OUT;n:type:ShaderForge.SFN_Clamp01,id:6770,x:33273,y:33658,varname:node_6770,prsc:2|IN-8592-OUT;n:type:ShaderForge.SFN_OneMinus,id:7210,x:30887,y:33375,varname:node_7210,prsc:2|IN-8092-V;n:type:ShaderForge.SFN_Add,id:2369,x:32568,y:32988,varname:node_2369,prsc:2|A-358-OUT,B-7129-OUT;n:type:ShaderForge.SFN_Vector1,id:7129,x:32310,y:33100,varname:node_7129,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:358,x:32020,y:32981,varname:node_358,prsc:2|B-7837-OUT;n:type:ShaderForge.SFN_Vector1,id:7837,x:31907,y:33172,varname:node_7837,prsc:2,v1:5;n:type:ShaderForge.SFN_Vector1,id:4843,x:32753,y:33375,varname:node_4843,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:1284,x:32906,y:33301,varname:node_1284,prsc:2|A-4027-OUT,B-4843-OUT,C-1549-OUT;n:type:ShaderForge.SFN_Vector1,id:3269,x:32429,y:33345,varname:node_3269,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Add,id:4027,x:32623,y:33246,varname:node_4027,prsc:2|A-9773-V,B-3269-OUT;n:type:ShaderForge.SFN_Add,id:1549,x:32205,y:33631,varname:node_1549,prsc:2|A-4994-OUT,B-7129-OUT;n:type:ShaderForge.SFN_Multiply,id:9492,x:30355,y:33679,varname:node_9492,prsc:2|A-9559-OUT,B-770-OUT;n:type:ShaderForge.SFN_Vector1,id:770,x:30404,y:33834,varname:node_770,prsc:2,v1:3;n:type:ShaderForge.SFN_Add,id:2025,x:30548,y:33679,varname:node_2025,prsc:2|A-9492-OUT,B-7616-OUT;n:type:ShaderForge.SFN_Vector1,id:7616,x:30548,y:33834,varname:node_7616,prsc:2,v1:-1;n:type:ShaderForge.SFN_Abs,id:6686,x:30726,y:33679,varname:node_6686,prsc:2|IN-2025-OUT;n:type:ShaderForge.SFN_OneMinus,id:4994,x:30890,y:33679,varname:node_4994,prsc:2|IN-6686-OUT;n:type:ShaderForge.SFN_Vector1,id:2009,x:30303,y:33391,varname:node_2009,prsc:2,v1:10;n:type:ShaderForge.SFN_Clamp01,id:4510,x:31739,y:33867,varname:node_4510,prsc:2|IN-7488-OUT;n:type:ShaderForge.SFN_Sin,id:7764,x:31778,y:33706,varname:node_7764,prsc:2|IN-9916-OUT;n:type:ShaderForge.SFN_Multiply,id:9916,x:31969,y:33871,varname:node_9916,prsc:2|A-7488-OUT,B-1051-OUT;n:type:ShaderForge.SFN_Vector1,id:1051,x:31609,y:34012,varname:node_1051,prsc:2,v1:5;n:type:ShaderForge.SFN_Lerp,id:7793,x:31954,y:33706,varname:node_7793,prsc:2|A-7764-OUT,B-7488-OUT,T-5970-OUT;n:type:ShaderForge.SFN_Vector1,id:3575,x:30351,y:34234,varname:node_3575,prsc:2,v1:-0.33;n:type:ShaderForge.SFN_Add,id:7470,x:30351,y:34092,varname:node_7470,prsc:2|A-9559-OUT,B-3575-OUT;n:type:ShaderForge.SFN_Ceil,id:5970,x:30586,y:34092,varname:node_5970,prsc:2|IN-7470-OUT;n:type:ShaderForge.SFN_Clamp01,id:1107,x:33215,y:32810,varname:node_1107,prsc:2|IN-7298-OUT;n:type:ShaderForge.SFN_Power,id:1796,x:29996,y:34414,varname:node_1796,prsc:2|VAL-3380-OUT,EXP-6521-OUT;n:type:ShaderForge.SFN_Vector1,id:6521,x:29760,y:34444,varname:node_6521,prsc:2,v1:2;n:type:ShaderForge.SFN_RemapRange,id:3380,x:29808,y:34178,varname:node_3380,prsc:2,frmn:0,frmx:0.2,tomn:0,tomx:1|IN-9559-OUT;proporder:8905-9559-7244;pass:END;sub:END;*/

Shader "Custom/FX_MagicPunch" {
    Properties {
        _Color ("Color", Color) = (1,1,0,1)
        _AnimTime ("AnimTime", Range(0, 1)) = 0
        _Cloud ("Cloud", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _AnimTime;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_8353 = _Time + _TimeEditor;
                float4 node_3486 = tex2D(_Cloud,TRANSFORM_TEX(i.uv0, _Cloud));
                float2 node_7400 = (i.uv0+float2(node_3486.r,node_3486.g));
                float2 node_6110 = (node_7400+node_8353.g*float2(0.2,1.2));
                float4 node_2925 = tex2D(_Cloud,TRANSFORM_TEX(node_6110, _Cloud));
                float2 node_2556 = (node_7400+node_8353.g*float2(-0.1,0.9));
                float4 node_2002 = tex2D(_Cloud,TRANSFORM_TEX(node_2556, _Cloud));
                float node_1291 = (2.0*(1.0 - i.uv0.g));
                float node_4994 = (1.0 - abs(((_AnimTime*3.0)+(-1.0))));
                float node_7488 = (1.0 - (node_1291+(-3.0)+(node_4994*4.0)));
                float node_8783 = 5.0;
                float3 emissive = saturate(((_Color.rgb*((node_2925.r+node_2002.r)/2.0)*_Color.a)*(node_3486.r*lerp(sin((node_7488*5.0)),node_7488,ceil((_AnimTime+(-0.33))))*(node_1291+(-0.5)+(2.0*node_4994)))*saturate((1.0 - ((i.uv0.g+(-0.8))*node_8783)))*saturate((1.0 - (((1.0 - i.uv0.g)+(-0.8))*node_8783)))*pow((_AnimTime*5.0+0.0),2.0)));
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
