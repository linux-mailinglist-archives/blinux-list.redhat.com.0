Return-Path: <blinux-list+bncBCAJTHUAX4NBB4634W7AMGQETDQTX3Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 469A9A6746C
	for <lists+blinux-list@lfdr.de>; Tue, 18 Mar 2025 13:58:30 +0100 (CET)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ff68033070sf4980452a91.2
        for <lists+blinux-list@lfdr.de>; Tue, 18 Mar 2025 05:58:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742302708; cv=pass;
        d=google.com; s=arc-20240605;
        b=D5vripRWfQ35K23bLEFSc/L3/ma8fU+hbbf2EixYDt/fBAWHLAAYYk5MdwVSnDtgUg
         GtxSd5NgtMnW8FVqRCq9rw5GvjMX4fcld3XtCDTUQXw2L+jum6BaXnfVvKP1B8DiaCeF
         KFTRfNy7FFA2DkLZu/p4Q8QV28VVxARiAlM4g57xN6vUthAsSt++47/OBjvFPc1xRY9s
         m12pdcLhIUMN5f++3tLBRTiYXr5p6aYM/+OhqkvwceAkap/Y3A+eEaaPyL0yQLMn9Sjr
         0RRPfCDTQCLzRFs57H1Xblup+6F+Yb8tbgD5Cd/hlsi2O0Np8pGZmdQUybM5zO2mUtow
         PFhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:delivered-to;
        bh=eKaJthmzDYEtkQb2e8YX5/Bho564Sl3yeYbApfMeYMg=;
        fh=y0XVRSB3WTznff/xilyzHF2d2c2Wh/2bgDXCVwXunEw=;
        b=fZVbsw3uWfSxSPHkirq5bEDDLj5D5JUDhBcNTZMkX3RGWo+RKkcjzZRleiNeVu1caY
         TkyMD04Gn9dzWB2tl7cMuROv4mGT9Pkg9Dgz6VN1BhAfvylMmqXCGVZtYzisrV5KndSV
         aherP6P8qHymMh9eYZYTcxw/S0ahzzGfOz3CkP6aNoSh38gjpPXiUHZS0NxIJVxoF+zI
         zZJzdW/7neYaMh6Dh/bok0BYYfXCKAo83i3GcDghwAv4hjiAiwSi47BTnNmPvR6c1PfQ
         VkJ4RdzQyANRICfb49xp5t6hSgOrdNMxIOf6ugx7uvN3etdC+gfKVC9ulfOJ45jMtU2u
         Fg3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.223.90 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742302708; x=1742907508;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eKaJthmzDYEtkQb2e8YX5/Bho564Sl3yeYbApfMeYMg=;
        b=dPwtTz+JdBUU3l+6BLXeFI1jI9nTOG+xwKoZsSs4PSm+2d4jRRCSx1xzUQagybbz8f
         qJu7AkEQ9+pO1i8nfDloDXA2eebq0WdR0F4sbyRABZSgPPgmOIGG3bDzaAGQxupdAZmp
         Om6APsUvdtUpHb9TGgaEzHhKJ+mkI2wQTDS1md8VdKRHbnQvL5Dp3g4hcAjB5abhsyIv
         13Bcu2uk+FaHqy3XznEfldvtdjHHNCtR+o9gQRPNZKAsRzoFxYmAAivMx122bJX2mkbf
         NiGZp0vYL5d5GeANeIRO48WIuudwr9cWCpx/oND9YNyxuP3vSdNgdelWP2OfFBF0iPWN
         tY3A==
X-Forwarded-Encrypted: i=2; AJvYcCVVwbCZlLP81sPAkH42pSRvSIIMJ4mDm5ieNcfkwXLuw/+dLkzB94FkW3UzkvqrUECyEfvOsg==@lfdr.de
X-Gm-Message-State: AOJu0Yzp9S2c+xfjvCISiEEnHBlrj0Ru8pDw+7DTWx+KlObuZgvyfkDc
	JUK87lTgkNGzAi+8N67Cb4/hqznq3rz2VFQUhUzVWn4ApasJMNVVy1zPmfwyOBo=
