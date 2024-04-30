Return-Path: <blinux-list+bncBDDJ53UQ74LRB2P7YSYQMGQEDNAWGYY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B67698B8039
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 21:00:59 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3c84affb666sf6897422b6e.0
        for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 12:00:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714503658; cv=pass;
        d=google.com; s=arc-20160816;
        b=qnr582ovcHYsbEg344Nl0+72RzFUUtm1E6ph21oHwjsyrnLbzKlbz+ILiGGyehz135
         G7qrR9yAypfRbPGAh6Q8yPws8cBkCk/i7UmxOOIhHjt/XX54As2JBHNyjFustAGjCSAy
         igRaTWF1xSLYharKcQYStTH0TK6jSPg/bu/87Lwy40XB2NTXNOYIuRLCjkrNtDjWl5ev
         nz0L+dH+L/Yx1qsfGqcSbOMd7u6+zU+lQqfH2rr8mr8Z5g0m9C/Dam/D2Yf76NqNahrX
         s6N9JK7az8ecDDn29cXrTCwC2uEWHE/FrKnLsqDyFH8UWLl3OsK2SQHYEhpnjnpNdlSE
         faQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:message-id:to:from
         :date:delivered-to;
        bh=sAKaDs4Eng71sLITL3tk6XdKr/YQlyRcEm5oMyoWQME=;
        fh=WprJuZWfJR+wezYiBtGCpP2dewkih5ZjjO7487qkMuQ=;
        b=f70K78xXbz/NjsMRrHKm8G15gILbj8auuWOcBToeoVqBb/5UAHnnzkqirLntRO5OWt
         umlJ0k20c725xQaC5TPTaY3m87rAzhohubzm1b9xRB/FtyZZ582tj02M1jDwdwey0dDb
         K6VzQxDaAMBh6VOZFLyN+FvwUp6kd1z57fBqbrk7RkCvc+i4UZy6qxxOv1XVM3F35Ymd
         iQOxaignDwti/bkVJ5XKHDmLTKAobQjwzmsTWB9or+EcWVdW92FlX5wfLxxglZCtp1rW
         1AWBq6FHAPP6ZgZkEEfYDKkXcutER6TspwUSJyeyZqka3JehnpPGajQoMLrx4Eh33khQ
         uUBg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jldail13@outlook.com designates 40.92.41.66 as permitted sender) smtp.mailfrom=jldail13@outlook.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714503658; x=1715108458;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:message-id:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sAKaDs4Eng71sLITL3tk6XdKr/YQlyRcEm5oMyoWQME=;
        b=HxH8rK/zhpKotd+cpBXy6R8NFClHJEgmbkUaTXUhsR+Rcfa/Wxz07oIqQwXkyPupGa
         LZ5n2nEzgXcWxNvNnwgBMdWt40MDjdWX8wGagcAfvaZggRfbKB0RJQqR279W32gp9sZe
         fco72EBrpApLOdSaPN6z9C2xVRkDG6OH7GCTk9Kpv9w+h3uJlxzfPTgfgezw445uxtYY
         3LZd80NKmaBSPV94C7GwSu97B98zw6RCL1v7b8xXOAJBKiENAiUwU32HBaq4NJ/mNWjC
         QvIeNMZz2GBESeVTQUbqRcRxyD142D6RwBMOlkhNnajR7sHDHiQGNlMX6slFvbsAwfUR
         ig1g==
X-Forwarded-Encrypted: i=2; AJvYcCV2Re5/slChSfoNsRQJTBjaG0G1UT2qqQoL50XN0d10p5nQ35vFeKNpPfvNdOi5J8n/ha5SGcJYagHn4zhf/3k9VvAWVQPq9E7E
X-Gm-Message-State: AOJu0Yy6685/yOWkvtL0AhGM9nqWkgoJyuU6NsgNwSWhE8HGch5c0D82
	CjVo5unAlSpKZQVZmhLEWj0fkyMtNBqwaFn3jbUWEP4QB4pT54l9mDM+Ygb5pNw=
