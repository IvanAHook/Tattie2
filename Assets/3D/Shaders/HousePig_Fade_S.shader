// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:3,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4010,x:32719,y:32712,varname:node_4010,prsc:2|diff-9701-OUT,normal-6391-OUT,clip-2480-OUT;n:type:ShaderForge.SFN_Slider,id:3738,x:32126,y:33563,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:_Opacity,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:4396,x:31812,y:33266,ptovrint:False,ptlb:node_4396,ptin:_node_4396,varname:_node_4396,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:4409,x:32204,y:33364,varname:node_4409,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-4396-R;n:type:ShaderForge.SFN_Add,id:2480,x:32562,y:33227,varname:node_2480,prsc:2|A-4409-OUT,B-8571-OUT;n:type:ShaderForge.SFN_RemapRange,id:8571,x:32533,y:33514,varname:node_8571,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1.5|IN-3738-OUT;n:type:ShaderForge.SFN_Tex2d,id:5612,x:31774,y:32963,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,tex:1cfac8d7cd391cd46b58fa8106209a54,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3765,x:30910,y:32214,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,tex:89caa4968bdd5354998e17e4fb186cb1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:6617,x:31012,y:32725,varname:node_6617,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4522,x:32237,y:32304,ptovrint:False,ptlb:T_Moss,ptin:_T_Moss,varname:_T_Moss,prsc:2,tex:3fb06727ff1b77b47a394012b1326378,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:76,x:31770,y:32538,ptovrint:False,ptlb:nN_Moss,ptin:_nN_Moss,varname:_nN_Moss,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:464,x:32149,y:32766,varname:node_464,prsc:2|BSE-76-RGB,DTL-5612-RGB;n:type:ShaderForge.SFN_Lerp,id:9701,x:32459,y:32446,varname:node_9701,prsc:2|A-4522-RGB,B-3765-RGB,T-6617-R;n:type:ShaderForge.SFN_Lerp,id:6391,x:32371,y:32881,varname:node_6391,prsc:2|A-464-OUT,B-5612-RGB,T-6617-R;proporder:3738-4396-5612-76-3765-4522;pass:END;sub:END;*/

Shader "Shader Forge/HousePig_Fade_S" {
    Properties {
        _Opacity ("Opacity", Range(0, 1)) = 0
        _node_4396 ("node_4396", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _nN_Moss ("nN_Moss", 2D) = "bump" {}
        _Texture ("Texture", 2D) = "white" {}
        _T_Moss ("T_Moss", 2D) = "white" {}
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
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 4x4 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither4x4( float value, float2 sceneUVs ) {
                float4x4 mtx = float4x4(
                    float4( 1,  9,  3, 11 )/17.0,
                    float4( 13, 5, 15,  7 )/17.0,
                    float4( 4, 12,  2, 10 )/17.0,
                    float4( 16, 8, 14,  6 )/17.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,4);
                int ySmp = fmod(px.y,4);
                float4 xVec = 1-saturate(abs(float4(0,1,2,3) - xSmp));
                float4 yVec = 1-saturate(abs(float4(0,1,2,3) - ySmp));
                float4 pxMult = float4( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec), dot(mtx[3],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _LightColor0;
            uniform float _Opacity;
            uniform sampler2D _node_4396; uniform float4 _node_4396_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
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
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
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
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 node_464_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_464_nrm_detail = _Normal_var.rgb * float3(-1,-1,1);
                float3 node_464_nrm_combined = node_464_nrm_base*dot(node_464_nrm_base, node_464_nrm_detail)/node_464_nrm_base.z - node_464_nrm_detail;
                float3 node_464 = node_464_nrm_combined;
                float3 normalLocal = lerp(node_464,_Normal_var.rgb,i.vertexColor.r);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_4396_var = tex2D(_node_4396,TRANSFORM_TEX(i.uv0, _node_4396));
                clip( BinaryDither4x4(((_node_4396_var.r*1.0+-0.5)+(_Opacity*2.5+-1.0)) - 1.5, sceneUVs) );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 diffuseColor = lerp(_T_Moss_var.rgb,_Texture_var.rgb,i.vertexColor.r);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 4x4 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither4x4( float value, float2 sceneUVs ) {
                float4x4 mtx = float4x4(
                    float4( 1,  9,  3, 11 )/17.0,
                    float4( 13, 5, 15,  7 )/17.0,
                    float4( 4, 12,  2, 10 )/17.0,
                    float4( 16, 8, 14,  6 )/17.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,4);
                int ySmp = fmod(px.y,4);
                float4 xVec = 1-saturate(abs(float4(0,1,2,3) - xSmp));
                float4 yVec = 1-saturate(abs(float4(0,1,2,3) - ySmp));
                float4 pxMult = float4( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec), dot(mtx[3],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _LightColor0;
            uniform float _Opacity;
            uniform sampler2D _node_4396; uniform float4 _node_4396_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
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
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
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
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 node_464_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_464_nrm_detail = _Normal_var.rgb * float3(-1,-1,1);
                float3 node_464_nrm_combined = node_464_nrm_base*dot(node_464_nrm_base, node_464_nrm_detail)/node_464_nrm_base.z - node_464_nrm_detail;
                float3 node_464 = node_464_nrm_combined;
                float3 normalLocal = lerp(node_464,_Normal_var.rgb,i.vertexColor.r);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _node_4396_var = tex2D(_node_4396,TRANSFORM_TEX(i.uv0, _node_4396));
                clip( BinaryDither4x4(((_node_4396_var.r*1.0+-0.5)+(_Opacity*2.5+-1.0)) - 1.5, sceneUVs) );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 diffuseColor = lerp(_T_Moss_var.rgb,_Texture_var.rgb,i.vertexColor.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 4x4 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither4x4( float value, float2 sceneUVs ) {
                float4x4 mtx = float4x4(
                    float4( 1,  9,  3, 11 )/17.0,
                    float4( 13, 5, 15,  7 )/17.0,
                    float4( 4, 12,  2, 10 )/17.0,
                    float4( 16, 8, 14,  6 )/17.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,4);
                int ySmp = fmod(px.y,4);
                float4 xVec = 1-saturate(abs(float4(0,1,2,3) - xSmp));
                float4 yVec = 1-saturate(abs(float4(0,1,2,3) - ySmp));
                float4 pxMult = float4( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec), dot(mtx[3],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float _Opacity;
            uniform sampler2D _node_4396; uniform float4 _node_4396_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float4 _node_4396_var = tex2D(_node_4396,TRANSFORM_TEX(i.uv0, _node_4396));
                clip( BinaryDither4x4(((_node_4396_var.r*1.0+-0.5)+(_Opacity*2.5+-1.0)) - 1.5, sceneUVs) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
