// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:6900,x:36304,y:32388,varname:node_6900,prsc:2|emission-7840-OUT,alpha-7172-OUT;n:type:ShaderForge.SFN_Tex2d,id:1663,x:32262,y:32831,varname:node_1663,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-2578-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_TexCoord,id:5931,x:30713,y:32747,varname:node_5931,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:1250,x:31829,y:32907,varname:node_1250,prsc:2|A-3025-OUT,B-2119-OUT;n:type:ShaderForge.SFN_Panner,id:2578,x:32042,y:32907,varname:node_2578,prsc:2,spu:-1,spv:0|UVIN-1250-OUT;n:type:ShaderForge.SFN_Multiply,id:9386,x:31259,y:32647,varname:node_9386,prsc:2|A-5931-U,B-5931-U,C-5931-U;n:type:ShaderForge.SFN_Add,id:3025,x:31646,y:32747,varname:node_3025,prsc:2|A-9386-OUT,B-5931-U,C-2658-OUT;n:type:ShaderForge.SFN_Tex2d,id:6738,x:31802,y:32106,varname:_Cloud_copy,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-1889-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6427,x:31935,y:31871,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_6427,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Subtract,id:2118,x:31685,y:32546,varname:node_2118,prsc:2|A-7217-OUT,B-6738-R;n:type:ShaderForge.SFN_ConstantClamp,id:2658,x:31867,y:32546,varname:node_2658,prsc:2,min:0,max:0.8|IN-2118-OUT;n:type:ShaderForge.SFN_Multiply,id:1833,x:31416,y:32171,varname:node_1833,prsc:2|A-2664-OUT,B-5931-UVOUT;n:type:ShaderForge.SFN_Vector1,id:2664,x:31128,y:32098,varname:node_2664,prsc:2,v1:2;n:type:ShaderForge.SFN_Panner,id:1889,x:31609,y:32129,varname:node_1889,prsc:2,spu:1,spv:1|UVIN-1833-OUT;n:type:ShaderForge.SFN_Subtract,id:6557,x:33203,y:32785,varname:node_6557,prsc:2|A-4868-OUT,B-2658-OUT;n:type:ShaderForge.SFN_Multiply,id:7217,x:31450,y:32548,varname:node_7217,prsc:2|A-3467-OUT,B-9386-OUT;n:type:ShaderForge.SFN_Vector1,id:3467,x:31189,y:32582,varname:node_3467,prsc:2,v1:1.5;n:type:ShaderForge.SFN_ConstantClamp,id:4853,x:32487,y:32852,varname:node_4853,prsc:2,min:0,max:1|IN-1663-R;n:type:ShaderForge.SFN_Vector1,id:658,x:32872,y:33025,varname:node_658,prsc:2,v1:-0.3;n:type:ShaderForge.SFN_Multiply,id:4868,x:33010,y:32785,varname:node_4868,prsc:2|A-1395-OUT,B-1395-OUT;n:type:ShaderForge.SFN_Add,id:4586,x:33634,y:32914,varname:node_4586,prsc:2|A-6557-OUT,B-1663-B;n:type:ShaderForge.SFN_Multiply,id:2119,x:31583,y:32967,varname:node_2119,prsc:2|A-5931-V,B-5694-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5694,x:31322,y:33029,ptovrint:False,ptlb:Noise1_UVWidth,ptin:_Noise1_UVWidth,varname:node_5694,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Append,id:1222,x:31842,y:33063,varname:node_1222,prsc:2|A-3025-OUT,B-7127-OUT;n:type:ShaderForge.SFN_Panner,id:9779,x:32042,y:33063,varname:node_9779,prsc:2,spu:2,spv:0|UVIN-1222-OUT;n:type:ShaderForge.SFN_Add,id:5933,x:32663,y:32951,varname:node_5933,prsc:2|A-4853-OUT,B-4470-R;n:type:ShaderForge.SFN_Divide,id:1395,x:32860,y:33077,varname:node_1395,prsc:2|A-5933-OUT,B-2497-OUT;n:type:ShaderForge.SFN_Vector1,id:2497,x:32613,y:33130,varname:node_2497,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7127,x:31583,y:33169,varname:node_7127,prsc:2|A-5931-V,B-3801-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3801,x:31322,y:33215,ptovrint:False,ptlb:Noise2_UVWidth2,ptin:_Noise2_UVWidth2,varname:node_3801,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Tex2d,id:4470,x:32262,y:33042,varname:node_4470,prsc:2,tex:e64e5743790c01542b2166ab3fbcb2fb,ntxv:0,isnm:False|UVIN-9779-UVOUT,TEX-6427-TEX;n:type:ShaderForge.SFN_Tex2d,id:7191,x:34603,y:32516,varname:node_7191,prsc:2,tex:83ec7569b5d54024692b6d03d6e4bbd0,ntxv:0,isnm:False|TEX-556-TEX;n:type:ShaderForge.SFN_Color,id:6870,x:35964,y:32070,ptovrint:False,ptlb:DetailColor,ptin:_DetailColor,varname:node_6870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.748353,c3:0.256,c4:1;n:type:ShaderForge.SFN_Multiply,id:1480,x:34963,y:32832,varname:node_1480,prsc:2|A-7191-R,B-4586-OUT;n:type:ShaderForge.SFN_Add,id:6779,x:35456,y:32762,varname:node_6779,prsc:2|A-5146-OUT,B-1480-OUT,C-2591-OUT;n:type:ShaderForge.SFN_Add,id:7823,x:34852,y:32220,varname:node_7823,prsc:2|A-6987-OUT,B-7191-B;n:type:ShaderForge.SFN_Multiply,id:5146,x:34963,y:32718,varname:node_5146,prsc:2|A-7191-R,B-9598-OUT;n:type:ShaderForge.SFN_Vector1,id:9598,x:34816,y:32752,varname:node_9598,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2dAsset,id:556,x:34395,y:32541,ptovrint:False,ptlb:Claws,ptin:_Claws,varname:node_556,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:83ec7569b5d54024692b6d03d6e4bbd0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2591,x:35295,y:32308,varname:node_2591,prsc:2|A-7615-OUT,B-6987-OUT,C-7191-G,D-915-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7615,x:35045,y:32220,varname:node_7615,prsc:2,min:0,max:1.2|IN-7823-OUT;n:type:ShaderForge.SFN_Color,id:5556,x:35681,y:31850,ptovrint:False,ptlb:WavesColor,ptin:_WavesColor,varname:node_5556,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.566,c2:0.2379311,c3:0.2379311,c4:1;n:type:ShaderForge.SFN_Lerp,id:5493,x:35918,y:32366,varname:node_5493,prsc:2|A-5556-RGB,B-6609-RGB,T-7997-OUT;n:type:ShaderForge.SFN_Lerp,id:7840,x:36064,y:32507,varname:node_7840,prsc:2|A-5493-OUT,B-6870-RGB,T-2591-OUT;n:type:ShaderForge.SFN_Color,id:6609,x:35681,y:32022,ptovrint:False,ptlb:ClawColor,ptin:_ClawColor,varname:node_6609,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.762,c2:0.391,c3:0.166,c4:1;n:type:ShaderForge.SFN_RemapRange,id:7997,x:35493,y:32428,varname:node_7997,prsc:2,frmn:0.5,frmx:1,tomn:0,tomx:1|IN-7191-R;n:type:ShaderForge.SFN_Vector1,id:915,x:35034,y:32409,varname:node_915,prsc:2,v1:5;n:type:ShaderForge.SFN_Slider,id:6987,x:34318,y:32263,ptovrint:False,ptlb:AnimTime,ptin:_AnimTime,varname:node_6987,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:2488,x:35456,y:32932,varname:node_2488,prsc:2,frmn:0.5,frmx:1,tomn:1,tomx:-1|IN-6987-OUT;n:type:ShaderForge.SFN_Multiply,id:7172,x:35760,y:32732,varname:node_7172,prsc:2|A-6779-OUT,B-5984-OUT;n:type:ShaderForge.SFN_Add,id:5984,x:35617,y:32869,varname:node_5984,prsc:2|A-2488-OUT,B-7191-B;proporder:6427-556-6609-5556-6870-6987-5694-3801;pass:END;sub:END;*/