X-Google-Smtp-Source: AGHT+IGU5tWsiHNFQfqJEXRRbZR9hosctWeOxhxjFovL4WGjUQIe6glLSup+p1zfk9Rw3HsTHUD92w==
X-Received: by 2002:a05:6808:617:b0:3c7:509d:a383 with SMTP id y23-20020a056808061700b003c7509da383mr480618oih.24.1714503658421;
        Tue, 30 Apr 2024 12:00:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a1e:b0:43c:6734:c05f with SMTP id
 d75a77b69052e-43c6734d6d3ls10065851cf.2.-pod-prod-05-us; Tue, 30 Apr 2024
 12:00:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXTuAdrTBNQ+2/zID+7U0earyk+VeO5Fs5HDiI2DQwa9Sxfh/cvHECnhmMoEVl7bNCXRxG1vEQ2f/+gAF2Ud7a2nRNGfYdbtLxxzYZH
X-Received: by 2002:ac8:5dcc:0:b0:439:d0ed:39e4 with SMTP id e12-20020ac85dcc000000b00439d0ed39e4mr184886qtx.4.1714503657308;
        Tue, 30 Apr 2024 12:00:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714503657; cv=none;
        d=google.com; s=arc-20160816;
        b=XK+HcYpIDINqpwE5rLv8IDDYoOnJP1wQNOaGqc27HuIPVsk3UVaeykiteCEhkKMScz
         jNWwWr019YNRw4qQ20sgkU0+F+mplTaV2Nb6NgHoO82NWxJj2V69q2wUgTR+y70y5MCt
         SYHjPbZVM7jAgStet6+mcuc6N62Q0w7m/hRDaBGkKHlKHaFS8xN3lJcgPV3+TiPOAEoa
         NspT26xR8ylifBsybZwv0iPd5+RcK+tbZ1l24Ih1fC7b3MjmNU5i2xXZdLclMo7I/TST
         ooW+Zbp/4XWTYyKxTzvWFBs8TyLBh1KyxFTeAiiSHpjHlQ3aL0dsSWDw5aVgiuFTbDac
         x4pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:message-id:to:from
         :date:delivered-to;
        bh=WD1e6C2MMtlGQFTaF09EVX//NYipRE4TeA/cCMOjjh4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=cflv1NfIS28/FUL9G0FkCnLrd5JSwTp8etQ4X8aeUiAX+YfWrf1UXea1DbCI7nLnlQ
         +XYVWA38k2MarSk9uIrb4kC7aPzJdiTm2tC/wOkiom7lms54DQrz9faUUamkN7HwP3wp
         kCuxYA838IXoMa4qanK6PL9ITALx5nUPq22nIefFWpJncMF2bZ7wF092zjnTNEzqTKTO
         Tg7xEehqnEwJRnu3h6bKf/3FRQBcyVkCVLZId8yIWtSBHbDXurn6XNfplDBfNZdKAVqc
         WBjFHxbOPS6Bbq468gD/4rtX0End+ZYff/31PPeivBBMRwOVLmWmRq7aR4FuCo/Q8vWT
         bcmw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jldail13@outlook.com designates 40.92.41.66 as permitted sender) smtp.mailfrom=jldail13@outlook.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id q17-20020a05622a04d100b0043affa53e93si4097253qtx.16.2024.04.30.12.00.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 12:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jldail13@outlook.com designates 40.92.41.66 as permitted sender) client-ip=40.92.41.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-145-1ihR4xJaMWmvIZ0moUr_ig-1; Tue,
 30 Apr 2024 15:00:55 -0400
X-MC-Unique: 1ihR4xJaMWmvIZ0moUr_ig-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77C6A3C025BB
	for <blinux-list@gapps.redhat.com>; Tue, 30 Apr 2024 19:00:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 74922C08EDF; Tue, 30 Apr 2024 19:00:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BC9CC13FA6
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 19:00:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9E701049C93
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 19:00:54 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10olkn2066.outbound.protection.outlook.com [40.92.41.66]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-198-k-9niUOfPkaCB-a7PR9S_w-1; Tue, 30 Apr 2024 15:00:51 -0400
X-MC-Unique: k-9niUOfPkaCB-a7PR9S_w-1
Received: from CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:930:2c::22)
 by MW5PR84MB2226.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1c8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Tue, 30 Apr
 2024 19:00:47 +0000
