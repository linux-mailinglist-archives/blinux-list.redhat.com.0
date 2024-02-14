Return-Path: <blinux-list+bncBCA2Z2HI2EIBBVPQWGXAMGQENNGI2SQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F838543FA
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 09:22:47 +0100 (CET)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3c044726448sf2151600b6e.0
        for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 00:22:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707898966; cv=pass;
        d=google.com; s=arc-20160816;
        b=0tcVBFd4YIRwcmsENstveUpDhU0wypTbRZavtXy1Ki3LYMG1K8y+p3bwsYDYMLDr6k
         3+Ry+A/ZqagHsjSQVG8qRu8bI4SQPRw+MLPkPTmOkZywZmVyh17/cjTcH3W2M6g5CNPW
         7NiR6WLHCIRZMrqXK3biqWmJ6F8sP3D8Xew4nN+SCqDn/LfzCFVQQfIbTag6S4CTiK+B
         YgX31GPuywuLmtbXRPP3X0mQV95FTpeicUdCN5pZX83+/0h7Ipxk7TbltyAX8jiZq3z6
         6WEXlUMQkni83O2Sxz4cyrbTc1YYlxbDufxXeITI/UJFVFB40yXJhZ9Jg5yhwof9c7vk
         0B2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:from:date:delivered-to;
        bh=P4jRuz9nHjUX3Us/J/PVG5ZLCgP7K3lWMjyH8BtJOwE=;
        fh=9fPIXtLVfuxYys8HVUrgObu1FvvxV5jXvFxZ65JnwHM=;
        b=tqWu+n7NBiwcULRgE+vlo7Ck2mjFHYeymO5COgAmqkiaucRo5Dnh9R8vz7u8N+r2di
         Adpd36MGjf6sza+8BzFD4oun9JgITHnVCmB6HDKCeNbetfmGXmbzW4BGL4gktxzLJTe5
         dPmEkr/M4nxjCvezeO4HRdL4+QmqawAN3Ug+GFchNJO5fF31Eu2SaJKwgxIwqNZ8ZtGB
         n2m5FTGwxI0tIINrBxrHCklSWx2vRJfDLh5WGM9vpDQd0yTEkpWR/KJ/lv+ZUIp0h04G
         omZD7xegIldJ8sgpjT6YZC6P/wEUssGa3ExTrFMbMIT6/UeGzIfNSr0RQYO24nJtZGlC
         nyEA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 40.107.19.95 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707898966; x=1708503766;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P4jRuz9nHjUX3Us/J/PVG5ZLCgP7K3lWMjyH8BtJOwE=;
        b=IUzW5S8Cxds0oMsq4wA8CEE2jcTtYGX4Hz0hIUjARBvkQyQOaYauf0TuOw9OGuhr/t
         fZvQhqGXHAzfFTTwtwF7FOXiOc590hIimvEoTUeuSUPKYXuhB6YOHABFMNJYT99ZLkQV
         DxNd2PRVs+JX1shmjXtG7sizlwoPtxFpRIX8i2Ffa3cEr7D4tTLF6QdztG0OJ0axINv7
         iGtos+Rus26Sws3rq3Ae5tli9Z0A9KqeTzD9cshYVbfHLAc1HvuX6PZySAgC9VTzr+P+
         aPJhPEX/GB7eghHDq0aLy6JAcLtmyZrBcvEDFQtZ9MFn6cWHN32zZhDuP6zFCKeRZInj
         QVLQ==
X-Forwarded-Encrypted: i=2; AJvYcCVZ8vcs8dEMrWHQIKq8S+S7Pj3V9lwEwPTTDizJ+gXzrzQgf1+6VwuJiHYqSUsNHCFeO6SONkvLdjf1Ojeg3wzZ4/zYB1iK+D4s
X-Gm-Message-State: AOJu0YxaLNPxvTB0yg+3a94jjQHe0teYccxpScLBr25ceV3XmW2NaTHq
	VbK9i3vlsONPUBvsR9cYzdjY3VM+nQpDszrQIMJpZYxYVHhBGRG77jtMMILae+M=
X-Google-Smtp-Source: AGHT+IFMlX/luHFXbEtJnxxCUTT6NdH7KdK4zafcL3bOVJAfmTx8nDAOdc9rXL9wx5Vx52IrLiRy6Q==
X-Received: by 2002:a05:6808:ecc:b0:3c0:4c6c:e267 with SMTP id q12-20020a0568080ecc00b003c04c6ce267mr1284198oiv.31.1707898965835;
        Wed, 14 Feb 2024 00:22:45 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5c46:0:b0:68c:5c2d:cae9 with SMTP id a6-20020ad45c46000000b0068c5c2dcae9ls7105052qva.2.-pod-prod-05-us;
 Wed, 14 Feb 2024 00:22:45 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWNniymdcSk/GKeQbRgw5LKA1YCShKpHzo/4SGsyW2FZ/XbuHiB/xINuTx94MI0RWe2QEP3RptlfprZzlkhFjLPQpqtfIIgOHeNCwQf
