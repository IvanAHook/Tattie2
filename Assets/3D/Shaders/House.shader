// Shader created with Shader Forge v1.13 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.13;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6116,x:33114,y:32703,varname:node_6116,prsc:2|diff-2208-OUT,normal-1353-OUT,emission-973-OUT,alpha-1102-OUT;n:type:ShaderForge.SFN_Tex2d,id:8228,x:31962,y:33577,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,tex:1cfac8d7cd391cd46b58fa8106209a54,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7171,x:31883,y:33258,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,tex:89caa4968bdd5354998e17e4fb186cb1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1102,x:32518,y:33129,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:_Opacity,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_VertexColor,id:9562,x:31720,y:32650,varname:node_9562,prsc:2;n:type:ShaderForge.SFN_ChannelBlend,id:2208,x:32353,y:32877,varname:node_2208,prsc:2,chbt:1|M-9736-OUT,R-1101-OUT,G-7732-RGB,B-7171-RGB,BTM-7171-RGB;n:type:ShaderForge.SFN_Append,id:9736,x:32056,y:32673,varname:node_9736,prsc:2|A-9562-G,B-9562-B,C-9562-A;n:type:ShaderForge.SFN_ChannelBlend,id:2860,x:32340,y:33341,varname:node_2860,prsc:2,chbt:1|M-9736-OUT,R-2593-OUT,G-9191-OUT,B-2593-OUT,BTM-8228-RGB;n:type:ShaderForge.SFN_Normalize,id:1353,x:32518,y:33341,varname:node_1353,prsc:2|IN-2860-OUT;n:type:ShaderForge.SFN_Tex2d,id:7732,x:31601,y:32941,ptovrint:False,ptlb:T_Moss,ptin:_T_Moss,varname:_T_Moss,prsc:2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:1101,x:31220,y:32854,varname:node_1101,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7602,x:31443,y:33572,ptovrint:False,ptlb:nN_Moss,ptin:_nN_Moss,varname:_nN_Moss,prsc:2,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalBlend,id:9191,x:31673,y:33572,varname:node_9191,prsc:2|BSE-7602-RGB,DTL-8228-RGB;n:type:ShaderForge.SFN_Vector3,id:2593,x:32103,y:33281,varname:node_2593,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Color,id:6812,x:31864,y:32371,ptovrint:False,ptlb:node_6812,ptin:_node_6812,varname:_node_6812,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1556,x:32469,y:32585,ptovrint:False,ptlb:node_1556,ptin:_node_1556,varname:_node_1556,prsc:2,tex:46b6ac8dff412ba45a44510cf980a2a1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7502,x:32104,y:32303,varname:node_7502,prsc:2|B-6812-RGB;n:type:ShaderForge.SFN_ComponentMask,id:1393,x:32469,y:32407,varname:node_1393,prsc:2,cc1:1,cc2:0,cc3:-1,cc4:-1|IN-9736-OUT;n:type:ShaderForge.SFN_Multiply,id:973,x:32721,y:32323,varname:node_973,prsc:2|A-1393-R,B-1556-RGB,C-9664-OUT;n:type:ShaderForge.SFN_OneMinus,id:9664,x:32749,y:32511,varname:node_9664,prsc:2|IN-1393-G;proporder:7171-8228-1102-7602-7732-6812-1556;pass:END;sub:END;*/

Shader "Shader Forge/House" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Opacity ("Opacity", Range(0, 1)) = 1
        _nN_Moss ("nN_Moss", 2D) = "bump" {}
        _T_Moss ("T_Moss", 2D) = "white" {}
        _node_6812 ("node_6812", Color) = (1,0,0,1)
        _node_1556 ("node_1556", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Opacity;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
            uniform sampler2D _node_1556; uniform float4 _node_1556_ST;
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
                UNITY_FOG_COORDS(5)
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
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_9736 = float3(i.vertexColor.g,i.vertexColor.b,i.vertexColor.a);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 node_2593 = float3(0,0,1);
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 node_9191_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_9191_nrm_detail = _Normal_var.rgb * float3(-1,-1,1);
                float3 node_9191_nrm_combined = node_9191_nrm_base*dot(node_9191_nrm_base, node_9191_nrm_detail)/node_9191_nrm_base.z - node_9191_nrm_detail;
                float3 node_9191 = node_9191_nrm_combined;
                float3 normalLocal = normalize((lerp( lerp( lerp( _Normal_var.rgb, node_2593, node_9736.r ), node_9191, node_9736.g ), node_2593, node_9736.b )));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float3 diffuseColor = (lerp( lerp( lerp( _Texture_var.rgb.r, 0.0, node_9736.r ), _T_Moss_var.rgb, node_9736.g ), _Texture_var.rgb, node_9736.b ));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float2 node_1393 = node_9736.gr;
                float4 _node_1556_var = tex2D(_node_1556,TRANSFORM_TEX(i.uv0, _node_1556));
                float3 emissive = (node_1393.r*_node_1556_var.rgb*(1.0 - node_1393.g));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Opacity);
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
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Opacity;
            uniform sampler2D _T_Moss; uniform float4 _T_Moss_ST;
            uniform sampler2D _nN_Moss; uniform float4 _nN_Moss_ST;
            uniform sampler2D _node_1556; uniform float4 _node_1556_ST;
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
                float3 node_9736 = float3(i.vertexColor.g,i.vertexColor.b,i.vertexColor.a);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 node_2593 = float3(0,0,1);
                float3 _nN_Moss_var = UnpackNormal(tex2D(_nN_Moss,TRANSFORM_TEX(i.uv0, _nN_Moss)));
                float3 node_9191_nrm_base = _nN_Moss_var.rgb + float3(0,0,1);
                float3 node_9191_nrm_detail = _Normal_var.rgb * float3(-1,-1,1);
                float3 node_9191_nrm_combined = node_9191_nrm_base*dot(node_9191_nrm_base, node_9191_nrm_detail)/node_9191_nrm_base.z - node_9191_nrm_detail;
                float3 node_9191 = node_9191_nrm_combined;
                float3 normalLocal = normalize((lerp( lerp( lerp( _Normal_var.rgb, node_2593, node_9736.r ), node_9191, node_9736.g ), node_2593, node_9736.b )));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float4 _T_Moss_var = tex2D(_T_Moss,TRANSFORM_TEX(i.uv0, _T_Moss));
                float3 diffuseColor = (lerp( lerp( lerp( _Texture_var.rgb.r, 0.0, node_9736.r ), _T_Moss_var.rgb, node_9736.g ), _Texture_var.rgb, node_9736.b ));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * _Opacity,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
