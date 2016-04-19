// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:6900,x:34909,y:32747,varname:node_6900,prsc:2|emission-3951-OUT,alpha-8932-OUT,refract-6864-OUT;n:type:ShaderForge.SFN_Tex2d,id:1663,x:32262,y:32837,varname:node_1663,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-2578-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_TexCoord,id:5931,x:30713,y:32747,varname:node_5931,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:1250,x:31829,y:32907,varname:node_1250,prsc:2|A-7848-OUT,B-2119-OUT;n:type:ShaderForge.SFN_Panner,id:2578,x:32042,y:32907,varname:node_2578,prsc:2,spu:-0.5,spv:0|UVIN-1250-OUT;n:type:ShaderForge.SFN_Multiply,id:9386,x:31254,y:32457,varname:node_9386,prsc:2|A-5931-U,B-5931-U,C-5931-U;n:type:ShaderForge.SFN_Add,id:3025,x:31641,y:32557,varname:node_3025,prsc:2|A-9386-OUT,B-5931-U,C-2658-OUT;n:type:ShaderForge.SFN_Tex2d,id:6738,x:31802,y:32106,varname:_Cloud_copy,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-1889-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6427,x:31814,y:31782,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_6427,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Subtract,id:2118,x:31680,y:32356,varname:node_2118,prsc:2|A-7217-OUT,B-6738-R;n:type:ShaderForge.SFN_ConstantClamp,id:2658,x:31862,y:32356,varname:node_2658,prsc:2,min:0,max:0.8|IN-2118-OUT;n:type:ShaderForge.SFN_Multiply,id:1833,x:31416,y:32171,varname:node_1833,prsc:2|A-2664-OUT,B-5931-UVOUT;n:type:ShaderForge.SFN_Vector1,id:2664,x:31128,y:32098,varname:node_2664,prsc:2,v1:2;n:type:ShaderForge.SFN_Panner,id:1889,x:31609,y:32129,varname:node_1889,prsc:2,spu:-1,spv:1|UVIN-1833-OUT;n:type:ShaderForge.SFN_Subtract,id:6557,x:33236,y:32785,varname:node_6557,prsc:2|A-4868-OUT,B-2658-OUT;n:type:ShaderForge.SFN_Multiply,id:7217,x:31445,y:32358,varname:node_7217,prsc:2|A-3467-OUT,B-9386-OUT;n:type:ShaderForge.SFN_Vector1,id:3467,x:31184,y:32392,varname:node_3467,prsc:2,v1:1.5;n:type:ShaderForge.SFN_ConstantClamp,id:4853,x:32487,y:32852,varname:node_4853,prsc:2,min:0,max:1|IN-1663-R;n:type:ShaderForge.SFN_ValueProperty,id:7756,x:32569,y:34074,ptovrint:False,ptlb:RefractionEndFactor,ptin:_RefractionEndFactor,varname:node_7756,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6668,x:32775,y:34200,varname:node_6668,prsc:2|A-6700-R,B-7756-OUT;n:type:ShaderForge.SFN_Panner,id:4874,x:32081,y:33628,varname:node_4874,prsc:2,spu:-1,spv:0|UVIN-9120-OUT;n:type:ShaderForge.SFN_Append,id:9120,x:31859,y:33628,varname:node_9120,prsc:2|A-3025-OUT,B-9148-OUT;n:type:ShaderForge.SFN_Multiply,id:9148,x:31523,y:33698,varname:node_9148,prsc:2|A-5931-V,B-6455-OUT;n:type:ShaderForge.SFN_Vector1,id:6455,x:31338,y:33756,varname:node_6455,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ConstantClamp,id:5260,x:33270,y:32991,varname:node_5260,prsc:2,min:0,max:1|IN-6453-OUT;n:type:ShaderForge.SFN_Multiply,id:9991,x:33464,y:33049,varname:node_9991,prsc:2|A-5260-OUT,B-9058-OUT;n:type:ShaderForge.SFN_Vector1,id:9058,x:33280,y:33147,varname:node_9058,prsc:2,v1:-1;n:type:ShaderForge.SFN_Tex2d,id:6700,x:32397,y:33599,varname:node_6700,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-4874-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_Add,id:6453,x:33101,y:32991,varname:node_6453,prsc:2|A-1663-G,B-658-OUT,C-4470-B;n:type:ShaderForge.SFN_Vector1,id:658,x:32872,y:33025,varname:node_658,prsc:2,v1:-0.3;n:type:ShaderForge.SFN_Color,id:9237,x:34147,y:32792,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8455882,c2:0.6942776,c3:0.4498529,c4:1;n:type:ShaderForge.SFN_Lerp,id:6764,x:33100,y:33867,varname:node_6764,prsc:2|A-3609-OUT,B-5160-OUT,T-4939-U;n:type:ShaderForge.SFN_Multiply,id:5160,x:32799,y:33975,varname:node_5160,prsc:2|A-6700-R,B-7756-OUT;n:type:ShaderForge.SFN_TexCoord,id:4939,x:32345,y:33889,varname:node_4939,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:9202,x:34530,y:35245,ptovrint:False,ptlb:node_2349_copy,ptin:_node_2349_copy,varname:_node_2349_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3609,x:32799,y:33763,varname:node_3609,prsc:2|A-6700-R,B-6542-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6542,x:32576,y:33812,ptovrint:False,ptlb:RefractionStartFactor,ptin:_RefractionStartFactor,varname:node_6542,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:5148,x:33619,y:33825,varname:node_5148,prsc:2|A-3609-OUT,B-8078-OUT;n:type:ShaderForge.SFN_Multiply,id:7079,x:33283,y:33836,varname:node_7079,prsc:2|A-8353-OUT,B-6764-OUT;n:type:ShaderForge.SFN_OneMinus,id:736,x:33012,y:33639,varname:node_736,prsc:2|IN-2658-OUT;n:type:ShaderForge.SFN_Multiply,id:8353,x:33175,y:33639,varname:node_8353,prsc:2|A-736-OUT,B-736-OUT;n:type:ShaderForge.SFN_Multiply,id:4868,x:33010,y:32785,varname:node_4868,prsc:2|A-1395-OUT,B-5933-OUT;n:type:ShaderForge.SFN_Add,id:4586,x:33634,y:32914,varname:node_4586,prsc:2|A-9991-OUT,B-1663-B,C-6557-OUT;n:type:ShaderForge.SFN_Clamp01,id:4033,x:33449,y:33836,varname:node_4033,prsc:2|IN-7079-OUT;n:type:ShaderForge.SFN_Multiply,id:2119,x:31583,y:32967,varname:node_2119,prsc:2|A-5931-V,B-5694-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5694,x:31322,y:33029,ptovrint:False,ptlb:Width,ptin:_Width,varname:node_5694,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Append,id:1222,x:31842,y:33072,varname:node_1222,prsc:2|A-7848-OUT,B-7127-OUT;n:type:ShaderForge.SFN_Panner,id:9779,x:32042,y:33072,varname:node_9779,prsc:2,spu:0.4,spv:0|UVIN-1222-OUT;n:type:ShaderForge.SFN_Add,id:5933,x:32651,y:32963,varname:node_5933,prsc:2|A-4853-OUT,B-4470-R;n:type:ShaderForge.SFN_Divide,id:1395,x:32837,y:32866,varname:node_1395,prsc:2|A-5933-OUT,B-2497-OUT;n:type:ShaderForge.SFN_Vector1,id:2497,x:32651,y:32881,varname:node_2497,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7127,x:31583,y:33178,varname:node_7127,prsc:2|A-5931-V,B-3801-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3801,x:31322,y:33249,ptovrint:False,ptlb:Width2,ptin:_Width2,varname:node_3801,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Tex2d,id:4470,x:32262,y:33051,varname:node_4470,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-9779-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_Append,id:7904,x:31850,y:33346,varname:node_7904,prsc:2|A-3025-OUT,B-7127-OUT;n:type:ShaderForge.SFN_Panner,id:8882,x:32050,y:33346,varname:node_8882,prsc:2,spu:-0.4,spv:0.1|UVIN-7904-OUT;n:type:ShaderForge.SFN_Tex2d,id:9458,x:32270,y:33346,varname:node_9458,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-8882-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_Multiply,id:4337,x:33964,y:33004,varname:node_4337,prsc:2|A-4586-OUT,B-5962-V,C-6249-OUT,D-3095-OUT,E-3174-OUT;n:type:ShaderForge.SFN_TexCoord,id:5962,x:33450,y:33206,varname:node_5962,prsc:2,uv:0;n:type:ShaderForge.SFN_OneMinus,id:6249,x:33655,y:33297,varname:node_6249,prsc:2|IN-5962-V;n:type:ShaderForge.SFN_Vector1,id:3095,x:33821,y:33230,varname:node_3095,prsc:2,v1:3;n:type:ShaderForge.SFN_TexCoord,id:9350,x:32664,y:32243,varname:node_9350,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:2801,x:33210,y:32094,varname:node_2801,prsc:2|IN-9169-OUT;n:type:ShaderForge.SFN_Multiply,id:9169,x:33039,y:32094,varname:node_9169,prsc:2|A-9350-V,B-3874-OUT,C-9717-OUT;n:type:ShaderForge.SFN_Vector1,id:3874,x:32853,y:31939,varname:node_3874,prsc:2,v1:5;n:type:ShaderForge.SFN_Vector1,id:9717,x:32836,y:31892,varname:node_9717,prsc:2,v1:6;n:type:ShaderForge.SFN_Tau,id:7582,x:32565,y:31923,varname:node_7582,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1873,x:33109,y:32383,varname:node_1873,prsc:2|A-2801-OUT,B-9350-U;n:type:ShaderForge.SFN_Add,id:2381,x:33583,y:32330,varname:node_2381,prsc:2|A-9350-U,B-3174-OUT;n:type:ShaderForge.SFN_OneMinus,id:3174,x:33356,y:32383,varname:node_3174,prsc:2|IN-1873-OUT;n:type:ShaderForge.SFN_Clamp01,id:8932,x:34184,y:33020,varname:node_8932,prsc:2|IN-4337-OUT;n:type:ShaderForge.SFN_Vector1,id:8078,x:33462,y:34025,varname:node_8078,prsc:2,v1:0;n:type:ShaderForge.SFN_OneMinus,id:7479,x:31271,y:32744,varname:node_7479,prsc:2|IN-5931-U;n:type:ShaderForge.SFN_Multiply,id:7848,x:31583,y:32726,varname:node_7848,prsc:2|A-6738-R,B-8814-OUT;n:type:ShaderForge.SFN_Multiply,id:8814,x:31404,y:32744,varname:node_8814,prsc:2|A-7479-OUT,B-7479-OUT,C-7479-OUT;n:type:ShaderForge.SFN_Multiply,id:6864,x:33952,y:33711,varname:node_6864,prsc:2|A-1121-OUT,B-5148-OUT;n:type:ShaderForge.SFN_OneMinus,id:1121,x:33556,y:33578,varname:node_1121,prsc:2|IN-2658-OUT;n:type:ShaderForge.SFN_VertexColor,id:1463,x:34381,y:32607,varname:node_1463,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3951,x:34603,y:32745,varname:node_3951,prsc:2|A-1463-RGB,B-9237-RGB;proporder:6427-7756-9237-6542-5694-3801;pass:END;sub:END;*/