X-Received: by 2002:a0c:db01:0:b0:68d:1482:c41f with SMTP id d1-20020a0cdb01000000b0068d1482c41fmr1914343qvk.36.1707898964870;
        Wed, 14 Feb 2024 00:22:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707898964; cv=none;
        d=google.com; s=arc-20160816;
        b=as0c/2ji2YthRBv53CWvLKyVBqos18HbUbO5omjPGslQ+zRrTIlrVA9jfJ+kVzxvRX
         MlOswJpfsVzQa9+46e4LXnuUx4lgGWC+uVwcQXE1E52x2zoTQWUM+QADo/MtoAumaX1u
         7mqh9uJvlt4SiiWVQzWgWS6dyZaLgwlUwaIoG5x3PgrApumd08NIYT9zRGgi7b2xq2fX
         E/n+VJ1Iwv/mAQhbSvw3KlRYZfqKPc1GeMNHxP6vNbJE9dClVIVssT2+j69ASPKM6WeM
         gcdPNGcnN45oc5nV7QXgTr2UH2Zb/w2F9e7izA82PuNPqOTA4lzJuyr2Rgwck0GZfe+9
         1s5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:from:date
         :authentication-results-original:delivered-to;
        bh=xWP+hw6lrVW3+o65KQi3izmeMH6VBxmVRpNoJqeIduA=;
        fh=XCbsLMM44wP1Zvs1UZ+Pi7Csk/W0Eh09RG0vYPN94QU=;
        b=gHuWSJ9NtoJnNoNrMt95DN6kA6V21RNPnnJRdcGyUFm/ZEzlEhtS70O0uUmD6ivMaY
         6iNbiM531oIf2SgcErzyRMge1XKMOJWq5wNilS7hMsabcYdPRDMOr1dHkUX5uDMevOO3
         8jQv/s7GdEsLu94Hui+c4TSaozHyEdov3IjStR8QKyMwLlf6eZ8SqDB4ZaTKam5emXZq
         gKqoLwU3jGDFIb6zGpgBTe9KXpUVgbVTVhuqWOQ4oWgUioGODUa5kMb6pKJEMU/Uoc7J
         cRo8FToShnIYh8+hqQrGNodgYlZ1RL//JdBWWfxtU7VbHVJpMPsM2ZnS6DG0UdXBNp87
         JPnQ==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 40.107.19.95 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
X-Forwarded-Encrypted: i=1; AJvYcCV8OaLudkutuqk+oOGvhbEUdXOdrBlH8FPrcO+Vq4AaxDxevrmpZYtSwFyWQWM1jTUuGj2atVBV4wnLWOy5NJU+kJm/rFwJjJGL0HOy
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id q14-20020ad45cae000000b0068cd2d3420csi5078813qvh.169.2024.02.14.00.22.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 00:22:43 -0800 (PST)
Received-SPF: pass (google.com: domain of wvdwalt@csir.co.za designates 40.107.19.95 as permitted sender) client-ip=40.107.19.95;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-642-Vjge4twCNky9IxFrwqw-Bw-1; Wed,
 14 Feb 2024 03:22:41 -0500
X-MC-Unique: Vjge4twCNky9IxFrwqw-Bw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88D4B29AC01B
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 08:22:41 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 85A98400D5CC; Wed, 14 Feb 2024 08:22:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5650940149AA
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:22:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08FE183B7E5
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:22:41 +0000 (UTC)
Received: from ZAF01-CT2-obe.outbound.protection.outlook.com
 (mail-ct2zaf01on2095.outbound.protection.outlook.com [40.107.19.95]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-ZjwTERq6On6HSc0PVtCmUQ-1; Wed, 14 Feb 2024 03:22:38 -0500
X-MC-Unique: ZjwTERq6On6HSc0PVtCmUQ-1
Received: from DUZPR01CA0262.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::24) by CP7P275MB2090.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:100:44::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 14 Feb
 2024 08:22:34 +0000