X-Google-Smtp-Source: AGHT+IHczvhKmXWzg1LcxmDZeZoWPa9ctsn6a4y28mmHdEGW54vldzAYEpYcZzT+V0oI5hrQoCiodw==
X-Received: by 2002:a17:90b:4b83:b0:2fc:3264:3666 with SMTP id 98e67ed59e1d1-301a5b96142mr3165990a91.30.1742302707964;
        Tue, 18 Mar 2025 05:58:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARLLPAJomhcFxYYE15Ndesif3rWUG6e2D5x6f1Q1avv2jMAiLA==
Received: by 2002:a17:90b:1810:b0:2ff:4b14:3df1 with SMTP id
 98e67ed59e1d1-3019a062bf4ls924516a91.0.-pod-prod-01-us; Tue, 18 Mar 2025
 05:58:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWrE6KtfB8KfPRzOIIKdXrHdNhSsko4ipXZP4OcETCqBDo/waPB981IXbVbVvGJHc8dVZlejl7IivXEFQ==@gapps.redhat.com
X-Received: by 2002:a05:6a20:748b:b0:1f5:7c6f:6c8a with SMTP id adf61e73a8af0-1f5c1317f44mr24073798637.35.1742302706188;
        Tue, 18 Mar 2025 05:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742302706; cv=none;
        d=google.com; s=arc-20240605;
        b=ai2BzWFoAcG+V89m0ySHWHLsFXiGU+haCorXbrmjEbP3Wa0GdS1Xlbte10uV0kBj4v
         P7O7T6ob7m+zDqc2NiV46WsdKBZSQuLUlZRVZpjfDlGSXbTw8l4PILcrp8ZdJ38YfzaW
         6OHAIdigXhfNrqFrwHpDs+fqkAy4SFZY3yHw+oU6Re2VvKmY2r66T9/usWxwuHeMumbb
         GtNtq/j9ON0CFRrutmt7hgSatbyLbFvzeL2ruT0P8XI71fIWUQjqshvgSoeszygvH882
         OF6wvvVE6FjfTTZAHsh0f2epqyI2/XU6eImivdrr72HbaxlAtSCu5vn/+3+Gr+DPzCTY
         X0Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to;
        bh=okFK3tObHBXgyk4d2VPLVRfr22UbI3/GqOV7toAp8co=;
        fh=yH6Rp2YR4+ZFFLllJN4yZvaWaHUTLbJymLQFJtO0BrA=;
        b=BItaGo2bVvehVXPUGTrv8cWgerqhSPr4HfLymIKFyzlmnneoWA8LxsB+Ml5MYTdWgd
         wT+gyKN14qJQiEvwIJ/46klByvYvi8yQHkJ6e8mBDa4032dSTCZFRqHJrJUslXmVa3GQ
         jiyMjaEQSuSX2rA2Z8WLTut8yFerdVLO0uyaGP1EOKeupi/zT9ULA68KJenhAjOA91r9
         MXr7gh2/zyqt0yQBGhmKCkeSe9EFj7PtXuyaTTnyPgXqO+s0qX3mg9D0YCs77MP+h/bc
         nX0Wz03Vq6HnAu+S4MnZhIQxXIiLdbfgeIbXFaE2D6ApmZCMrL9A+snPR87WakBHBuYM
         nIkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.223.90 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 41be03b00d2f7-af56ea9bbbbsi14292642a12.229.2025.03.18.05.58.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 05:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.223.90 as permitted sender) client-ip=40.107.223.90;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-222-ZUMx62ujMYG_wNfMd_52Pw-1; Tue,
 18 Mar 2025 08:58:23 -0400
X-MC-Unique: ZUMx62ujMYG_wNfMd_52Pw-1
X-Mimecast-MFC-AGG-ID: ZUMx62ujMYG_wNfMd_52Pw_1742302702
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4ABD01808868
	for <blinux-list@gapps.redhat.com>; Tue, 18 Mar 2025 12:58:22 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 465843001D11; Tue, 18 Mar 2025 12:58:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 39AA83001D0E
	for <blinux-list@redhat.com>; Tue, 18 Mar 2025 12:58:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9BF97180AF56
	for <blinux-list@redhat.com>; Tue, 18 Mar 2025 12:58:21 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2090.outbound.protection.outlook.com [40.107.223.90]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-658--byeTbhOMW6h7BbPRFle8g-1; Tue,
 18 Mar 2025 08:58:18 -0400
