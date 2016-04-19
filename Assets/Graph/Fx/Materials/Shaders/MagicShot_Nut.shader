// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4667,x:32991,y:32674,varname:node_4667,prsc:2|emission-3398-OUT;n:type:ShaderForge.SFN_Fresnel,id:1497,x:31974,y:32741,varname:node_1497,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5776,x:32349,y:32758,varname:node_5776,prsc:2|A-1510-RGB,B-2006-OUT;n:type:ShaderForge.SFN_Color,id:1510,x:32103,y:32539,ptovrint:False,ptlb:Tint&Strength,ptin:_TintStrength,varname:node_1510,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9411765,c2:0.5397924,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:9549,x:32476,y:32769,varname:node_9549,prsc:2|A-5776-OUT,B-1510-A,C-2325-OUT;n:type:ShaderForge.SFN_Tex2d,id:5467,x:32169,y:33040,varname:node_5467,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-922-OUT,TEX-1816-TEX;n:type:ShaderForge.SFN_Tex2d,id:354,x:32169,y:33224,varname:_Clouds_copy,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4518-OUT,TEX-1816-TEX;n:type:ShaderForge.SFN_Time,id:4410,x:31406,y:33079,varname:node_4410,prsc:2;n:type:ShaderForge.SFN_Multiply,id:241,x:31629,y:33079,varname:node_241,prsc:2|A-4410-T,B-153-OUT;n:type:ShaderForge.SFN_ValueProperty,id:153,x:31279,y:33241,ptovrint:False,ptlb:PannerSpeed,ptin:_PannerSpeed,varname:node_153,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_FragmentPosition,id:7733,x:30767,y:32625,varname:node_7733,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:8930,x:31410,y:32629,varname:node_8930,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-2917-OUT;n:type:ShaderForge.SFN_Add,id:922,x:31932,y:33040,varname:node_922,prsc:2|A-9935-OUT,B-241-OUT;n:type:ShaderForge.SFN_Multiply,id:7337,x:31677,y:33259,varname:node_7337,prsc:2|A-4410-TDB,B-153-OUT,C-3729-OUT;n:type:ShaderForge.SFN_Vector1,id:3729,x:31438,y:33293,varname:node_3729,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:4518,x:31957,y:33224,varname:node_4518,prsc:2|A-9935-OUT,B-7337-OUT;n:type:ShaderForge.SFN_Add,id:2325,x:32368,y:32985,varname:node_2325,prsc:2|A-5467-RGB,B-354-RGB;n:type:ShaderForge.SFN_Multiply,id:2917,x:31261,y:32689,varname:node_2917,prsc:2|A-3392-OUT,B-7870-OUT;n:type:ShaderForge.SFN_Lerp,id:9935,x:31665,y:32891,varname:node_9935,prsc:2|A-8930-OUT,B-6726-OUT,T-1707-OUT;n:type:ShaderForge.SFN_NormalVector,id:2488,x:30498,y:32890,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:6726,x:31410,y:32788,varname:node_6726,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-2917-OUT;n:type:ShaderForge.SFN_OneMinus,id:2006,x:32180,y:32741,varname:node_2006,prsc:2|IN-1497-OUT;n:type:ShaderForge.SFN_Add,id:3398,x:32697,y:32715,varname:node_3398,prsc:2|A-1497-OUT,B-9549-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7870,x:31063,y:32723,ptovrint:False,ptlb:UVScale,ptin:_UVScale,varname:node_7870,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:1816,x:31903,y:33411,ptovrint:False,ptlb:Cloud,ptin:_Cloud,varname:node_1816,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Normalize,id:9304,x:30662,y:32890,varname:node_9304,prsc:2|IN-2488-OUT;n:type:ShaderForge.SFN_Dot,id:1707,x:31031,y:32948,varname:node_1707,prsc:2,dt:0|A-9304-OUT,B-6997-OUT;n:type:ShaderForge.SFN_Vector3,id:6997,x:30830,y:32976,varname:node_6997,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Normalize,id:3392,x:30944,y:32625,varname:node_3392,prsc:2|IN-7733-XYZ;n:type:ShaderForge.SFN_TexCoord,id:5030,x:31540,y:32406,varname:node_5030,prsc:2,uv:0;proporder:1510-7870-153-1816;pass:END;sub:END;*/

Shader "L35/MagicShot_Nut" {
    Properties {
        _TintStrength ("Tint&Strength", Color) = (0.9411765,0.5397924,0,1)
        _UVScale ("UVScale", Float ) = 1
        _PannerSpeed ("PannerSpeed", Float ) = 1
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
            uniform float4 _TintStrength;
            uniform float _PannerSpeed;
            uniform float _UVScale;
            uniform sampler2D _Cloud; uniform float4 _Cloud_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_1497 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float3 node_2917 = (normalize(i.posWorld.rgb)*_UVScale);
                float2 node_9935 = lerp(node_2917.rb,node_2917.rb,dot(normalize(i.normalDir),float3(0,0,1)));
                float4 node_4410 = _Time + _TimeEditor;
                float2 node_922 = (node_9935+(node_4410.g*_PannerSpeed));
                float4 node_5467 = tex2D(_Cloud,node_922);
                float2 node_4518 = (node_9935+(node_4410.b*_PannerSpeed*(-1.0)));
                float4 _Clouds_copy = tex2D(_Cloud,node_4518);
                float3 emissive = (node_1497+((_TintStrength.rgb*(1.0 - node_1497))*_TintStrength.a*(node_5467.rgb+_Clouds_copy.rgb)));
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