Received: from DU6PEPF0000B620.eurprd02.prod.outlook.com
 (2603:10a6:10:4b9:cafe::52) by DUZPR01CA0262.outlook.office365.com
 (2603:10a6:10:4b9::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26 via Frontend
 Transport; Wed, 14 Feb 2024 08:22:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.224)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dmarc=bestguesspass action=none
 header.from=csir.co.za
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.224) by
 DU6PEPF0000B620.mail.protection.outlook.com (10.167.8.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Wed, 14 Feb 2024 08:22:32 +0000
Received: from ip-172-19-0-178.eu-west-1.compute.internal (ip-172-19-0-178.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4TZWQc0KHHzTgVN
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:22:32 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 1b7223dea58841b0be3a406b7b8fe389
Received: from ZAF01-CT2-obe.outbound.protection.outlook.com
 (mail-ct2zaf01lp2169.outbound.protection.outlook.com [104.47.19.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4TZWQZ2KZVzqSHZ
 for <blinux-list@redhat.com>; Wed, 14 Feb 2024 08:22:30 +0000 (UTC)
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 CT2P275MB1116.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:22::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.26; Wed, 14 Feb 2024 08:22:27 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::7b14:4d4a:32b9:7458]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::7b14:4d4a:32b9:7458%5]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 08:22:27 +0000
Date: Wed, 14 Feb 2024 10:22:13 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <Pine.LNX.4.64.2402140101510.707021@users.shellworld.net>
Message-ID: <3a070254-d4c7-ba75-d39e-cee5ac970d62@csir.co.za>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
 <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
 <Pine.LNX.4.64.2402140101510.707021@users.shellworld.net>
X-ClientProxiedBy: JNAP275CA0026.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::10)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: JN3P275MB2310:EE_|CT2P275MB1116:EE_|DU6PEPF0000B620:EE_|CP7P275MB2090:EE_
X-MS-Office365-Filtering-Correlation-Id: cdcdb60e-66d2-41b1-9bed-08dc2d36175a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0
X-Microsoft-Antispam-Message-Info-Original: BSkWBaLlUZ1dIlvEbKjRr6CcLi+EqvYjriiX7GC57vAqrBW1XBuY/W7EzsrWhS1atBV8NgC+/dt5WINSY6YRTis0/wpBfXPUTvgcPg0VbKWeLbMxXJBkGfhf+wyRJwxkFx+nx/PvOQF0Un4r4YJaOV1XviASAixR2Fb3ITz2itFYnW9nqDLK3cBk0GPdh74cy0BsarNcVqRQLKplaoeZAuhMQrjAQMxxjrATk1FsRpLMVqvMUMzC5ap1CPf7xo9D8YzYasu60T/tC+VfPqV9EaYiPPAVu1C7PEVgehJwd3UhM7Ze0hqfY2+ocyPXbFi/o/leJc9P7ICz+QxumNnQmS4f6gzfYlrspxnOuqUbAdCaExW/tKHIS23FcpEqxR4p6TNyy/HT8elaOLrJev/MJ/eJ8ng8qQ2g0Sf2RZli7MMwA2Z0m/GfpQBgmwlLluU6lGrYn+jjRbnqQ1pnUEpI4HfFqCp/xdYZV1yNcdNy2KkeDF1pLcaB66c94uXnX9MJrmkyacCml09k1leg5rvvJ05tHKtj1XXJdn4KqLGDLuus8VufpSb+bxfwum/rMNoq
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(136003)(396003)(230273577357003)(230922051799003)(1800799012)(64100799003)(109986022)(451199024)(186009)(31686004)(86362001)(83380400001)(38100700002)(31696002)(3480700007)(36756003)(2906002)(5660300002)(66476007)(66556008)(66946007)(41300700001)(8936002)(8676002)(4326008)(316002)(6666004)(478600001)(6486002)(6506007)(6512007)(26005)(2616005);
 DIR:OUT; SFP:1102
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CT2P275MB1116
X-Sophos-Email: [eu-west-1] Antispam-Engine: 5.1.4.1,
 AntispamData: 2024.2.14.75115
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_2000_2999 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, DOMAIN_OBFU_DOT 0.000000, FROM_NAME_PHRASE 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, IN_REP_TO 0.000000,
 LEGITIMATE_SIGNS 0.000000, MISSING_HEADERS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 TO_MALFORMED 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000, __CT 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_NEGATE 0.000000,
 __FRAUD_NEGATE_FROM 0.000000, __FRAUD_PARTNERSHIP 0.000000,
 __FRAUD_URGENCY 0.000000, __FROM_ADDY_SHORT_LC 0.000000,
 __FROM_DOMAIN_NOT_IN_BODY 0.000000, __FROM_NAME_NOT_IN_BODY 0.000000,
 __FUR_RDNS_SOPHOS 0.000000, __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000,
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MIME_BOUND_CHARSET 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PASSWORD_IN_BODY 0.000000, __PHISH_PHRASE_NL4 0.000000,
 __PHISH_SPEAR_STRUCTURE_2 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000,
 __SCAN_D_NEG_HEUR 0.000000, __SCAN_D_NEG_HEUR2 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __URI_MAILTO 0.000000,
 __URI_NO_WWW 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: d146a3c07f4c46128fc7e61610463167
X-Sophos-MH-Mail-Info-Key: NFRaV1FjMEtISHpUZ1ZOLTE3Mi4xOS4wLjE3OA==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DU6PEPF0000B620.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 39b3b6f2-bb3f-43f0-67f8-08dc2d361432
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: kHgEN38BvrlwE151VpvH6YwXPif5wFkObWLUlTlZrzhUWV6TZd0L/b/zxMZ3AGAGDdDJZ2q9lOqET01kE6eGgsW+86/TU0avltwnCLn5fyRwCseVL+qtZXwYufWrwcMO1GJFx7fT41ESbE7nAY35hmQtlFnWcNVNoSiV2ddyuRIhwGtz0PNY0mZBV5pZpUovlljajxvuzGc7C29FGcBfBaJU7257SC/xykuo4TseFDWMa5leyp+SOiPxgGc9oqWJ2s2NHGiRhI8QchgtfBaAt9Gu18E51MpIWxWS6P/tdq3tobcK1MyLlYnLgHA+aXVmux9EsHhxHaryr6N6pp0/240+vLXOKYGuyMTnGQUnoNNhKpNcQapbADceWxcHUDW8GBWtGVy39+b4dQLXbNH6llXf1DbKa4OG/Cgt6Y+/ht6E+YvwcmxBxa9NV9Q13h5aJs9A7wWdm+Vf21BOoq0SIRvGar0cBZK56vgTQjhOswIaqP2BxQW5dQBUY/xag4MODoBe3LWKb5qb54aQ5vuEtI8VIMslzQiZ5zMNP0HcsdQFvLQoc8UV7ecRtcZnYMny2W/rp81lw/F5extDVPxFEdn8BJV3fAOphpNj2F5xkNU=
X-Forefront-Antispam-Report: CIP:198.154.180.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(39860400002)(346002)(376002)(230922051799003)(230273577357003)(451199024)(109986022)(64100799003)(186009)(82310400011)(1800799012)(36840700001)(46966006)(40470700004)(31686004)(6512007)(6486002)(478600001)(41300700001)(6666004)(2906002)(8676002)(8936002)(4326008)(5660300002)(6506007)(316002)(70206006)(70586007)(2616005)(83380400001)(336012)(7636003)(31696002)(3480700007)(7596003)(356005)(86362001)(36756003)(82740400003)(26005);DIR:OUT;SFP:1102
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 08:22:32.2597
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cdcdb60e-66d2-41b1-9bed-08dc2d36175a
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.224];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: DU6PEPF0000B620.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CP7P275MB2090
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 2
X-Mimecast-Originator: csir.co.za
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: wvdwalt@csir.co.za
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of wvdwalt@csir.co.za designates 40.107.19.95 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
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

