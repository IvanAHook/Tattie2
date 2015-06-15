// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:5464,x:32963,y:32668,varname:node_5464,prsc:2|diff-1526-OUT,spec-3126-OUT,normal-2712-OUT;n:type:ShaderForge.SFN_Tex2d,id:7654,x:31800,y:33188,ptovrint:False,ptlb:node_7654,ptin:_node_7654,varname:_node_7654,prsc:2,tex:9bacd7f0b42049043a53e32ce339766c,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7858,x:31627,y:32260,ptovrint:False,ptlb:node_7858,ptin:_node_7858,varname:_node_7858,prsc:2,tex:4d6568d54fdf1244b9f02c2082ee1baf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7038,x:32064,y:32451,varname:node_7038,prsc:2|A-5432-RGB,B-7858-RGB;n:type:ShaderForge.SFN_Color,id:5432,x:31891,y:32105,ptovrint:False,ptlb:node_5432,ptin:_node_5432,varname:_node_5432,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5948,x:31569,y:32670,varname:node_5948,prsc:2;n:type:ShaderForge.SFN_Lerp,id:1526,x:32064,y:32639,varname:node_1526,prsc:2|A-7038-OUT,B-3001-RGB,T-5948-R;n:type:ShaderForge.SFN_Tex2d,id:3001,x:31774,y:32832,ptovrint:False,ptlb:mnoss_t,ptin:_mnoss_t,varname:_mnoss_t,prsc:2,tex:3fb06727ff1b77b47a394012b1326378,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2022,x:32024,y:33242,ptovrint:False,ptlb:moss_normalö,ptin:_moss_normal,varname:_moss_normal,prsc:2,tex:32f9322402dcb1e45bf48725c0e97e07,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:3126,x:32650,y:32521,varname:node_3126,prsc:2|A-2680-OUT,B-9968-OUT,T-5948-B;n:type:ShaderForge.SFN_Vector1,id:9188,x:32708,y:32335,varname:node_9188,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:2680,x:32208,y:32286,ptovrint:False,ptlb:s,ptin:_s,varname:_s,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9968,x:32286,y:32501,ptovrint:False,ptlb:node_9968,ptin:_node_9968,varname:_node_9968,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:6251,x:32366,y:32974,varname:node_6251,prsc:2|A-7654-RGB,B-2022-RGB,T-5948-R;n:type:ShaderForge.SFN_Normalize,id:2712,x:32720,y:32961,varname:node_2712,prsc:2|IN-6251-OUT;proporder:7654-7858-5432-3001-2680-9968-2022;pass:END;sub:END;*/

Shader "Shader Forge/Cliff_S" {
    Properties {
        _node_7654 ("node_7654", 2D) = "bump" {}
        _node_7858 ("node_7858", 2D) = "white" {}
        _node_5432 ("node_5432", Color) = (0.5,0.5,0.5,1)
        _mnoss_t ("mnoss_t", 2D) = "white" {}
        _s ("s", Range(0, 1)) = 0
        _node_9968 ("node_9968", Range(0, 1)) = 0
        _moss_normal ("moss_normalö", 2D) = "bump" {}
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
            uniform sampler2D _node_7654; uniform float4 _node_7654_ST;
            uniform sampler2D _node_7858; uniform float4 _node_7858_ST;
            uniform float4 _node_5432;
            uniform sampler2D _mnoss_t; uniform float4 _mnoss_t_ST;
            uniform sampler2D _moss_normal; uniform float4 _moss_normal_ST;
            uniform float _s;
            uniform float _node_9968;
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
                float3 _node_7654_var = UnpackNormal(tex2D(_node_7654,TRANSFORM_TEX(i.uv0, _node_7654)));
                float3 _moss_normal_var = UnpackNormal(tex2D(_moss_normal,TRANSFORM_TEX(i.uv0, _moss_normal)));
                float3 normalLocal = normalize(lerp(_node_7654_var.rgb,_moss_normal_var.rgb,i.vertexColor.r));
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
                float node_3126 = lerp(_s,_node_9968,i.vertexColor.b);
                float3 specularColor = float3(node_3126,node_3126,node_3126);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _node_7858_var = tex2D(_node_7858,TRANSFORM_TEX(i.uv0, _node_7858));
                float4 _mnoss_t_var = tex2D(_mnoss_t,TRANSFORM_TEX(i.uv0, _mnoss_t));
                float3 node_1526 = lerp((_node_5432.rgb*_node_7858_var.rgb),_mnoss_t_var.rgb,i.vertexColor.r);
                float3 diffuseColor = node_1526;
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
            uniform sampler2D _node_7654; uniform float4 _node_7654_ST;
            uniform sampler2D _node_7858; uniform float4 _node_7858_ST;
            uniform float4 _node_5432;
            uniform sampler2D _mnoss_t; uniform float4 _mnoss_t_ST;
            uniform sampler2D _moss_normal; uniform float4 _moss_normal_ST;
            uniform float _s;
            uniform float _node_9968;
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
                float3 _node_7654_var = UnpackNormal(tex2D(_node_7654,TRANSFORM_TEX(i.uv0, _node_7654)));
                float3 _moss_normal_var = UnpackNormal(tex2D(_moss_normal,TRANSFORM_TEX(i.uv0, _moss_normal)));
                float3 normalLocal = normalize(lerp(_node_7654_var.rgb,_moss_normal_var.rgb,i.vertexColor.r));
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
                float node_3126 = lerp(_s,_node_9968,i.vertexColor.b);
                float3 specularColor = float3(node_3126,node_3126,node_3126);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _node_7858_var = tex2D(_node_7858,TRANSFORM_TEX(i.uv0, _node_7858));
                float4 _mnoss_t_var = tex2D(_mnoss_t,TRANSFORM_TEX(i.uv0, _mnoss_t));
                float3 node_1526 = lerp((_node_5432.rgb*_node_7858_var.rgb),_mnoss_t_var.rgb,i.vertexColor.r);
                float3 diffuseColor = node_1526;
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
