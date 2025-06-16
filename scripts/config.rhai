let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = [];
let titles_method = [];


let llm_architecture_keywords = [
    "Transformer Architecture", 
    "Mixture of Experts (MoE)",
    "Sparse Attention",
    "Efficient Training Strategies",
    "Model Parallelism",
    "3D Parallelism",
    "Zero Redundancy Optimizer (ZeRO)",
    "Gradient Checkpointing",
    "Flash Attention",
    "Rotary Position Embedding"
];

let inference_optimization_keywords = [
    "Quantization Techniques",
    "Pruning Methods",
    "Knowledge Distillation",
    "Speculative Decoding",
    "KV Cache Optimization",
    "Continuous Batching",
    "PagedAttention",
    "Low-Rank Adaptation (LoRA)",
    "vLLM Framework",
    "Triton Inference Server"
];

let alignment_safety_keywords = [
    "Reinforcement Learning from Human Feedback (RLHF)",
    "Direct Preference Optimization (DPO)",
    "Constitutional AI",
    "Red Teaming",
    "Jailbreak Defense",
    "TruthfulQA Benchmark",
    "Value Alignment",
    "Proximal Policy Optimization (PPO)",
    "Self-Supervised Alignment",
    "Ethical Guidelines"
];

let multimodal_keywords = [
    "Vision-Language Models",
    "CLIP Architecture",
    "Diffusion Models",
    "Stable Diffusion",
    "LLaVA Framework",
    "Flamingo Model",
    "ImageBind",
    "Unified Embedding Space",
    "Cross-Modal Attention",
    "Text-to-Image Generation"
];

let application_keywords = [
    "Code Generation",
    "Mathematical Reasoning",
    "Biomedical Applications",
    "Legal Document Analysis",
    "Financial Forecasting",
    "Automated Theorem Proving",
    "Drug Discovery",
    "Scientific Literature Mining",
    "Multilingual Translation",
    "Robotics Control"
];

let benchmark_keywords = [
    "MMLU Benchmark",
    "Big-Bench",
    "HELM Evaluation",
    "AGI Safety Benchmark",
    "TruthfulQA",
    "BIG-bench Hard",
    "Language Model Evaluation Harness",
    "AlpacaEval",
    "HellaSwag",
    "GSM8K Math Benchmark"
];

let opensource_keywords = [
    "LLaMA Family",
    "Mistral Architecture",
    "Falcon Models",
    "BERT Variants",
    "GPT-NeoX",
    "Pythia Suite",
    "OpenLLM Framework",
    "HuggingFace Transformers",
    "LlamaIndex",
    "LangChain Integration"
];

// 方法1：使用concat()合并
let allKeywords = llm_architecture_keywords+inference_optimization_keywords+alignment_safety_keywords+multimodal_keywords+application_keywords+benchmark_keywords+opensource_keywords;
let titles =  allKeywords+titles_model + titles_method + titles_type;
let authors_array = ["Guoliang Li"];

let conferences = [
    // AI
    //"AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    //"3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    //"AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    //"ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    //"FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    //"ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