X-MC-Unique: -byeTbhOMW6h7BbPRFle8g-1
X-Mimecast-MFC-AGG-ID: -byeTbhOMW6h7BbPRFle8g_1742302698
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by LV8PR18MB6178.namprd18.prod.outlook.com (2603:10b6:408:261::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 12:58:15 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%3]) with mapi id 15.20.8534.034; Tue, 18 Mar 2025
 12:58:14 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Martin McCormick <martin.m@suddenlink.net>
CC: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: firefox or chromium Capturing A Table to a Text File
Thread-Topic: firefox or chromium Capturing A Table to a Text File
Thread-Index: AQHblmlHc6uE6YTTOUaMoQinlrL3i7N16GwAgAAt+YCAAsbzeA==
Date: Tue, 18 Mar 2025 12:58:14 +0000
Message-ID: <CO6PR18MB441929A9AA8637C1F6B6FEF3C7DE2@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <E1ttmRL-000ND0-2x@wb5agz> <Z9byZpI1w_r3jNYU@panix.com>
 <E1ttslb-000O4J-1m@wb5agz>
In-Reply-To: <E1ttslb-000O4J-1m@wb5agz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|LV8PR18MB6178:EE_
x-ms-office365-filtering-correlation-id: fbdeccb5-e8e6-41dc-aa00-08dd661c8bbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|4022899009|7093399012|1800799024|376014|7053199007|8096899003|38070700018
x-microsoft-antispam-message-info: =?iso-8859-1?Q?suVh5nggh32gb6HtRI2Febh7t52kawXiMeO6o6lRVMbByJ8iyHG+RjP1P9?=
 =?iso-8859-1?Q?cOSBp96Qyh+I12g3Q5NFFnn2Xvd+mYYSEE0eZRVgSckNhMsJUZ8x1RkPI+?=
 =?iso-8859-1?Q?NVCpj68XEr0+9MROdlGLS+fqoj327vV9vWQOmDT693afVfzBdKSCwGB5gV?=
 =?iso-8859-1?Q?ffDBLcZesYKeqJcD+qb/Q7ToObJP2E5S69ezA8JP722dys/GysKy6TCo+s?=
 =?iso-8859-1?Q?xtF0fkCb7B15C6ZS2uWKPbWeBUE/dtOOoXjrjSrfl+ArXIfy3nP+qTH8Yo?=
 =?iso-8859-1?Q?ojrF9XPEmFdj21tkVANEHvJNkeeYOAA2S82RljkWWGU2feY+D3w4hFFLDQ?=
 =?iso-8859-1?Q?KeOAL+Qkz/x3ddWuoI/VJyWethiihxG013XdD4rNVVSKNA28hrPqCB88CV?=
 =?iso-8859-1?Q?mGjTzRBVzHBzZFaWC7nHbt9Pjd18Saf8jbsoN7gFju4jpDqJLOjENxy0he?=
 =?iso-8859-1?Q?0cbHYTA7er0rMw82DpcwCb3JgiVd1v6tb/LZrHFjx66QZp1w8XAZ9xG12E?=
 =?iso-8859-1?Q?Ibl46ZJSBJrtLxmaxn8YlyXk+lHrz7LtrCQVSTL/plWJ3nLY9N46jdWmwA?=
 =?iso-8859-1?Q?0ss6BFn4cmO3VPQz5ywhs+yW4jHZFbF1ED6cSc5FLB+zgK9j5vhPOJsMJm?=
 =?iso-8859-1?Q?mmcbXAwu6XdQmtX4a1uw8cfKhodMB/RHyjD18+Lt2VsPhb3RlxNxjfebhJ?=
 =?iso-8859-1?Q?4JZG/ZJ0Kx8V2B5MMEUw9SmsY97X3p5SyXX9oDHcJqbX1RnC3z33bT+jBW?=
 =?iso-8859-1?Q?jUXJcwqqlGgPaUGc+QZdLvP/wQFmR+fpIaG7PUpKdATM+utrxiGtZExV5B?=
 =?iso-8859-1?Q?dwHi178jw9f6slCVIpYaze5DGqeTOvQaAmrJgBkVrSbeCOgFVRncxYNeUJ?=
 =?iso-8859-1?Q?Pd6kUUzlFc+hFo2fHUEhK+SWNku+l7PO+a1i3UAwlb5QHY6IwhT9OLxLk8?=
 =?iso-8859-1?Q?8MU5dhxEPTKeaBfT0Hx2chr3OIzhPCwwZ3VV/Fn2HFmDvwl0zD0CFJFAYd?=
 =?iso-8859-1?Q?4pdjMG+YDOlvAXnlGJpOELfb/WKRxf+uH/3RxTTdWLYYiLuChPuuFCM/YT?=
 =?iso-8859-1?Q?5rMAzXrXDgbbVTU/eOhzWpCio9E/vkDYLiWA/eKQlOGu6tYR2puDHE7D8M?=
 =?iso-8859-1?Q?K2ZSUrkWJ9gRkEe+sVkHlIEbkwlW380v1ztYWrQVW491c0E4cBYbKKMqUp?=
 =?iso-8859-1?Q?6vN9K1CfH/ljkwukfbm5SCShmuTmdUVN/IfKErbR11nxTxJml3pAHFATSj?=
 =?iso-8859-1?Q?mGRgQVqIGfeZ44pK6GHAEJOAp4Fca7Aj2dIgRcw/cElOf6xaMtTNnfRl3s?=
 =?iso-8859-1?Q?MhT5JGAyuElfKeawTLxTKHVOemBw8OnWAuwJq0AxSACq+JKzxyq2JzcCNw?=
 =?iso-8859-1?Q?hcMwq4O8CHgu7SBgHoObSUvClSY8pS5YDkesNUfbGbXVPKu3KUoMAA+5Vl?=
 =?iso-8859-1?Q?seKZFxoqtWC93jRUKxb5djmiViC1Xc9Z3dwNJ8fAaaPr2CKgWpw3YIbu3J?=
 =?iso-8859-1?Q?ONux5Agn+GXsmIdI3Hoai4iBw4ZqoLlwWy5N0oU7vI1w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(4022899009)(7093399012)(1800799024)(376014)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hKxRNcAif0A9dsqeB9MtA9UMUSIXr6v5FCey11Hy7cxGDgkuzMJAPaABup?=
 =?iso-8859-1?Q?DGFCHIbVkOHSGcBi8Ot/2ktWTRTJba+SByb+jKcihWKplfyYZDP10VLqC5?=
 =?iso-8859-1?Q?EgvTHnDoLJMMi31VpWqGCc6AWwhSIo0Jjd7OlkbPAWcW8eDJ0U99+r1ppW?=
 =?iso-8859-1?Q?1mElgtQ++3YZ0OgRNqBVDORRY9E4pi/dCYHwG4+zd3/rsuUGm2AHk48XiE?=
 =?iso-8859-1?Q?PlJA7X0yStBBHMm4ibp0ebz74J2VZaygnZgWUtys94mkiQDiLO4U0Ds15o?=
 =?iso-8859-1?Q?xPjzkBzwYufMbehrIThszXwwOhWcuE3uudhzq8RPT7VtAbye1OqKS/oyTh?=
 =?iso-8859-1?Q?Qub4mtx03GeDMRvdFaUKg8QCyLa+7mAw8n2BjSsaEdgDROky3la3tg5RAs?=
 =?iso-8859-1?Q?5f6Mjj3aHzrRj0R7NAaahP0FNeYwHcd9OKSEhmS/YyFPxm80oLJc4ECbme?=
 =?iso-8859-1?Q?G0uYa2LTBiSWUoovIZE0wB47x0wARgC2cfHvYI+jGbJyJYmhO8V+0A8m9D?=
 =?iso-8859-1?Q?9JwlqwLpIsdDME0kncxff6uyl1RLekOLGetcxqabsVPPP5dmpyyJnNq1e5?=
 =?iso-8859-1?Q?7pZVfwpC9kzLE+eGZJbtcaAZv55qAeD+L/TFGw2LCfDZF7H9AnJjOkLwF2?=
 =?iso-8859-1?Q?esepps15yQ/UaG2U0iHb1C3ykObw4MZgEiHw0YSzUWiTmrTjvIFDr/xLdP?=
 =?iso-8859-1?Q?I2wLYTVt1vQ6+2HjsiArfSTvreNkcLA+G0TyYDQ2l5dTL7XSLmquJtA4DO?=
 =?iso-8859-1?Q?r4Nz+ytdQa2Zfyi9vkUivr7zS7+exxeh7gx9UC9UM4f1gVni7NPJb0zwol?=
 =?iso-8859-1?Q?GW6Lhfya57uFIn+OfWr1MYz1QJmfiv5gZDPhhUlw5/l5a09B2qQZpP9Osn?=
 =?iso-8859-1?Q?aVl4m8PZBq/mn7NvRRLiOzBrhlCNoJxHfK0CS/3ND3yheaGOVNgH2LCpZM?=
 =?iso-8859-1?Q?f//T2dBQeZmSFz4FRqUhOo5iBJ5NoBb2h+3o03mDDGU3MHXxFHwlE076K0?=
 =?iso-8859-1?Q?r7Eq/l41nQp2MboaWXzx/9RegvBP5o2tPYIHgagqRLmJoe6SxFE4+IpZbK?=
 =?iso-8859-1?Q?KxWTCNSV52bCRbJC+Zg8h2JWeuT7a7RLYh6Jb1+hiuFVGsO7Qli2jAbaYJ?=
 =?iso-8859-1?Q?zaf/LbbEdMPCdqwDwmHkI/PUSiwvvs7eaOt+jklG/MOLudqLJcjbRAuCNS?=
 =?iso-8859-1?Q?P0nCxc5xTjZqTeTEtNCczgTg5GFbLGFs+EwrAo84e7V4yhUez4RIG8ugrB?=
 =?iso-8859-1?Q?Htcw9hbruPL7jGay7mmXjgUXmQfXo3hISbfsn+LoTpyksLlYCGj1iBUTVL?=
 =?iso-8859-1?Q?EuFasReMQRPmqlNmL03m4xgBW8MeT6wnO0PciIUBmi5pJRLqgdI1sNfolY?=
 =?iso-8859-1?Q?4wNmZLmhQgb8KS7oR819NZ9+ErsiZ6Ta6Q5990ZybrcuuRiYTyOoSLPMho?=
 =?iso-8859-1?Q?ImDW5ZZENWM8vGt1nfFOh4CesCTeQ7pURWS+csryKRZHHZ2vYunTQa34nQ?=
 =?iso-8859-1?Q?/QCa3chBwK7nyATyCcS1ywzPziGvTj46kkz5BCGk7JL4yowQTHFKlm+X+V?=
 =?iso-8859-1?Q?YRQMjc0JEZA8F+bvX5oa846eSYB52cv8ayTUm5l6yjx1hsCBj6YkKnhQq1?=
 =?iso-8859-1?Q?upPlssDNoX+NmN/5XHyvmDYQBhso+LALGI?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbdeccb5-e8e6-41dc-aa00-08dd661c8bbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2025 12:58:14.5762
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cBLoBljO/Q+vWszkQMBz4bcxaAVepJsmyxyq6v6Ra8iUPNw2yZMEU5eZJjiFGSrkg4UrbH+2jBGnnc9dlZahRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR18MB6178
X-Mimecast-MFC-PROC-ID: jchmjbS9PF-DVWw06PU5DfGTNQBP5VwQrZYZpH_w1-o_1742302698
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VJtSmsMcyhD3-MDaZ8nOopQUEybX7AyCZmbYq5qft6o_1742302702
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB441929A9AA8637C1F6B6FEF3C7DE2CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.223.90 as permitted
 sender) smtp.mailfrom=cstrobel@crosslink.net
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

