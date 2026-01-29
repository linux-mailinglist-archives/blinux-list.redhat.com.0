Return-Path: <blinux-list+bncBCA2Z2HI2EIBBFMZ5TFQMGQEHHTSJ5Q@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULK4CJ0Me2nfAwIAu9opvQ
	(envelope-from <blinux-list+bncBCA2Z2HI2EIBBFMZ5TFQMGQEHHTSJ5Q@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 08:30:37 +0100
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F760ACA26
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jan 2026 08:30:31 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-894878d9b91sf17783976d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 Jan 2026 23:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769671830; x=1770276630; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:message-id:in-reply-to
         :subject:cc:from:date:authentication-results-original:delivered-to
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UkTyujBH02JKKa+y9NH5kuw/pr+OV09GfNPf/392DU0=;
        b=CxnMfaLaerU5fYLHe+hFIy/ahLr47xhs3eSN9umFLcvT6gk/4Cwh1/aZrXvDDlNiMb
         AhYM9d/PwFGrarVW7o2Z9lGCNOdpqrzMd+lC5epN10JCCfPcCVTPxFO2hlxfZNp4MrYd
         otEAqGbMkHSn78gpib8+liN/NUWhfmTy30yS4kWgh2PDtOg3YxS+OrVbJfvhpEC6Ksol
         CeYu3kjQ0y+rWM742HX256n2x4Teo4r5B/28ldL1xnpmZTHXoVpzbQVafUoBWGrq/WDY
         Jw07TwRohk41jj5OWGm+hXZNA35Jh2rN24fRQz2OhY1HI2TtCi0307bqcRFYAGKWazHK
         SNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769671830; x=1770276630;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:from:date
         :authentication-results-original:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UkTyujBH02JKKa+y9NH5kuw/pr+OV09GfNPf/392DU0=;
        b=MZg18/Cbv7whP1j5YH8VfHCmzMtERyk/3VC+9ogBqEuKXgKAczr1GZGYMQ48iAHqS1
         aVIv9C2/MfZHSJEzTSOAAWKxmh3Kt+u/VDSa+89aigy5Hf19vGT/jG4+PNPVVh4cvqm7
         EWPSvoMzs0u6X+2U5vzgAXQK3xS0JUXBukkM0lUN3P+bddoB2UsD6UEZpkAP0kBmNWBG
         CjGpDkJs0PG981hZkQ1QA6dNI1VAUJs+8F1k/oDPEB8gzx+uYzlDErKEW/Df5+sz/nOH
         3CX/kOkgOE2gG9xL/I650qgeIA/CqU7NPL6ZozRxY3tXdaeCZ3hQov3ufMRDEpbmP5Mn
         Zu5g==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=4; AJvYcCXpLlFvn5cZ4bFuyK5gzEuuWwV/9apbCoRJ47KsrJ6+A8nzCfwYR0iydlADX8KUged98MjM3w==@lfdr.de
X-Gm-Message-State: AOJu0Yw3i4MtGX5pH3PnQ0q9SN1xoEA8qJ4Es/Rg1qJ1I6lCdUJYLKpl
	3Jdcifg9jyMS1z6aIO0p7rfSTu5GkzQfHKPPuothFopa+2eDYT+/VoDmCtt1P9O4at8=
X-Received: by 2002:ad4:5d6a:0:b0:888:81bc:93c8 with SMTP id 6a1803df08f44-894cc8118d4mr129164336d6.23.1769671829854;
        Wed, 28 Jan 2026 23:30:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+EyDWgWX8MqzmkKkEBkZrnLgD9nTBtmhiMofTQs2io+dg=="
Received: by 2002:a05:6214:2aa7:b0:890:5973:709e with SMTP id
 6a1803df08f44-894e0b30da7ls7574536d6.0.-pod-prod-02-us; Wed, 28 Jan 2026
 23:30:28 -0800 (PST)
X-Forwarded-Encrypted: i=4; AJvYcCV2JyjdZsHu+J2ZmVQcEwSrMLQ2YOi3gGVzVszYaq9faO1W7lojIuAyTlgR0XysLYJtFLf31X+6bYsc+w==@gapps.redhat.com
X-Received: by 2002:a05:6214:29e2:b0:880:501f:608 with SMTP id 6a1803df08f44-894cc90bd4fmr122311066d6.46.1769671828579;
        Wed, 28 Jan 2026 23:30:28 -0800 (PST)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-894d37e0ba8si45816376d6.354.2026.01.28.23.30.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 23:30:27 -0800 (PST)
Received-SPF: pass (google.com: domain of wvdwalt@csir.co.za designates 40.107.145.137 as permitted sender) client-ip=40.107.145.137;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-210-Ggjb-WHsNBa5WitgJs4sFA-1; Thu,
 29 Jan 2026 02:30:25 -0500
X-MC-Unique: Ggjb-WHsNBa5WitgJs4sFA-1
X-Mimecast-MFC-AGG-ID: Ggjb-WHsNBa5WitgJs4sFA_1769671823
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AA1AB180034F
	for <blinux-list@gapps.redhat.com>; Thu, 29 Jan 2026 07:30:23 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A54933001DB9; Thu, 29 Jan 2026 07:30:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A0B383000218
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 07:30:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1928418002C8
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 07:30:23 +0000 (UTC)
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1769671822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=QddwbJO6OqqFDeK75fKn3yk1KWdM1uCP+QMk5HTQ3w0=;
	b=S7D0JGfBnjMQSNOz00PWKz+/COMtJ8/Gfntyh1ZDErTummRAz2PisjCbuU0x9ozXqURnqF
	q0ST5a0hMmTwIAZIy1I7ZVN+87B+Toln6vDPgw0vbGzsv90g2k080f5A1cpWt3lfNDvSpf
	+1bYYBrjGnPnm59oK+nJ5QQVbk7PaVh5QGWDqpih1xOgx/aFtPjT1PO06eXJw5qN09Yuqx
	v+CRQNiF9lwHMGwjgi1KfqNPpTGUKaZVVHbdbgXY+Jzh/vveSOdk8RLnviZe+PeKLcebju
	uKq+mL4WnkYf1Ff0nuJEVZ+Yyq3OFUkdA4AVz2s8rcsx3JLyxs/d9W6wNHk7Mg==
ARC-Seal: i=3; s=201903; d=dkim.mimecast.com; t=1769671822; a=rsa-sha256;
	cv=fail;
	b=YBIFE5gtqipQhK/MW9dEH9wM7N1am00D1ckgnOwvGkyvlaz0NblImW+3UadVqa23E4Eqqd
	UiPOlV1Tvd0v+skUfBDQwZjjViW1InDtBURVYQL/qF7T62xflcg8QuJBPA4rdWUSFQeg+q
	35iqupu5JaM8xrSdC2v7qe49/u8j28O4A0eJ7S4cMd1bh1XXKSN3k0SZ+I+wEeYDobk33w
	6PBOEeXBFf9uMPCGE9I5VXLLOyY0IczJwwLDUNTC8HLYuB287Kw+E50Dxo9wAbcR9kDZE7
	mP78qhYNaBkjFNUD20ogttAe/Ve5bcS8644yKF/dnGyCkZU17LNmxmFpkZad5Q==
ARC-Authentication-Results: i=3;
	relay.mimecast.com;
	dkim=pass header.d=csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com header.b=mp7g+KJ4;
	dkim=fail ("body hash did not verify") header.d=csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com header.b="kBJg91N/";
	dkim=fail ("body hash did not verify") header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.s=v1 header.b=YFC3J+Vi;
	arc=reject ("cv is fail on i=2");
	dmarc=pass (policy=none) header.from=csir.co.za;
	spf=pass (relay.mimecast.com: domain of wvdwalt@csir.co.za designates 40.107.145.137 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
Received: from CT2P275CU008.outbound.protection.outlook.com
 (mail-southafricawestazon11021137.outbound.protection.outlook.com
 [40.107.145.137]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-270-05cI_yn9NMKslF7Fd4EgtA-2; Thu, 29 Jan 2026 02:30:19 -0500
X-MC-Unique: 05cI_yn9NMKslF7Fd4EgtA-2
X-Mimecast-MFC-AGG-ID: 05cI_yn9NMKslF7Fd4EgtA_1769671819
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=fail;
 b=FA2B15Cjd6ElPSyByIQVO+A6NVTqMoi11sqlZTgJVoEBTRG4ALjjQcX8NL7JE31RQ4O9qYiQmpXayvybEs1liSptkkBblCEL39cr4tTtOGJ0XERtujNDdK8aDAwXS8znjDwum0L7XTnlvmpMktlzgk1q0AfyvTIJ2jO70keCl36MjDW9AWwE6ECPHMJBoGvoF+4KTLbKnZVosnwLxZuBVUumkUVwvyt8w0vVJ9KH9//owD2mTld0O6m4u6qjxDAtGxmu5NNT7dr9qBb7kSXF2CSRSSOS92xhhvdlGLSA9VwQ9ODDvi6ocABGX+xPv4fcZb/ZmEsBnK9QfT+Exyl5Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QddwbJO6OqqFDeK75fKn3yk1KWdM1uCP+QMk5HTQ3w0=;
 b=TepolcsMkBGmpGKIqN0ZKoX+w/YEJq5rfd6KxHA8gXNWwMa7qCazhVCQVg7LwDorEQQ1p3W8ZgZSSiQio/zsJPFpJeeEnDNMG4UdbsGd8dwo0cI5W0hdz/xhjsoTTndbZsveMhksNdzUi8Gks3YNhWAZSiFAz4fpPzG6YANCdkMYVxnopo1Q/J0pWk5Vv4h6+cRyI47GQHDgzhM8HutwYfj0nAdT/d2CL5OnmXJy7AgcWGJVnbA5PSPe2nHE3Y3y+R6P1AinPvuemt1CnmX/PhBpffD5tbJd8uJx0/9lk9hm9LYKkeEvL/jGftdI1WLUrfgO38wlardUlbxdfOBRVA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.224) smtp.rcpttodomain=redhat.com smtp.mailfrom=csir.co.za;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=csir.co.za;
 dkim=fail (body hash did not verify) header.d=csircoza.onmicrosoft.com;
 dkim=fail (body hash did not verify)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=fail (47)
Received: from CT2P275CA0055.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:24::13)
 by CP7P275MB1362.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:31::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.10; Thu, 29 Jan
 2026 07:30:14 +0000
Received: from CPT0EPF0000071B.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:100:24:cafe::ab) by CT2P275CA0055.outlook.office365.com
 (2603:1086:100:24::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.9 via Frontend Transport; Thu,
 29 Jan 2026 07:30:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.224)
 smtp.mailfrom=csir.co.za; dkim=fail (body hash did not verify)
 header.d=csircoza.onmicrosoft.com;dkim=fail (body hash did not verify)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com;dmarc=pass action=none
 header.from=csir.co.za
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.224) by
 CPT0EPF0000071B.mail.protection.outlook.com (10.167.241.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 29 Jan 2026 07:30:13 +0000
Received: from ip-172-19-1-86.eu-west-1.compute.internal (ip-172-19-1-86.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4f1rQD10bjzvRDq
	for <blinux-list@redhat.com>; Thu, 29 Jan 2026 07:30:12 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: de80260ffe96434ead8dcee7dd3ab898
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazon11020141.outbound.protection.outlook.com
 [52.101.161.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4f1rQB2BXfzTgD6
 for <blinux-list@redhat.com>; Thu, 29 Jan 2026 07:30:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uZeeiOtlXV6bi5wCcQMJjJhjRKbAyQMmD7vP5EVCNF9CD809xvPWIQZ7XjoKXPoajccCBLydaRMYQfAaMW2YedjaATXTksBPxgV0ZtDDejn/YOHKFFKUjE3sNE2IjAHkhxAigCXt1Aiethdo4FIYpokhvNqEDsyr4N4IOcJtY0doR3xZHEOhgmSozGPjT6NvBUNOvnT51VHeMGtdVMnJu9UhJIsVP7C0NmiIm3Bp89OAi8zw60qhikcpddmHSPsv5rfW8pd605ao4bIMdRsdNb+rCrAb+6XVMckQQZRXDc1Tt31dxeJdy0/YwdidoUV8CyIVcI5k7+drlagNSJMvJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5uLvKTs6QD+1706PAmDmj9ke+PsiroRessIJYw65MdU=;
 b=vxV2YNq4a2HB+xRqIcgM8XZan/htdmJqlNpOeJe8aKwugO9NeymCBgw16NJnuT25fO6lEtkSz7d3LOP7uHZtRutP1eycvk2l8hczoU/Rod4yqDIntZzw4+HSYgGdMKhxXW8U6zMSKvFc4ZzaRbNqkitOusRawNS6HfJiZlfkrkIzfG6QPJesD0ttPTaiFt6P4GN+URFbgzJeqqTFGYGKW4k1JnlNspUWgfZjyV7uUHh9HGCqQyZ1UrrBIrB7LpFvk5K0A7fHUua33lfkU/u0hcy5TMHbN5FASgm9Rgf5x+GKVMxdicLgbun1AZsZAw78ozVli6u6tQbH0C3cL+b7EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN1P275MB1813.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:79::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.7; Thu, 29 Jan 2026 07:30:05 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::a11b:32ef:8eed:d91d]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::a11b:32ef:8eed:d91d%6]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 07:30:05 +0000
Date: Thu, 29 Jan 2026 09:30:05 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Sad to hear about Didier
In-Reply-To: <CAM+Q2c7c+M3ho66a5Kq8R_DERW_G6WPsUvrTkNovhEKWqTbBBA@mail.gmail.com>
Message-ID: <37e953ad-9a08-c124-0ef7-037fc78a4dce@csir.co.za>
References: <CAM+Q2c7c+M3ho66a5Kq8R_DERW_G6WPsUvrTkNovhEKWqTbBBA@mail.gmail.com>
X-ClientProxiedBy: JN3P275CA0035.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:ca::7)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: JN3P275MB2310:EE_|JN1P275MB1813:EE_|CPT0EPF0000071B:EE_|CP7P275MB1362:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a5af20b-5f30-4b81-a5f0-08de5f083e42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|1800799024|4022899009|376014
X-Microsoft-Antispam-Message-Info-Original: =?us-ascii?Q?xmOz7ICnwW8cWT7ZxEyTBrpPypJ7713s1CaGRFJpIiYUQ1w8KyqnjbsiPPWH?=
 =?us-ascii?Q?mdSiN1sahnGRUB+T1eHgV1xqe8tCeV7zlW0NwWol7Q6F5cHghi30DqTh5jlB?=
 =?us-ascii?Q?spoFW36GoPZO5vwe2F3W2pwxWW8tl74WAMkulQ7f/4qtTNdRmC4hjKUX01rr?=
 =?us-ascii?Q?QWVqES6oeSBtT6XhTlY0bcUGY57e0l0XBsEPsTJOnTn7X31oJ/i+T4NfJdiK?=
 =?us-ascii?Q?R32tCwOiS1YY0wQKZ+Ryr2rXm1YOrzYePkaZbnrXuu7lWA1078qJ9OKSKdDT?=
 =?us-ascii?Q?g8FxkwNBFb4th5ky1Aw7NUkqO26TXh+hPWf7bEpd2YxJKEnD8rtkISL/opTQ?=
 =?us-ascii?Q?03TZRbP5upcVye0LRL+3Xw7hS7Rm43c7WrmoSDPtnVvN4MEnVHdl2E/7irb3?=
 =?us-ascii?Q?hvz45wATZCpsQ6RGRuDdtwQHK+pkBRQMbKEHu+IFW0uZ2rP+zJO0FPfcSCbZ?=
 =?us-ascii?Q?mg3akauIYZtUovefOyVsYG/ERT5TDsCB6QTlEq437S+ZYil4u9FI13+A1T3s?=
 =?us-ascii?Q?ooAYEKhjySdqY/eEJRdKxZXBwKW4CFjjl6JiIF8T0WzODtDOzO09yoW/2KNU?=
 =?us-ascii?Q?hif2p2UHFDnhjurWXuaieaXimGg7t8LavCwxoFDFf6dI6byYHAFCPGkG/rA0?=
 =?us-ascii?Q?3hnj7K2T0INz8qRAEZjvqIRGSK9K5iObJqC++5Qd1DDu/ikks0BOKqMeGF3D?=
 =?us-ascii?Q?dACvBt95VGEi9CdVcJknQqgzpDShnszybMYF1gKbz+WFSbTembfERipSLW+0?=
 =?us-ascii?Q?ljirZtPDyyLsLtex1lJB6eTFMStgUOhYRGDdzcaD3+fedJq/IWI6RUd1Rl7Z?=
 =?us-ascii?Q?t0A+DKKE8QqCSKAu1Gs/nBiWwGxV3VXVd8k1aCrJogGpG/004P8+jfJpLhgZ?=
 =?us-ascii?Q?0XSMqTbPMT0vccIFnVtBIPDqI0q3aHOnvTQSwstFk3rRUs4MYuizlvu1psBR?=
 =?us-ascii?Q?XgjMfxGfSlBQ/ogeTyPYokJBe8N80C23TCDO+s1NaXSortigVP9ZeALJwDOd?=
 =?us-ascii?Q?uiVrbAE/+OA2hzOCV4boHvMBByVO+wHYVdFawpV8+XcQkCZ3yQjBKqGGdgWB?=
 =?us-ascii?Q?ddkMbhkY97+FTqMAp8oV4UJUDRstwOsRGiQp2LFBy3DM+0Hu+PcYdEFWui2J?=
 =?us-ascii?Q?shCV9H99kSx6cnPwAxq5eJRwU9tj/2azZ0S/Xbn4evsRjfgZryZacHUeaglJ?=
 =?us-ascii?Q?TOzVB7VMrJT6Hvx/L4OdZ4dhQnHoHfFSFosTHzGIVkJXc+7pje7Wfi7jnkgZ?=
 =?us-ascii?Q?RqjX5aK8IbUuBn/EJs6jU6uN23LB0Du+N1wc2mIXB507n614wMLwmw+XBJNT?=
 =?us-ascii?Q?ahYrAHK8eXFdKJXtV2gu81hmFhPQ+ItgowRuVMUdHbr8+lPUT939IXqmqn7A?=
 =?us-ascii?Q?0RsWnA24N8yjCrtNB/liF84vvggL4kwukWpzeYxdvKF82lFBvZ/72QhnEO73?=
 =?us-ascii?Q?p4XlKaMztgCvOKT0P9bPuR3pTYsbZaVO8vghrW+sshEmyVbWpUUB90RrBkGo?=
 =?us-ascii?Q?2NgQ/L7rUrmy0iA=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(366016)(1800799024)(4022899009)(376014);
 DIR:OUT; SFP:1102
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB1813
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.3,
 AntispamData: 2026.1.29.65719