Shader "L35/FX_ClawTrail" {
    Properties {
        _Cloud ("Cloud", 2D) = "white" {}
        _Claws ("Claws", 2D) = "white" {}
        _ClawColor ("ClawColor", Color) = (0.762,0.391,0.166,1)
        _WavesColor ("WavesColor", Color) = (0.566,0.2379311,0.2379311,1)
        _DetailColor ("DetailColor", Color) = (1,0.748353,0.256,1)
        _AnimTime ("AnimTime", Range(0, 1)) = 0
        _Noise1_UVWidth ("Noise1_UVWidth", Float ) = 2
        _Noise2_UVWidth2 ("Noise2_UVWidth2", Float ) = 3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            uniform float4 _TimeEditor;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            uniform float _Noise1_UVWidth;
            uniform float _Noise2_UVWidth2;
            uniform float4 _DetailColor;
            uniform sampler2D _Claws; uniform float4 _Claws_ST;
            uniform float4 _WavesColor;
            uniform float4 _ClawColor;
            uniform float _AnimTime;
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
                float4 node_7191 = tex2D(_Claws,i.uv0);
                float node_2591 = (clamp((_AnimTime+node_7191.b),0,1.2)*_AnimTime*node_7191.g*5.0);
                float3 emissive = lerp(lerp(_WavesColor.rgb,_ClawColor.rgb,(node_7191.r*2.0+-1.0)),_DetailColor.rgb,node_2591);
                float3 finalColor = emissive;
                float4 node_2679 = _Time + _TimeEditor;
                float node_9386 = (i.uv0.r*i.uv0.r*i.uv0.r);
                float2 node_1889 = ((2.0*i.uv0)+node_2679.g*float2(1,1));
                float4 _Cloud_copy = tex2D(_Cloud,node_1889);
                float node_2658 = clamp(((1.5*node_9386)-_Cloud_copy.r),0,0.8);
                float node_3025 = (node_9386+i.uv0.r+node_2658);
                float2 node_2578 = (float2(node_3025,(i.uv0.g*_Noise1_UVWidth))+node_2679.g*float2(-1,0));
                float4 node_1663 = tex2D(_Cloud,node_2578);
                float2 node_9779 = (float2(node_3025,(i.uv0.g*_Noise2_UVWidth2))+node_2679.g*float2(2,0));
                float4 node_4470 = tex2D(_Cloud,node_9779);
                float node_1395 = ((clamp(node_1663.r,0,1)+node_4470.r)/2.0);
                fixed4 finalRGBA = fixed4(finalColor,(((node_7191.r*0.5)+(node_7191.r*(((node_1395*node_1395)-node_2658)+node_1663.b))+node_2591)*((_AnimTime*-4.0+3.0)+node_7191.b)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