--_000_CO6PR18MB441929A9AA8637C1F6B6FEF3C7DE2CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If I understand what you want, the easy thing may be to save the page as an=
 HTML file.  Then bring up the HTML file and use the table reading commands=
 of the screen reader to do it.  There are other ways to scrape the page su=
ch as using Beautiful Soup and python, but this requires programming.


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Sunday, March 16, 2025 2:31 PM
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: firefox or chromium Capturing A Table to a Text File

Thank you.  I am familiar with that technique from lynx searches.
Sometimes you find a tmp  file from lynx when one is listening to
something.  That long name is what you get from the mktemp
function so I will give that a try if there isn't anything else
Rudy Vener <salt@panix.com> writes:
> You could try locating the temporary files containing the rendered data
> created by firefox.
> First create a script containing the command
>
> grep -l "some.*unique.*string.*in.*the.*display" *
>
> Call this script stringhunt.
> Then cd to locations where firefox may be creating its tmp files, such as
> /tmp for example
> and run stringhunt.
>
> If you get a filename,  run stringhunt > ~/myfile
>
> Now myfile contains the name of the rendered temp file which will
> probably be long, complicated andtotally meaningless.
>
> If this actually works you can manipulate the file, examine it or edit it
> with something like
> vi $(cat ~/myfile)
> or other tools to try extracting the actual data.
>
> On the other hand this might not work because I haven't a clue if firefox
> even creates temp files of rendered text.
> For all I know it is all done in RAM and no files are created.
>
> Good luck, and may the farce be with you.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB441929A9AA8637C1F6B6FEF3C7DE2CO6PR18MB4419namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
If I understand what you want, the easy thing may be to save the page as an=
 HTML file.&nbsp; Then bring up the HTML file and use the table reading com=