X-LASED-SpamProbability: 0.085099
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODY_SIZE_3000_3999 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MIME_TEXT_ONLY_MP_MIXED 0.050000, MISSING_HEADERS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_FUR_HEADER 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 TO_MALFORMED 0.000000, URI_TOC_SOPHOS_NO_ID 0.000000,
 URI_WITH_PATH_ONLY 0.000000, __ANY_URI 0.000000,
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
 __ARC_SIGNATURE_MICROSOFT 0.000000, __ATTACH_CTE_8BIT 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __CANPHARM_UNSUB_LINK 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000,
 __CP_URI_IN_BODY 0.000000, __CT 0.000000, __CTYPE_HAS_BOUNDARY 0.000000,
 __CTYPE_MULTIPART 0.000000, __CTYPE_MULTIPART_MIXED 0.000000,
 __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000,
 __FORWARDED_MSG 0.000000, __FRAUD_BODY_WEBMAIL 0.000000,
 __FRAUD_INTRO 0.000000, __FRAUD_NEGATE 0.000000, __FRAUD_NEGATE_FROM 0.000000,
 __FRAUD_URGENCY 0.000000, __FRAUD_WEBMAIL 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000, __HTTPS_URI 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __INVOICE_MULTILINGUAL 0.000000,
 __IN_REP_TO 0.000000, __JSON_HAS_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_DOMAINS 0.000000, __JSON_HAS_TENANT_ID 0.000000,
 __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_TEXT_P2 0.000000, __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __MULTIPLE_URI_TEXT 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __O365_BANNER 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_SPEAR_GREETING 0.000000, __PHISH_SPEAR_STRUCTURE_2 0.000000,
 __PRODUCT_TYPE_MAILFLOW 0.000000, __REFERENCES 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000,
 __SCAN_D_NEG_HEUR2 0.000000, __SL_HEAVY 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __URI_IN_BODY 0.000000,
 __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000, __URI_NO_PATH 0.000000,
 __URI_NO_WWW 0.000000, __URI_NS 0.000000, __URI_TOC_SOPHOS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: dd785c5b709c425b8f09ef3acf78650f