Hi,
You could simply remove your known_hosts file from your .ssh directory.
When you then ssh into the machine it will behave like it is the first 
time you connect.
If you are worried, just move ~/.ssh/known_hosts to your home directory 
and try connecting.
If it does not work, you can always move it back.
Regards, Willem

On Wed, 14 Feb 2024, Karen Lewellen wrote:

> One more quick question after I just did a search.
> There seems to be a command line option that turns off strict host key 
> checking.
> Where do options go for ssh?
> or should I run that command with  ssh-keygen instead?
> if so,  what is the syntax?
> Thanks,
> Karen
>
>
>
> On Tue, 13 Feb 2024, Jude DaShiell wrote:
>
>> First delete the outdated key since it won't work any longer, then login
>> again and a new key will be added for you by the external server.
>> ssh-keygen -r hostname
>> should get that first task done.
>> When you log in without a key you'll be asked if you want to trust the
>> system and your answer is yes.
>> That adds the new key and you're on your way.
>> 
>> 
>> --
>> Jude <jdashiel at panix dot com>
>> "There are four boxes to be used in defense of liberty:
>> soap, ballot, jury, and ammo.
>> Please use in that order."
>> Ed Howdershelt 1940.
>> 
>> On Tue, 13 Feb 2024, Karen Lewellen wrote:
>> 
>>> Hi all,
>>> Will aim to keep this simple.
>>> is there an option with ssh from the command line that allows you to 
>>> update
>>> new keys for the known host list?
>>> I ssh into my dreamhost office workspace from shellworld, as in
>>> ssh email@email.thingy.
>>> I provide the password, reaching the dreamhost shell structure for the 
>>> domains
>>> they host  on behalf of my employer.
>>> dreamhost moved our services to a new server, changing our ip address, not 
>>> an
>>> issue, but also changing the fingertip keys <hope that is the correct 
>>> term,
>>> previously saved  for my access from shellworld..who seems to use a strict
>>> matching process of some kind.
>>> My hope? is that there is an option that tells ssh to update the 
>>> identifiers
>>> used for known hosts?
>>> 
>>> Thanks,
>>> Kare
>>> 
>>> 
>>> 
>> 
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