mands of the screen reader to do it.&nbsp; There are other ways to scrape t=
he page such as using Beautiful Soup and python,
 but this requires programming.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>From:</b>&nbsp;Martin McCormick &lt;martin.m@suddenlink.net&gt;<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>Sent:</b>&nbsp;Sunday, March 16, 2025 2:31 PM<br>
<b>Cc:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;</div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<b>Subject:</b>&nbsp;Re: firefox or chromium Capturing A Table to a Text Fi=
le</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div style=3D"font-size: 11pt;">Thank you.&nbsp; I am familiar with that te=
chnique from lynx searches.<br>
Sometimes you find a tmp&nbsp; file from lynx when one is listening to<br>
something.&nbsp; That long name is what you get from the mktemp<br>
function so I will give that a try if there isn't anything else<br>
Rudy Vener &lt;salt@panix.com&gt; writes:<br>
&gt; You could try locating the temporary files containing the rendered dat=
a<br>
&gt; created by firefox.<br>
&gt; First create a script containing the command<br>
&gt;<br>
&gt; grep -l &quot;some.*unique.*string.*in.*the.*display&quot; *<br>
&gt;<br>
&gt; Call this script stringhunt.<br>
&gt; Then cd to locations where firefox may be creating its tmp files, such=
 as<br>
&gt; /tmp for example<br>
&gt; and run stringhunt.<br>
&gt;<br>
&gt; If you get a filename,&nbsp; run stringhunt &gt; ~/myfile<br>
&gt;<br>
&gt; Now myfile contains the name of the rendered temp file which will<br>
&gt; probably be long, complicated andtotally meaningless.<br>
&gt;<br>
&gt; If this actually works you can manipulate the file, examine it or edit=
 it<br>
&gt; with something like<br>
&gt; vi $(cat ~/myfile)<br>
&gt; or other tools to try extracting the actual data.<br>
&gt;<br>
&gt; On the other hand this might not work because I haven't a clue if fire=
fox<br>
&gt; even creates temp files of rendered text.<br>
&gt; For all I know it is all done in RAM and no files are created.<br>
&gt;<br>
&gt; Good luck, and may the farce be with you.<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_CO6PR18MB441929A9AA8637C1F6B6FEF3C7DE2CO6PR18MB4419namp_--