X-Sophos-MH-Mail-Info-Key: NGYxclFEMTBianp2UkRxLTE3Mi4xOS4xLjg2
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: CPT0EPF0000071B.ZAFP275.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: d09358cb-956d-4159-f083-08de5f083928
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|4022899009|35042699022|376014|82310400026|14060799003
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HTf0llqsAFk0FYudahjGLgcqgTZozpy2uDOdkKPH4muelSTakND2xLQecxoj?=
 =?us-ascii?Q?2VJKj7IJIgf60Fptigipiro55Z8MrNV8fPf/C0VtwHH09Urd5ARTAArT9mZ1?=
 =?us-ascii?Q?MQPA3BOQ86JkXmzkMKPfslDubmuVF7rCxXwmO+EIz7GSQO1k3ck3BO5zP2YP?=
 =?us-ascii?Q?qNmn2YMAXh4sx0uZys+1cHbLNRD8fRavSAGYdDun6xnATwnwcKmRBUB/isbp?=
 =?us-ascii?Q?9rHpwCBhDnXR85IHumFuMr5CTIEbWYVWpMHkHwH0UfAZigdKnsHoMcxIozz9?=
 =?us-ascii?Q?h+AtpgxaxuaoGFdrFy3jrkgN+2JJNjDgVOJ3YbUWG/qt1MCYuB82eSYNwvlM?=
 =?us-ascii?Q?r9lS0mIhrCvh5yZNeQBARDmIUOC/00btJ2ajSjgifw6aer937NFiNbGKQrv6?=
 =?us-ascii?Q?dSnOzhsniEsO1RSfe+cZbyLA91suoCbCcbSebG51H/WJydmR6+Rj8gTpX40q?=
 =?us-ascii?Q?x+MAqq5v3TmDkkxcZSZo+XjvRcRyoYghQ4ewrUi8z9pTifTvviLOAZaJK8vM?=
 =?us-ascii?Q?esiA3SbBNr+TW29cNcn/ZgpjTnTsa40uQtqeo7BgKYi17M0+/4CVsU2FwL13?=
 =?us-ascii?Q?5oq7HcNfFYBc2outaUhy9BQ3qIuChLyjFInaXoF8TU8NdCjHyf0Bi1VZP6et?=
 =?us-ascii?Q?oYsUMD1gIbxJ0r24KrtWIM71BQuOFTGeRizjzG+sQXZJUKmcLAnxBEfdsGsP?=
 =?us-ascii?Q?BCGgApvomPvbYj0IWC+w6HzQZGMK+dFJPeNSqSbojGTpeb6MFZUA69goIrbB?=
 =?us-ascii?Q?fyWy7htt3n0ts8YKnDeI+x1agVJqzRAo7yGBE4HidOH8xH35I181le/EiQcE?=
 =?us-ascii?Q?vdlSmSEqJ7G8aBUJY359wKJwdk/LXmxdnZ0rahsbQoKzxBStJFwQL045T9YH?=
 =?us-ascii?Q?a804Czz1PpQbqaErzQ3cDyPsq3K3GhhLQ5lS6nbsP8TpGAiYdM0Pi0DAMe7b?=
 =?us-ascii?Q?/zdwNK1i3MaIRs0ezPKbVhfWQ5E4YbLqxQjM1UzWRHRz4SXnlsWiW4VLsNzn?=
 =?us-ascii?Q?vhe1QPlWtbcw1VeK/dP2GJMxxuuOo8nX4ZKlXTtu3vwDqk5ZEi9WXOj61vtt?=
 =?us-ascii?Q?vR6SLTvXw8PKKyFe8VIPOQOaPkcI23DKzHXXPxq/YTNJXxtt4tevS+fe/yJN?=
 =?us-ascii?Q?BYUMOgtrThRx60JcJoUynkb6jGXU7gDu/84xBIA+8uAMriW1jxxjXNmsRx8d?=
 =?us-ascii?Q?qWUaof4ewaX4VR4zg6R3LiCzWW+DaVWwYv7bC/FGC3W90W9hdWjmpR7TyfB0?=
 =?us-ascii?Q?hc/q9MNnLqJhuvmpqYN85s/0jtUm6fJwKJyq13+ADQBSnRmNX46XcEd/q84x?=
 =?us-ascii?Q?Gnkb78Qr+fLhIC7qzXbM4NTDbm/cHLgNwtd6iUiB/auAU1ynv06Fb7+JT3ZC?=
 =?us-ascii?Q?FCfW2HdS27DdUmxSBaCjHP1KDQV41OBD7egIUsN/5zb1I26UPREK49agfi43?=
 =?us-ascii?Q?JEkVdQGSLH+G+U4XFLl6+DDUR/PiuIE31xyCaBEFtVL+rOsnzvg590asPJ9Y?=
 =?us-ascii?Q?RaTY16A+dOdzfulP5/qTFDMlWt8XgWJtU8yUy5bKblQAtKGGWOnnAcR/rOKv?=
 =?us-ascii?Q?FKSQgVzI0ZTUbACl9oc6rZgdTE/vBVk6KrvPU5BwjzhqSjfhEHmzPQS0agNm?=
 =?us-ascii?Q?mA=3D=3D?=
