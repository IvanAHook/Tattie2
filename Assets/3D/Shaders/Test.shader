// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9223,x:32719,y:32712,varname:node_9223,prsc:2|diff-9736-OUT,spec-6953-OUT,normal-6524-OUT;n:type:ShaderForge.SFN_Tex2d,id:6121,x:31588,y:33269,ptovrint:False,ptlb:Grass,ptin:_Grass,varname:_Grass,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:6303,x:30862,y:32980,varname:node_6303,prsc:2;n:type:ShaderForge.SFN_ChannelBlend,id:9736,x:32042,y:32965,varname:node_9736,prsc:2,chbt:1|M-6303-RGB,R-4843-RGB,G-8793-OUT,B-5404-RGB,BTM-6121-RGB;n:type:ShaderForge.SFN_Tex2d,id:4843,x:31176,y:32474,ptovrint:False,ptlb:T_Dirt,ptin:_T_Dirt,varname:_T_Dirt,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ChannelBlend,id:2079,x:32146,y:33407,varname:node_2079,prsc:2,chbt:1|M-6303-RGB,R-9818-RGB,G-9452-OUT,B-2429-RGB,BTM-9683-RGB;n:type:ShaderForge.SFN_Tex2d,id:5404,x:31588,y:33035,ptovrint:False,ptlb:T_G&S,ptin:_T_GS,varname:_T_GS,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Normalize,id:6524,x:32384,y:33188,varname:node_6524,prsc:2|IN-2079-OUT;n:type:ShaderForge.SFN_Tex2d,id:9683,x:31652,y:34149,ptovrint:False,ptlb:N_Grass,ptin:_N_Grass,varname:_N_Grass,prsc:2,tex:f0ec40764219f3f4787df1c70bacf45b,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9818,x:31573,y:33799,ptovrint:False,ptlb:N_Dirt,ptin:_N_Dirt,varname:_N_Dirt,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:2429,x:31389,y:33598,ptovrint:False,ptlb:N_G&S,ptin:_N_GS,varname:_N_GS,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:460,x:29401,y:33169,varname:node_3314,prsc:2,ntxv:3,isnm:True|UVIN-5776-UVOUT,TEX-3649-TEX;n:type:ShaderForge.SFN_Color,id:9680,x:29872,y:32230,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:7925,x:29432,y:32991,ptovrint:False,ptlb:Spec,ptin:_Spec,varname:_Spec,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:5776,x:29160,y:33116,varname:node_5776,prsc:2,spu:0.02,spv:0|UVIN-4516-UVOUT;n:type:ShaderForge.SFN_Slider,id:9688,x:28630,y:33120,ptovrint:False,ptlb:Speed1,ptin:_Speed1,varname:_Speed1,prsc:2,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Time,id:599,x:28382,y:33250,varname:node_599,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6532,x:28997,y:33240,varname:node_6532,prsc:2|A-9688-OUT,B-599-T;n:type:ShaderForge.SFN_Tex2dAsset,id:3649,x:29200,y:33348,ptovrint:False,ptlb:Wave,ptin:_Wave,varname:_Wave,glob:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9989,x:29441,y:33397,varname:node_6833,prsc:2,ntxv:0,isnm:False|UVIN-6184-UVOUT,TEX-3649-TEX;n:type:ShaderForge.SFN_Slider,id:2554,x:28589,y:33564,ptovrint:False,ptlb:Speed2,ptin:_Speed2,varname:_Speed2,prsc:2,min:-1,cur:-0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:5170,x:28977,y:33579,varname:node_5170,prsc:2|A-599-T,B-2554-OUT;n:type:ShaderForge.SFN_Panner,id:6184,x:29167,y:33554,varname:node_6184,prsc:2,spu:0,spv:1|DIST-5170-OUT;n:type:ShaderForge.SFN_NormalBlend,id:9452,x:29620,y:33191,varname:node_9452,prsc:2|BSE-460-RGB,DTL-9989-RGB;n:type:ShaderForge.SFN_Multiply,id:2906,x:28997,y:33434,varname:node_2906,prsc:2|A-4516-UVOUT,B-505-OUT;n:type:ShaderForge.SFN_TexCoord,id:4516,x:28644,y:33379,varname:node_4516,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:505,x:28667,y:33770,ptovrint:False,ptlb:Tiling2,ptin:_Tiling2,varname:_Tiling2,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Vector3,id:732,x:29426,y:33920,varname:node_732,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:5237,x:29875,y:33631,varname:node_5237,prsc:2|A-9989-G,B-732-OUT;n:type:ShaderForge.SFN_Multiply,id:3230,x:29426,y:33714,varname:node_3230,prsc:2|A-469-OUT,B-732-OUT,C-4011-OUT;n:type:ShaderForge.SFN_Tex2d,id:3298,x:28936,y:33770,varname:node_4182,prsc:2,ntxv:0,isnm:False|UVIN-6657-UVOUT,TEX-6331-TEX;n:type:ShaderForge.SFN_Slider,id:4011,x:29223,y:34083,ptovrint:False,ptlb:OffsetHeight,ptin:_OffsetHeight,varname:_OffsetHeight,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Panner,id:6657,x:28911,y:34009,varname:node_6657,prsc:2,spu:1,spv:1;n:type:ShaderForge.SFN_Slider,id:7716,x:28382,y:34048,ptovrint:False,ptlb:OffsetSpeed,ptin:_OffsetSpeed,varname:_OffsetSpeed,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2829,x:28743,y:33933,varname:node_2829,prsc:2|A-599-T,B-7716-OUT;n:type:ShaderForge.SFN_Subtract,id:469,x:29166,y:33819,varname:node_469,prsc:2|A-3298-B,B-3169-OUT;n:type:ShaderForge.SFN_Vector1,id:3169,x:29096,y:34009,varname:node_3169,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:1658,x:29176,y:32566,varname:node_9460,prsc:2,ntxv:0,isnm:False|UVIN-4798-UVOUT,TEX-6331-TEX;n:type:ShaderForge.SFN_Color,id:8295,x:29761,y:32633,ptovrint:False,ptlb:FoamColor,ptin:_FoamColor,varname:_FoamColor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:8793,x:30048,y:32566,varname:node_8793,prsc:2|A-9680-RGB,B-8295-RGB,T-6829-OUT;n:type:ShaderForge.SFN_Multiply,id:696,x:29720,y:32985,varname:node_696,prsc:2|A-5619-OUT,B-7925-RGB;n:type:ShaderForge.SFN_OneMinus,id:5619,x:29592,y:32818,varname:node_5619,prsc:2|IN-1658-R;n:type:ShaderForge.SFN_Panner,id:4798,x:28917,y:32661,varname:node_4798,prsc:2,spu:0,spv:1;n:type:ShaderForge.SFN_Slider,id:2317,x:28148,y:32650,ptovrint:False,ptlb:FoamEdgeSpeed,ptin:_FoamEdgeSpeed,varname:_FoamEdgeSpeed,prsc:2,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:5736,x:28586,y:32688,varname:node_5736,prsc:2|A-2317-OUT,B-599-T;n:type:ShaderForge.SFN_Tex2dAsset,id:6331,x:28937,y:32425,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:_Foam,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9875,x:29162,y:32319,varname:node_2293,prsc:2,ntxv:0,isnm:False|UVIN-717-UVOUT,TEX-6331-TEX;n:type:ShaderForge.SFN_Slider,id:1945,x:28217,y:32342,ptovrint:False,ptlb:FoamCenterSpeed,ptin:_FoamCenterSpeed,varname:_FoamCenterSpeed,prsc:2,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:2867,x:28651,y:32286,varname:node_2867,prsc:2|A-1945-OUT,B-599-T;n:type:ShaderForge.SFN_Panner,id:717,x:28926,y:32112,varname:node_717,prsc:2,spu:0,spv:0.6|DIST-2867-OUT;n:type:ShaderForge.SFN_Multiply,id:3985,x:29466,y:32270,varname:node_3985,prsc:2|A-1870-OUT,B-9875-G,C-6545-OUT;n:type:ShaderForge.SFN_OneMinus,id:1870,x:29275,y:32147,varname:node_1870,prsc:2|IN-9875-R;n:type:ShaderForge.SFN_Multiply,id:6943,x:29614,y:32566,varname:node_6943,prsc:2|A-1658-R,B-1658-G,C-6122-OUT,D-2044-G;n:type:ShaderForge.SFN_Add,id:7455,x:29701,y:32381,varname:node_7455,prsc:2|A-3985-OUT,B-6943-OUT;n:type:ShaderForge.SFN_Clamp01,id:6829,x:29882,y:32439,varname:node_6829,prsc:2|IN-7455-OUT;n:type:ShaderForge.SFN_Slider,id:6122,x:29297,y:32678,ptovrint:False,ptlb:EdgeFoam,ptin:_EdgeFoam,varname:_EdgeFoam,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6545,x:29428,y:32113,ptovrint:False,ptlb:CenterFoam,ptin:_CenterFoam,varname:_CenterFoam,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:8892,x:30397,y:32413,varname:node_8892,prsc:2|IN-5505-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5505,x:30216,y:32413,varname:node_5505,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8793-OUT;n:type:ShaderForge.SFN_Tex2d,id:2044,x:29185,y:32853,ptovrint:False,ptlb:FoamMask,ptin:_FoamMask,varname:_FoamMask,prsc:2,ntxv:0,isnm:False|UVIN-1539-UVOUT;n:type:ShaderForge.SFN_Panner,id:1539,x:28987,y:32874,varname:node_1539,prsc:2,spu:1,spv:0;n:type:ShaderForge.SFN_Slider,id:3009,x:28323,y:32934,ptovrint:False,ptlb:FoamMaskSpeed,ptin:_FoamMaskSpeed,varname:_FoamMaskSpeed,prsc:2,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3052,x:28846,y:32941,varname:node_3052,prsc:2|A-599-T,B-3009-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:6953,x:32333,y:32721,varname:node_6953,prsc:2,chbt:1|M-6303-RGB,R-9429-OUT,G-8892-OUT,B-533-OUT,BTM-533-OUT;n:type:ShaderForge.SFN_Vector1,id:9429,x:32058,y:32646,varname:node_9429,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8053,x:32058,y:32699,varname:node_8053,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:533,x:31955,y:32796,varname:node_533,prsc:2,v1:0;proporder:9680-8295-6331-1945-6122-6545-2044-6121-4843-5404-9683-9818-2429-3649-2554;pass:END;sub:END;*/

