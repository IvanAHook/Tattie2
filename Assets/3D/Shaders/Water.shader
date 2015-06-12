// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9558824,fgcg:0.5693123,fgcb:0.9292224,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7771,x:33564,y:32344,varname:node_7771,prsc:2|diff-6613-OUT,spec-4669-OUT,normal-7789-OUT,voffset-3085-OUT;n:type:ShaderForge.SFN_Tex2d,id:3314,x:32618,y:32858,varname:node_3314,prsc:2,ntxv:3,isnm:True|UVIN-7836-UVOUT,TEX-1959-TEX;n:type:ShaderForge.SFN_Color,id:440,x:33089,y:31919,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:6679,x:32649,y:32680,ptovrint:False,ptlb:Spec,ptin:_Spec,varname:_Spec,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Panner,id:7836,x:32377,y:32805,varname:node_7836,prsc:2,spu:0.1,spv:1|UVIN-4571-UVOUT,DIST-4288-OUT;n:type:ShaderForge.SFN_Slider,id:4078,x:31847,y:32809,ptovrint:False,ptlb:Speed1,ptin:_Speed1,varname:_Speed1,prsc:2,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Time,id:9153,x:31938,y:32925,varname:node_9153,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4288,x:32214,y:32929,varname:node_4288,prsc:2|A-4078-OUT,B-9153-T;n:type:ShaderForge.SFN_Tex2dAsset,id:1959,x:32417,y:33037,ptovrint:False,ptlb:Wave,ptin:_Wave,varname:_Wave,glob:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6833,x:32658,y:33086,varname:node_6833,prsc:2,ntxv:0,isnm:False|UVIN-5010-UVOUT,TEX-1959-TEX;n:type:ShaderForge.SFN_Slider,id:2451,x:31806,y:33253,ptovrint:False,ptlb:Speed2,ptin:_Speed2,varname:_Speed2,prsc:2,min:-1,cur:-0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:4932,x:32194,y:33268,varname:node_4932,prsc:2|A-9153-T,B-2451-OUT;n:type:ShaderForge.SFN_Panner,id:5010,x:32384,y:33243,varname:node_5010,prsc:2,spu:0.1,spv:1|UVIN-8029-OUT,DIST-4932-OUT;n:type:ShaderForge.SFN_NormalBlend,id:7789,x:32837,y:32880,varname:node_7789,prsc:2|BSE-3314-RGB,DTL-6833-RGB;n:type:ShaderForge.SFN_Multiply,id:8029,x:32214,y:33123,varname:node_8029,prsc:2|A-4571-UVOUT,B-340-OUT;n:type:ShaderForge.SFN_TexCoord,id:4571,x:31892,y:33081,varname:node_4571,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:340,x:31884,y:33459,ptovrint:False,ptlb:Tiling2,ptin:_Tiling2,varname:_Tiling2,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Vector3,id:8144,x:32643,y:33609,varname:node_8144,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:8349,x:33092,y:33320,varname:node_8349,prsc:2|A-6833-G,B-8144-OUT;n:type:ShaderForge.SFN_Multiply,id:3085,x:32643,y:33403,varname:node_3085,prsc:2|A-7910-OUT,B-8144-OUT,C-354-OUT;n:type:ShaderForge.SFN_Tex2d,id:4182,x:32153,y:33459,varname:node_4182,prsc:2,ntxv:0,isnm:False|UVIN-8626-UVOUT,TEX-2860-TEX;n:type:ShaderForge.SFN_Slider,id:354,x:32440,y:33772,ptovrint:False,ptlb:OffsetHeight,ptin:_OffsetHeight,varname:_OffsetHeight,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Panner,id:8626,x:32128,y:33698,varname:node_8626,prsc:2,spu:1,spv:1|DIST-8202-OUT;n:type:ShaderForge.SFN_Slider,id:526,x:31599,y:33737,ptovrint:False,ptlb:OffsetSpeed,ptin:_OffsetSpeed,varname:_OffsetSpeed,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8202,x:31960,y:33622,varname:node_8202,prsc:2|A-9153-T,B-526-OUT;n:type:ShaderForge.SFN_Subtract,id:7910,x:32383,y:33508,varname:node_7910,prsc:2|A-4182-B,B-1277-OUT;n:type:ShaderForge.SFN_Vector1,id:1277,x:32313,y:33698,varname:node_1277,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:9460,x:32393,y:32255,varname:node_9460,prsc:2,ntxv:0,isnm:False|UVIN-1033-UVOUT,TEX-2860-TEX;n:type:ShaderForge.SFN_Color,id:9846,x:32978,y:32322,ptovrint:False,ptlb:FoamColor,ptin:_FoamColor,varname:_FoamColor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:6613,x:33265,y:32255,varname:node_6613,prsc:2|A-440-RGB,B-9846-RGB,T-2-OUT;n:type:ShaderForge.SFN_Multiply,id:5021,x:32937,y:32674,varname:node_5021,prsc:2|A-34-OUT,B-6679-RGB;n:type:ShaderForge.SFN_OneMinus,id:34,x:32809,y:32507,varname:node_34,prsc:2|IN-9460-R;n:type:ShaderForge.SFN_Panner,id:1033,x:32134,y:32350,varname:node_1033,prsc:2,spu:0,spv:1|DIST-2430-OUT;n:type:ShaderForge.SFN_Slider,id:4153,x:31663,y:32241,ptovrint:False,ptlb:FoamEdgeSpeed,ptin:_FoamEdgeSpeed,varname:_FoamEdgeSpeed,prsc:2,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:2430,x:31962,y:32488,varname:node_2430,prsc:2|A-4153-OUT,B-9153-T;n:type:ShaderForge.SFN_Tex2dAsset,id:2860,x:32154,y:32114,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:_Foam,glob:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2293,x:32393,y:32005,varname:node_2293,prsc:2,ntxv:0,isnm:False|UVIN-6720-UVOUT,TEX-2860-TEX;n:type:ShaderForge.SFN_Slider,id:5480,x:31663,y:32093,ptovrint:False,ptlb:FoamCenterSpeed,ptin:_FoamCenterSpeed,varname:_FoamCenterSpeed,prsc:2,min:-1,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:6139,x:32013,y:31992,varname:node_6139,prsc:2|A-5480-OUT,B-9153-T;n:type:ShaderForge.SFN_Panner,id:6720,x:32195,y:31904,varname:node_6720,prsc:2,spu:0,spv:1|DIST-6139-OUT;n:type:ShaderForge.SFN_Multiply,id:4396,x:32683,y:31959,varname:node_4396,prsc:2|A-8530-OUT,B-2293-G,C-1242-OUT;n:type:ShaderForge.SFN_OneMinus,id:8530,x:32492,y:31836,varname:node_8530,prsc:2|IN-2293-R;n:type:ShaderForge.SFN_Multiply,id:4233,x:32683,y:32165,varname:node_4233,prsc:2|A-9460-R,B-9460-G,C-6896-OUT,D-7260-G;n:type:ShaderForge.SFN_Add,id:9886,x:32918,y:32070,varname:node_9886,prsc:2|A-4396-OUT,B-4233-OUT;n:type:ShaderForge.SFN_Clamp01,id:2,x:33099,y:32128,varname:node_2,prsc:2|IN-9886-OUT;n:type:ShaderForge.SFN_Slider,id:6896,x:32514,y:32367,ptovrint:False,ptlb:EdgeFoam,ptin:_EdgeFoam,varname:_EdgeFoam,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1242,x:32645,y:31802,ptovrint:False,ptlb:CenterFoam,ptin:_CenterFoam,varname:_CenterFoam,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:4669,x:33614,y:32102,varname:node_4669,prsc:2|IN-6073-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6073,x:33433,y:32102,varname:node_6073,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6613-OUT;n:type:ShaderForge.SFN_Tex2d,id:7260,x:32349,y:32419,ptovrint:False,ptlb:FoamMask,ptin:_FoamMask,varname:_FoamMask,prsc:2,ntxv:0,isnm:False|UVIN-707-UVOUT;n:type:ShaderForge.SFN_Panner,id:707,x:32204,y:32563,varname:node_707,prsc:2,spu:1,spv:1|DIST-9963-OUT;n:type:ShaderForge.SFN_Slider,id:7358,x:31748,y:32688,ptovrint:False,ptlb:FoamMaskSpeed,ptin:_FoamMaskSpeed,varname:_FoamMaskSpeed,prsc:2,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9963,x:32063,y:32630,varname:node_9963,prsc:2|A-9153-T,B-7358-OUT;proporder:6679-440-4078-1959-2451-340-354-526-9846-4153-2860-5480-6896-1242-7260-7358;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _Spec ("Spec", Color) = (0.5,0.5,0.5,1)
        _Diffuse ("Diffuse", Color) = (0.5,0.5,0.5,1)
        _Speed1 ("Speed1", Range(-1, 1)) = 0.2
        _Wave ("Wave", 2D) = "bump" {}
        _Speed2 ("Speed2", Range(-1, 1)) = -0.2
        _Tiling2 ("Tiling2", Float ) = 0
        _OffsetHeight ("OffsetHeight", Range(0, 1)) = 0
        _OffsetSpeed ("OffsetSpeed", Range(0, 1)) = 0
        _FoamColor ("FoamColor", Color) = (0.5,0.5,0.5,1)
        _FoamEdgeSpeed ("FoamEdgeSpeed", Range(-1, 1)) = 0.2
        _Foam ("Foam", 2D) = "white" {}
        _FoamCenterSpeed ("FoamCenterSpeed", Range(-1, 1)) = 0.2
        _EdgeFoam ("EdgeFoam", Range(0, 1)) = 0
        _CenterFoam ("CenterFoam", Range(0, 1)) = 1
        _FoamMask ("FoamMask", 2D) = "white" {}
        _FoamMaskSpeed ("FoamMaskSpeed", Range(-1, 1)) = 0
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
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Diffuse;
            uniform float _Speed1;
            uniform sampler2D _Wave; uniform float4 _Wave_ST;
            uniform float _Speed2;
            uniform float _Tiling2;
            uniform float _OffsetHeight;
            uniform float _OffsetSpeed;
            uniform float4 _FoamColor;
            uniform float _FoamEdgeSpeed;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamCenterSpeed;
            uniform float _EdgeFoam;
            uniform float _CenterFoam;
            uniform sampler2D _FoamMask; uniform float4 _FoamMask_ST;
            uniform float _FoamMaskSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_9153 = _Time + _TimeEditor;
                float2 node_8626 = (o.uv0+(node_9153.g*_OffsetSpeed)*float2(1,1));
                float4 node_4182 = tex2Dlod(_Foam,float4(TRANSFORM_TEX(node_8626, _Foam),0.0,0));
                float3 node_8144 = float3(0,1,0);
                v.vertex.xyz += ((node_4182.b-0.5)*node_8144*_OffsetHeight);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9153 = _Time + _TimeEditor;
                float2 node_7836 = (i.uv0+(_Speed1*node_9153.g)*float2(0.1,1));
                float3 node_3314 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_7836, _Wave)));
                float2 node_5010 = ((i.uv0*_Tiling2)+(node_9153.g*_Speed2)*float2(0.1,1));
                float4 node_6833 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_5010, _Wave)));
                float3 node_7789_nrm_base = node_3314.rgb + float3(0,0,1);
                float3 node_7789_nrm_detail = node_6833.rgb * float3(-1,-1,1);
                float3 node_7789_nrm_combined = node_7789_nrm_base*dot(node_7789_nrm_base, node_7789_nrm_detail)/node_7789_nrm_base.z - node_7789_nrm_detail;
                float3 node_7789 = node_7789_nrm_combined;
                float3 normalLocal = node_7789;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float2 node_6720 = (i.uv0+(_FoamCenterSpeed*node_9153.g)*float2(0,1));
                float4 node_2293 = tex2D(_Foam,TRANSFORM_TEX(node_6720, _Foam));
                float2 node_1033 = (i.uv0+(_FoamEdgeSpeed*node_9153.g)*float2(0,1));
                float4 node_9460 = tex2D(_Foam,TRANSFORM_TEX(node_1033, _Foam));
                float2 node_707 = (i.uv0+(node_9153.g*_FoamMaskSpeed)*float2(1,1));
                float4 _FoamMask_var = tex2D(_FoamMask,TRANSFORM_TEX(node_707, _FoamMask));
                float3 node_6613 = lerp(_Diffuse.rgb,_FoamColor.rgb,saturate((((1.0 - node_2293.r)*node_2293.g*_CenterFoam)+(node_9460.r*node_9460.g*_EdgeFoam*_FoamMask_var.g))));
                float node_4669 = (1.0 - node_6613.g);
                float3 specularColor = float3(node_4669,node_4669,node_4669);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = node_6613;
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _Diffuse;
            uniform float _Speed1;
            uniform sampler2D _Wave; uniform float4 _Wave_ST;
            uniform float _Speed2;
            uniform float _Tiling2;
            uniform float _OffsetHeight;
            uniform float _OffsetSpeed;
            uniform float4 _FoamColor;
            uniform float _FoamEdgeSpeed;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamCenterSpeed;
            uniform float _EdgeFoam;
            uniform float _CenterFoam;
            uniform sampler2D _FoamMask; uniform float4 _FoamMask_ST;
            uniform float _FoamMaskSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_9153 = _Time + _TimeEditor;
                float2 node_8626 = (o.uv0+(node_9153.g*_OffsetSpeed)*float2(1,1));
                float4 node_4182 = tex2Dlod(_Foam,float4(TRANSFORM_TEX(node_8626, _Foam),0.0,0));
                float3 node_8144 = float3(0,1,0);
                v.vertex.xyz += ((node_4182.b-0.5)*node_8144*_OffsetHeight);
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
                float4 node_9153 = _Time + _TimeEditor;
                float2 node_7836 = (i.uv0+(_Speed1*node_9153.g)*float2(0.1,1));
                float3 node_3314 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_7836, _Wave)));
                float2 node_5010 = ((i.uv0*_Tiling2)+(node_9153.g*_Speed2)*float2(0.1,1));
                float3 node_6833 = UnpackNormal(tex2D(_Wave,TRANSFORM_TEX(node_5010, _Wave)));
                float3 node_7789_nrm_base = node_3314.rgb + float3(0,0,1);
                float3 node_7789_nrm_detail = node_6833.rgb * float3(-1,-1,1);
                float3 node_7789_nrm_combined = node_7789_nrm_base*dot(node_7789_nrm_base, node_7789_nrm_detail)/node_7789_nrm_base.z - node_7789_nrm_detail;
                float3 node_7789 = node_7789_nrm_combined;
                float3 normalLocal = node_7789;
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
                float2 node_6720 = (i.uv0+(_FoamCenterSpeed*node_9153.g)*float2(0,1));
                float4 node_2293 = tex2D(_Foam,TRANSFORM_TEX(node_6720, _Foam));
                float2 node_1033 = (i.uv0+(_FoamEdgeSpeed*node_9153.g)*float2(0,1));
                float4 node_9460 = tex2D(_Foam,TRANSFORM_TEX(node_1033, _Foam));
                float2 node_707 = (i.uv0+(node_9153.g*_FoamMaskSpeed)*float2(1,1));
                float4 _FoamMask_var = tex2D(_FoamMask,TRANSFORM_TEX(node_707, _FoamMask));
                float3 node_6613 = lerp(_Diffuse.rgb,_FoamColor.rgb,saturate((((1.0 - node_2293.r)*node_2293.g*_CenterFoam)+(node_9460.r*node_9460.g*_EdgeFoam*_FoamMask_var.g))));
                float node_4669 = (1.0 - node_6613.g);
                float3 specularColor = float3(node_4669,node_4669,node_4669);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = node_6613;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _OffsetHeight;
            uniform float _OffsetSpeed;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_9153 = _Time + _TimeEditor;
                float2 node_8626 = (o.uv0+(node_9153.g*_OffsetSpeed)*float2(1,1));
                float4 node_4182 = tex2Dlod(_Foam,float4(TRANSFORM_TEX(node_8626, _Foam),0.0,0));
                float3 node_8144 = float3(0,1,0);
                v.vertex.xyz += ((node_4182.b-0.5)*node_8144*_OffsetHeight);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