Received: from CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::eddc:d2dc:de3b:add4]) by CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::eddc:d2dc:de3b:add4%4]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 19:00:47 +0000
Date: Tue, 30 Apr 2024 15:00:47 -0400 (EDT)
From: Jessica Dail <jldail13@outlook.com>
To: blinux-list@redhat.com
Message-ID: <CY5PR84MB30514EDF26A28F2157EEB053D81A2@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Working with email attachments
X-TMN: [NbJDkz6jmeCzvSwnNl+wNYA0PV/3vWHE]
X-ClientProxiedBy: CH2PR07CA0066.namprd07.prod.outlook.com
 (2603:10b6:610:5b::40) To CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
 (2603:10b6:930:2c::22)
X-Microsoft-Original-Message-ID: <105006372.0.1714503645954@localhost>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR84MB3051:EE_|MW5PR84MB2226:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a38adff-b8e1-4abd-fd0a-08dc6947d846
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199019|3412199016|440099019
X-Microsoft-Antispam-Message-Info: 1Fe96oUaUbgOIiPFacbbLdeix2+KA4eZ+bXDKoBopgoNkPiBku7rz5VzGTMBCZxA60Y/NLKwuOMplRV9eLZsIGooqBR/dcQkEWgFHhAqKNfBv0rgIl/eXMvbH/ZAullhmMJN9wQyTM6P++fyk/p4x8WiuEpcwJN2NHVFDGWxGw83KogPJK+1Pi1R81sffig3V8Pd8N4m3On8+PGiNSccK3ZGSp/TsII9auslTUqKYoBxDgIzNXveEbCAlgVJxot6Z+doNcen9U1S0ZugJ0J504nI5ZW6pVgtQxreLCVN8B7C3NrMXFhZktb98++EnWwY6FNxxEBLHiovtgn8OcXfcFxZXOAFTA1Q8bmoK/7v+a+Ux3KZtQ/icsXt3cgT3rubZvkleahgx4vA1Jp+r5qjXmCnqa3kVgwlVpecPsC94yAGQFgPP1jz4SVT3XRJSYTyVrNdxwYkU6FyoPDzpbLkPrcf39E8k3Ks34bBr5l9hiV6xQbhCGg9owPJfY8UpS/U2lxyGbEHJkgK8ugbpQ78IssIaTfT1tuJxKdVoId4sj/nvkerguUBMv7NKHcIVc/g
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkFJTjkvSmdqcVBneE5TQUYvb25EWk5LZW1iazVuWmJRZDdkOVBnd2I4dm8w?=
 =?utf-8?B?dmQ2SHhQQnNHOUJqRVFiQ2c5R3hvTUpVWkY4RGpMS3hINzRpaXdlQnl4bUNr?=
 =?utf-8?B?YzB0TFR5QnJnL3VCNHVtbjllcmo1dVJia1lpU0VRY0c0Q05ieHpLU2NVOUlv?=
 =?utf-8?B?SDNFRlVpTnBpT1VKSkRHcFJIR3c1SkpKY25IZWhSMGRGTWxEaUlGMW9qUy9Y?=
 =?utf-8?B?QmZZRFVsclJlWWs1dFh0QXcvUC9ocjRqVlVVZkF3ZGplc0pSSytWL01HZXh3?=
 =?utf-8?B?T25SVkdNTVgrVWNocW81YnNxY2x4STJhUkRqaUh2cTQrUjdRaDJTclU3eDE5?=
 =?utf-8?B?aU5wVTRZdXVMRFlQQmhYbjdNbWhyMnluaERURjFiYStGUDFUeWp3Rjg0MUpo?=
 =?utf-8?B?U3h0cElIRzdHY0NoWmk5NVBlOWpSN0ZKejF0Z0ppTWYwSVBkeHk4eVZBVU9r?=
 =?utf-8?B?ZEhISVdoUHlVZkNUYy9nU1B3UWtheUJ1UHRzclc4VFNleVZxd2lvRkNSMFNw?=
 =?utf-8?B?Y2JBR1F0OXRVVGl2akM3MGV3QXNmem9keXFuOUV2ZitmVEx5SVgwU095WUpR?=
 =?utf-8?B?aGhhVGZaempmYXJrLys5a0F4MzZpTzkwM0djelhtd1Z2aG1vSy93VlBPV20x?=
 =?utf-8?B?NE83OGg0TE9ITW11ZVI3ZzlTaWduR2YxUThFbHJGTXVxVG1WMDFReElwWkIw?=
 =?utf-8?B?TnQwOXJxcU4zcXdBc3NJT1dLM2pmaENXVEpMY004MzR4LytrUWtzVVdjbHZN?=
 =?utf-8?B?ZGdTZG5CMVdvMUdTa3AwQ25NVTVISHk5TklVQnJBdHY2K2NXQnFhai9LZ1JP?=
 =?utf-8?B?UDVpRjJpSVJQL3F5bGNNWHROM3NmOG9QNzF6aVFJdnVTSE5DL3BHVkJuSEtm?=
 =?utf-8?B?M0VvTERLcWoxOXhMdmRpUzgzRnBkUWtKRTFLbnhKK3pCS1NMZDdpN3VZKysw?=
 =?utf-8?B?d1IrWVhtM1JSUUxScStUQkJDTW9SWk45S28wUjNtYzBrOEw0QlFBV3JJL20r?=
 =?utf-8?B?RzJHUGZWWjZZc2cyd0RTSGFqM3UyZjhrc08raUhUa0hYRlhsT3MzdmgwZFA3?=
 =?utf-8?B?QkF0RDNtdEkxUmtqS0VMU3oxaURYSjJnbzlHRXIvVUp2cHJQc2VIZEl4cFY5?=
 =?utf-8?B?MnlXMys0MUY1eXZxQmZKY0EzaXNLWXAzZCs0RThGRFFOc0liZXNZMUYzQmky?=
 =?utf-8?B?Y1EyVlFuYTdWaFlJRUtjVE00eVA3b0pZUUdEd3Y5cHRzNmJHbTB6MkdRZ2Ex?=
 =?utf-8?B?WEEwVWNIUFVRelpxU29TMzJMeXZZM0w2NnpDOUpMeGNhS3hzMW9OcFBiWW8w?=
 =?utf-8?B?WktqL1pxNUo5N0p0cTc3dDdWWXBmR3ZIZkxVT2FYVVZnejF6UUFFNFdwU2Jy?=
 =?utf-8?B?M0ZOOGYyZTlEeDQ0Z1hZbHc3MjZyMVlscDNuRldJSGY2Y0cwMjBQWUNYYlU0?=
 =?utf-8?B?VFQrTm9XSlRBbWt6NWE2RWE4SjRsei9seURoK3RVVHNUK0VHak5JcW9wTThi?=
 =?utf-8?B?akpYN0laNW1Vb0lrMVhtOEk2eEVxYlFLRlpQVzZGeGN4SHFjaVRqWUs2U05Q?=
 =?utf-8?B?c0c1Q1BUR0sxNDBNTmV2WWgvZjBiNVppQTVMY2ZDa3FQRStMZ2ZZT1V6dWhx?=
 =?utf-8?Q?eE86HoP+E1WoLkcF1UajQp7ab9aKT+cw+huqIhqVPV0k=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a38adff-b8e1-4abd-fd0a-08dc6947d846
X-MS-Exchange-CrossTenant-AuthSource: CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2024 19:00:47.5557
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR84MB2226
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: outlook.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jldail13@outlook.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jldail13@outlook.com designates 40.92.41.66 as permitted sender) smtp.mailfrom=jldail13@outlook.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hello,
I'm having trouble with sound under Slint.
Someone from the Slint email list sent me something to install, via email.
Of course, this item came as an attachment.
My question for you all is, how do I put Orca's focus on an attachment, so I can open or save it?


Thanks,
Jessica Dail
jldail13@outlook.com
810-730-1861

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