Shader "L35/FX_SlashTrail" {
    Properties {
        _Cloud ("Cloud", 2D) = "white" {}
        _RefractionEndFactor ("RefractionEndFactor", Float ) = 0
        _Color ("Color", Color) = (0.8455882,0.6942776,0.4498529,1)
        _RefractionStartFactor ("RefractionStartFactor", Float ) = 1
        _Width ("Width", Float ) = 2
        _Width2 ("Width2", Float ) = 3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        GrabPass{ }
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
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            uniform float4 _Color;
            uniform float _RefractionStartFactor;
            uniform float _Width;
            uniform float _Width2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float node_9386 = (i.uv0.r*i.uv0.r*i.uv0.r);
                float4 node_5597 = _Time + _TimeEditor;
                float2 node_1889 = ((2.0*i.uv0)+node_5597.g*float2(-1,1));
                float4 _Cloud_copy = tex2D(_Cloud,node_1889);
                float node_2658 = clamp(((1.5*node_9386)-_Cloud_copy.r),0,0.8);
                float node_3025 = (node_9386+i.uv0.r+node_2658);
                float2 node_4874 = (float2(node_3025,(i.uv0.g*0.1))+node_5597.g*float2(-1,0));
                float4 node_6700 = tex2D(_Cloud,node_4874);
                float node_3609 = (node_6700.r*_RefractionStartFactor);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + ((1.0 - node_2658)*float2(node_3609,0.0));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float3 emissive = (i.vertexColor.rgb*_Color.rgb);
                float3 finalColor = emissive;
                float node_7479 = (1.0 - i.uv0.r);
                float node_7848 = (_Cloud_copy.r*(node_7479*node_7479*node_7479));
                float2 node_2578 = (float2(node_7848,(i.uv0.g*_Width))+node_5597.g*float2(-0.5,0));
                float4 node_1663 = tex2D(_Cloud,node_2578);
                float node_7127 = (i.uv0.g*_Width2);
                float2 node_9779 = (float2(node_7848,node_7127)+node_5597.g*float2(0.4,0));
                float4 node_4470 = tex2D(_Cloud,node_9779);
                float node_5933 = (clamp(node_1663.r,0,1)+node_4470.r);
                float node_3174 = (1.0 - (sin((i.uv0.g*5.0*6.0))*i.uv0.r));
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,saturate((((clamp((node_1663.g+(-0.3)+node_4470.b),0,1)*(-1.0))+node_1663.b+(((node_5933/2.0)*node_5933)-node_2658))*i.uv0.g*(1.0 - i.uv0.g)*3.0*node_3174))),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