X-Forefront-Antispam-Report: CIP:198.154.180.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(4022899009)(35042699022)(376014)(82310400026)(14060799003);DIR:OUT;SFP:1102
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 07:30:13.7064
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a5af20b-5f30-4b81-a5f0-08de5f083e42
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.224];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: CPT0EPF0000071B.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CP7P275MB1362
X-Mimecast-Spam-Score: 2
X-Mimecast-MFC-PROC-ID: MQuPzv5IYWae8xpV3Iwbi4nhfay1Pp7MxAj_hpB2rdI_1769671819
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/mixed; boundary="1407934472-469921374-1769671805=:2890"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: wvdwalt@csir.co.za
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com
 header.b=mp7g+KJ4;       dkim=neutral (body hash did not verify)
 header.i=@csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com
 header.b="kBJg91N/";       dkim=neutral (body hash did not verify)
 header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com header.s=v1
 header.b=YFC3J+Vi;       arc=fail (signature failed);       spf=pass
 (google.com: domain of wvdwalt@csir.co.za designates 40.107.145.137 as
 permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	MISSING_TO(2.00)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MAILLIST(-0.20)[googlegroups];
	DMARC_POLICY_SOFTFAIL(0.10)[csir.co.za : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bncBCA2Z2HI2EIBBFMZ5TFQMGQEHHTSJ5Q];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[16];
	FROM_NEQ_ENVFROM(0.00)[wvdwalt@csir.co.za,blinux-list@redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_SPF_DNSFAIL(0.00)[-any];
	TAGGED_RCPT(0.00)[blinux-list];
	REDIRECTOR_URL(0.00)[sophos.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-qv1-xf45.google.com:helo,mail-qv1-xf45.google.com:rdns]
X-Rspamd-Queue-Id: 6F760ACA26
X-Rspamd-Action: no action

--1407934472-469921374-1769671805=:2890
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Good day,
Didier's contribution went a lot wider than just Slint.  He was always=20
prompt and thurror in answering.
The blind Linux community will miss him.
Kind regards, Willem


On Thu, 2d9 Jan 2026, Jackie McBride wrote:

> Warning!s This message was sent from outside your organization and we=20
were unable to verify the sender.
>
> You don't often get email from abletec@gmail.com. Learn why this is impor=
tant<https://eu-west-1.protection.sophos.com?d=3Daka.ms&u=3DaHR0cHM6Ly9ha2E=
ubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0aW9u&p=3Dm&i=3DNjU0NjA2MWRiMzM3ZDM=
zYTFlMGNmNmY4&t=3DNXBoeWk1WjVxR0loMEw1YU9OZWFqSi9TcDJYOW90VHoxWU1lQlJnUC9oS=
T0=3D&h=3D100a4574ff864d06aceec165d683aa7b&s=3DAVNPUEhUT0NFTkNSWVBUSVb_qWJZ=
PX62TGtRFPUEf08fFBEnvaQWeJDQMrHkmB0G8y0a9vs4Nb3Jtn6LJq6taaDn_6_TrOfoslYxysi=
dPo3x>
> I just heard that Didier Spaier, the author of Slint, has passed away. We=
've lost another champion.
> https://eu-west-1.protection.sophos.com?d=3Dlwn.net&u=3DaHR0cHM6Ly9sd24ub=
mV0L0FydGljbGVzLzEwNTYzODQv&p=3Dm&i=3DNjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=3D=
WTNMTkVaT3ZQaVE2MGJINVprclF5UmpLbDVzQjBGRGdSYXlCVVE1SkVmZz0=3D&h=3D100a4574=
ff864d06aceec165d683aa7b&s=3DAVNPUEhUT0NFTkNSWVBUSVb_qWJZPX62TGtRFPUEf08fFB=
EnvaQWeJDQMrHkmB0G8y0a9vs4Nb3Jtn6LJq6taaDn_6_TrOfoslYxysidPo3x
>
>
>
> Jackie McBride
> Proofpoint Certified Email Authentication Specialist 2024
> Author 36: Last Hours of a Life
> Be a hero. Fight Scams. Learn how at https://eu-west-1.protection.sophos.=
com?d=3Dscam911.org&u=3Dd3d3LnNjYW05MTEub3JnLzxodHRwOi8vd3d3LnNjYW05MTEub3J=
nLz4=3D&p=3Dm&i=3DNjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=3DNGdDQzdkcjZtWVpHZnVI=
UC94L00xRTl3c2lyVmdSQllwdDZPZ0thc1BOMD0=3D&h=3D100a4574ff864d06aceec165d683=
aa7b&s=3DAVNPUEhUT0NFTkNSWVBUSVb_qWJZPX62TGtRFPUEf08fFBEnvaQWeJDQMrHkmB0G8y=
0a9vs4Nb3Jtn6LJq6taaDn_6_TrOfoslYxysidPo3x
> Also check out wp4newbs.com<https://eu-west-1.protection.sophos.com?d=3Dw=
p4newbs.com&u=3DaHR0cDovL3dwNG5ld2JzLmNvbQ=3D=3D&p=3Dm&i=3DNjU0NjA2MWRiMzM3=
ZDMzYTFlMGNmNmY4&t=3DUFE3Tk13QWVKRTBWbXhydFFRellFZmJIM1AzQVlQL2hsTnoySURLal=
V2cz0=3D&h=3D100a4574ff864d06aceec165d683aa7b&s=3DAVNPUEhUT0NFTkNSWVBUSVb_q=
WJZPX62TGtRFPUEf08fFBEnvaQWeJDQMrHkmB0G8y0a9vs4Nb3Jtn6LJq6taaDn_6_TrOfoslYx=
ysidPo3x> brightstarsweb.com<https://eu-west-1.protection.sophos.com?d=3Dbr=
ightstarsweb.com&u=3DaHR0cDovL2JyaWdodHN0YXJzd2ViLmNvbQ=3D=3D&p=3Dm&i=3DNjU=
0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=3DNU4zT013cEl3UG0rWWIwdSs4L1gyKzAwbVdoMjNBZ=
lF2NjVFMG51T291dz0=3D&h=3D100a4574ff864d06aceec165d683aa7b&s=3DAVNPUEhUT0NF=
TkNSWVBUSVb_qWJZPX62TGtRFPUEf08fFBEnvaQWeJDQMrHkmB0G8y0a9vs4Nb3Jtn6LJq6taaD=
n_6_TrOfoslYxysidPo3x> mysitesbeenhacked.com<https://eu-west-1.protection.s=
ophos.com?d=3Dmysitesbeenhacked.com&u=3DaHR0cDovL215c2l0ZXNiZWVuaGFja2VkLmN=
vbQ=3D=3D&p=3Dm&i=3DNjU0NjA2MWRiMzM3ZDMzYTFlMGNmNmY4&t=3DYitxM1Q1MTVLbVdWSS=
tZeWNod3lCdzhuZzNjUUlPSlVoN2x4eTVXRlh2TT0=3D&h=3D100a4574ff864d06aceec165d6=
83aa7b
 &s=3DAVNPUEhUT0NFTkNSWVBUSVb_qWJZPX62TGtRFPUEf08fFBEnvaQWeJDQMrHkmB0G8y0a9=
vs4Nb3Jtn6LJq6taaDn_6_TrOfoslYxysidPo3x>
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com<mailto:blinux-list+unsubscribe=
@redhat.com>.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--1407934472-469921374-1769671805=:2890--