Shader "Shader Forge/Test" {
    Properties {
        _Diffuse ("Diffuse", Color) = (0.5,0.5,0.5,1)
        _FoamColor ("FoamColor", Color) = (0.5,0.5,0.5,1)
        _Foam ("Foam", 2D) = "white" {}
        _FoamCenterSpeed ("FoamCenterSpeed", Range(-1, 1)) = 0.2
        _EdgeFoam ("EdgeFoam", Range(0, 1)) = 0
        _CenterFoam ("CenterFoam", Range(0, 1)) = 1
        _FoamMask ("FoamMask", 2D) = "white" {}
        _Grass ("Grass", 2D) = "white" {}
        _T_Dirt ("T_Dirt", 2D) = "white" {}
        _T_GS ("T_G&S", 2D) = "white" {}
        _N_Grass ("N_Grass", 2D) = "bump" {}
        _N_Dirt ("N_Dirt", 2D) = "bump" {}
        _N_GS ("N_G&S", 2D) = "bump" {}
        _Wave ("Wave", 2D) = "bump" {}
        _Speed2 ("Speed2", Range(-1, 1)) = -0.2
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Grass; uniform float4 _Grass_ST;
            uniform sampler2D _T_Dirt; uniform float4 _T_Dirt_ST;
            uniform sampler2D _T_GS; uniform float4 _T_GS_ST;
            uniform sampler2D _N_Grass; uniform float4 _N_Grass_ST;
            uniform sampler2D _N_Dirt; uniform float4 _N_Dirt_ST;
            uniform sampler2D _N_GS; uniform float4 _N_GS_ST;
            uniform float4 _Diffuse;
            uniform sampler2D _Wave; uniform float4 _Wave_ST;
            uniform float _Speed2;
            uniform float4 _FoamColor;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamCenterSpeed;
            uniform float _EdgeFoam;
            uniform float _CenterFoam;
            uniform sampler2D _FoamMask; uniform float4 _FoamMask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _N_Grass_var = UnpackNormal(tex2D(_N_Grass,TRANSFORM_TEX(i.uv0, _N_Grass)));
                float3 _N_Dirt_var = UnpackNormal(tex2D(_N_Dirt,TRANSFORM_TEX(i.uv0, _N_Dirt)));
                float4 node_2252 = _Time + _TimeEditor;
                float2 node_5776 = (i.uv0+node_2252.g*float2(0.02,0));
                float3 node_3314 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_5776, _Wave)));
                float4 node_599 = _Time + _TimeEditor;
                float2 node_6184 = (i.uv0+(node_599.g*_Speed2)*float2(0,1));
                float3 node_6833 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_6184, _Wave)));
                float3 node_9452_nrm_base = node_3314.rgb + float3(0,0,1);
                float3 node_9452_nrm_detail = node_6833.rgb * float3(-1,-1,1);
                float3 node_9452_nrm_combined = node_9452_nrm_base*dot(node_9452_nrm_base, node_9452_nrm_detail)/node_9452_nrm_base.z - node_9452_nrm_detail;
                float3 node_9452 = node_9452_nrm_combined;
                float3 _N_GS_var = UnpackNormal(tex2D(_N_GS,TRANSFORM_TEX(i.uv0, _N_GS)));
                float3 normalLocal = normalize((lerp( lerp( lerp( _N_Grass_var.rgb, _N_Dirt_var.rgb, i.vertexColor.rgb.r ), node_9452, i.vertexColor.rgb.g ), _N_GS_var.rgb, i.vertexColor.rgb.b )));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_533 = 0.0;
                float2 node_717 = (i.uv0+(_FoamCenterSpeed*node_599.g)*float2(0,0.6));
                float4 node_2293 = tex2D(_Foam,TRANSFORM_TEX(node_717, _Foam));
                float2 node_4798 = (i.uv0+node_2252.g*float2(0,1));
                float4 node_9460 = tex2D(_Foam,TRANSFORM_TEX(node_4798, _Foam));
                float2 node_1539 = (i.uv0+node_2252.g*float2(1,0));
                float4 _FoamMask_var = tex2D(_FoamMask,TRANSFORM_TEX(node_1539, _FoamMask));
                float3 node_8793 = lerp(_Diffuse.rgb,_FoamColor.rgb,saturate((((1.0 - node_2293.r)*node_2293.g*_CenterFoam)+(node_9460.r*node_9460.g*_EdgeFoam*_FoamMask_var.g))));
                float node_6953 = (lerp( lerp( lerp( node_533, 0.0, i.vertexColor.rgb.r ), (1.0 - node_8793.g), i.vertexColor.rgb.g ), node_533, i.vertexColor.rgb.b ));
                float3 specularColor = float3(node_6953,node_6953,node_6953);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Grass_var = tex2D(_Grass,TRANSFORM_TEX(i.uv0, _Grass));
                float4 _T_Dirt_var = tex2D(_T_Dirt,TRANSFORM_TEX(i.uv0, _T_Dirt));
                float4 _T_GS_var = tex2D(_T_GS,TRANSFORM_TEX(i.uv0, _T_GS));
                float3 diffuseColor = (lerp( lerp( lerp( _Grass_var.rgb, _T_Dirt_var.rgb, i.vertexColor.rgb.r ), node_8793, i.vertexColor.rgb.g ), _T_GS_var.rgb, i.vertexColor.rgb.b ));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Grass; uniform float4 _Grass_ST;
            uniform sampler2D _T_Dirt; uniform float4 _T_Dirt_ST;
            uniform sampler2D _T_GS; uniform float4 _T_GS_ST;
            uniform sampler2D _N_Grass; uniform float4 _N_Grass_ST;
            uniform sampler2D _N_Dirt; uniform float4 _N_Dirt_ST;
            uniform sampler2D _N_GS; uniform float4 _N_GS_ST;
            uniform float4 _Diffuse;
            uniform sampler2D _Wave; uniform float4 _Wave_ST;
            uniform float _Speed2;
            uniform float4 _FoamColor;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamCenterSpeed;
            uniform float _EdgeFoam;
            uniform float _CenterFoam;
            uniform sampler2D _FoamMask; uniform float4 _FoamMask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _N_Grass_var = UnpackNormal(tex2D(_N_Grass,TRANSFORM_TEX(i.uv0, _N_Grass)));
                float3 _N_Dirt_var = UnpackNormal(tex2D(_N_Dirt,TRANSFORM_TEX(i.uv0, _N_Dirt)));
                float4 node_9246 = _Time + _TimeEditor;
                float2 node_5776 = (i.uv0+node_9246.g*float2(0.02,0));
                float3 node_3314 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_5776, _Wave)));
                float4 node_599 = _Time + _TimeEditor;
                float2 node_6184 = (i.uv0+(node_599.g*_Speed2)*float2(0,1));
                float3 node_6833 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_6184, _Wave)));
                float3 node_9452_nrm_base = node_3314.rgb + float3(0,0,1);
                float3 node_9452_nrm_detail = node_6833.rgb * float3(-1,-1,1);
                float3 node_9452_nrm_combined = node_9452_nrm_base*dot(node_9452_nrm_base, node_9452_nrm_detail)/node_9452_nrm_base.z - node_9452_nrm_detail;
                float3 node_9452 = node_9452_nrm_combined;
                float3 _N_GS_var = UnpackNormal(tex2D(_N_GS,TRANSFORM_TEX(i.uv0, _N_GS)));
                float3 normalLocal = normalize((lerp( lerp( lerp( _N_Grass_var.rgb, _N_Dirt_var.rgb, i.vertexColor.rgb.r ), node_9452, i.vertexColor.rgb.g ), _N_GS_var.rgb, i.vertexColor.rgb.b )));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_533 = 0.0;
                float2 node_717 = (i.uv0+(_FoamCenterSpeed*node_599.g)*float2(0,0.6));
                float4 node_2293 = tex2D(_Foam,TRANSFORM_TEX(node_717, _Foam));
                float2 node_4798 = (i.uv0+node_9246.g*float2(0,1));
                float4 node_9460 = tex2D(_Foam,TRANSFORM_TEX(node_4798, _Foam));
                float2 node_1539 = (i.uv0+node_9246.g*float2(1,0));
                float4 _FoamMask_var = tex2D(_FoamMask,TRANSFORM_TEX(node_1539, _FoamMask));
                float3 node_8793 = lerp(_Diffuse.rgb,_FoamColor.rgb,saturate((((1.0 - node_2293.r)*node_2293.g*_CenterFoam)+(node_9460.r*node_9460.g*_EdgeFoam*_FoamMask_var.g))));
                float node_6953 = (lerp( lerp( lerp( node_533, 0.0, i.vertexColor.rgb.r ), (1.0 - node_8793.g), i.vertexColor.rgb.g ), node_533, i.vertexColor.rgb.b ));
                float3 specularColor = float3(node_6953,node_6953,node_6953);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Grass_var = tex2D(_Grass,TRANSFORM_TEX(i.uv0, _Grass));
                float4 _T_Dirt_var = tex2D(_T_Dirt,TRANSFORM_TEX(i.uv0, _T_Dirt));
                float4 _T_GS_var = tex2D(_T_GS,TRANSFORM_TEX(i.uv0, _T_GS));
                float3 diffuseColor = (lerp( lerp( lerp( _Grass_var.rgb, _T_Dirt_var.rgb, i.vertexColor.rgb.r ), node_8793, i.vertexColor.rgb.g ), _T_GS_var.rgb, i.vertexColor.rgb.b ));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
