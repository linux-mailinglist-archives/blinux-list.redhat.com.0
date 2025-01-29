Return-Path: <blinux-list+bncBCAJTHUAX4NBBEHY5C6AMGQEOCTPCPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E347A21F3B
	for <lists+blinux-list@lfdr.de>; Wed, 29 Jan 2025 15:32:51 +0100 (CET)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-e399d4ef55csf18549434276.2
        for <lists+blinux-list@lfdr.de>; Wed, 29 Jan 2025 06:32:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738161170; cv=pass;
        d=google.com; s=arc-20240605;
        b=MNvMnDWYm8xE8bRjDpHRitVH7VaNt644ABCAEDjCsuQN/hzWsCaEPGny77oDz6ktrk
         hWpnHtrYjUFlzzL3d+ZkPsrf2LSVPgCCjfc3zWPM4Qp3eHVlDLmYN5M1oVFhGgR3rUQ2
         GA43zJ01f88GR8H6I7j1CP/8fhmBgGbE/wxcfRLHtqbN2dh0ZedDaCRiI6vphiFoc/MR
         fZK2kfsfkTV4IYDOicHn7581iiomP1wvoO1jP4zHuc0VOYRMNZ3NhUP+we1gIyUYEGj6
         7E0cU0HbL+USZWlKRU3Xhax/tNkORJYQIUV4h+4mEqrQ7aeGr17xdnhj4Ll0hBPAXa8L
         lbsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=brJmilDAdYp0+w0XLZ7HcE86UIi14M/gm9xNJAijZ5s=;
        fh=rL1TwQPyl2x8eZIfvlHSrYTUlEWYYQdiHvTKIgMBrLw=;
        b=LB8YwUypIPvgg4rMjBwrW6ZoLdM7D+ZNgppZx6Yu5lCj0zJX3T+QBtn+QIgMPe4Osh
         PElC8BA2Iipnus6RBOGg+1NkS9DgD6N7zaHUmB3yFfa3bpQxE73Dgr/Wh4rZ4djaDHZ3
         2OjeR/BC3HC2G1xyJxLGUsj8ucWywA7xDsDg/DTdnDEWiqwgGJaANlqY8CQOTRE1+5Vk
         7oXLhfhNUB6Z1YnuidQs7cjCn6DgckEb1X0bmTOxDQ1MpG3OjIQMOPCqUwuVmA0ggI9C
         LE4kgfTulzOGOplXcc97aqrqI91Xx8XYgbEj072QF9RPtqAHP9BwF1p57PH/eSyw1OK0
         lS8Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.96.107 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738161170; x=1738765970;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=brJmilDAdYp0+w0XLZ7HcE86UIi14M/gm9xNJAijZ5s=;
        b=Mw7PEJG+rBUBYZHvzEpQ/ctaPllXe9MYsWJ1aJQWXSMacuv/dRcs1rsyONX43ArU6u
         2BwCWGipaDIdqp9BVVoZXN1TJ9y8HJzkkGMEIQYkWGKh8Bi5RthzswULpMzzorQwQdQZ
         X66FItrdIzbMDxy/wLvRA8mYr/3qzTNqVwK+TuGIlgNu3V8AI5bouMg3+uWSRIsB+0P6
         VpihiXifMzUF6vvttWZdb2cstI57XlLI9jIsr6IMLfyU22Tkn0wxTmL06gGJf9rE6a9o
         BiE+4PJ/Aqfe026JgFTPScwfoVTK0wqn86O7buXMJMaFKeD++MYauIqfasweeEO/Jrpt
         KPSw==
X-Forwarded-Encrypted: i=2; AJvYcCXxNrOGRxfKCbVPsindcQBxmYVAmZsaVVVjfOkEiuY8XOHbrqHNHG4W2ojrPNkB8AHyskKzPA==@lfdr.de
X-Gm-Message-State: AOJu0Yy2G89quHi+fGoWePu6KSXAiPQks2CK/V7UJCiZfGqxOXJcoLFT
	I7smMRwSOkBe5t1O7gGEzM4g8ms80qKEV2xKHaA0ujhD29mSspVEnelLSJWZPUs=
X-Google-Smtp-Source: AGHT+IGcVgRvAjf3Uny2LLB+CLZIWCmsaVmRlX0Lb1mNTsei2Y+4p0aDD1WxRz0mT9bU/Mu6ViTyxA==
X-Received: by 2002:a05:6902:2e05:b0:e47:4bf7:b3 with SMTP id 3f1490d57ef6-e58a4b2a1bamr2432222276.28.1738161169521;
        Wed, 29 Jan 2025 06:32:49 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:b30a:0:b0:e57:32d7:dded with SMTP id 3f1490d57ef6-e5825dc9246ls1227122276.1.-pod-prod-05-us;
 Wed, 29 Jan 2025 06:32:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUl9743gg0MU60X1RXegBACF8vnGdEaR+rFgANubBzhSBpY4HPtpPiN5SX8ROnJ7LI1e3hL8ElLmD24BA==@gapps.redhat.com
X-Received: by 2002:a05:6902:2b8b:b0:e58:227:e963 with SMTP id 3f1490d57ef6-e58a4af76bbmr2282356276.21.1738161168179;
        Wed, 29 Jan 2025 06:32:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738161168; cv=none;
        d=google.com; s=arc-20240605;
        b=RF7mlKz9RXCR5HwmHWYWCcSD/zpb5DpNGpUXJFFhl6Yg6Uf1Yuoo+8Tb7KIGwSzXAn
         sL0JRudfU9G4hEVY15c+NALkRHCtaOKOJSypBu81OytDiWWDuqPWTQI4+GLz2Uz6F9YD
         FiBYgR6ac96nxS/Eu6zN6caYB5pRmrzmfkXWw50jPnsOL9gcH9hMKO94w5Gm6I90sLhT
         zvgqunzwwqzAjKIzh1c/etgOvH6RWJ4Z5dSr8gmY6hmIM82EwJHgcOIXRHudrqBFuJSS
         9FUQ4DXtc9GkYzZmAyLu5++gn+aBgu7TQEK1K1NMgGtrTSgeiO6uue4yxOdeQuQTp7NC
         sBVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=fYidwqP7+XzSkPej+r9kcziE620ihdMuAkhBB7sVjYc=;
        fh=xjr+nr5u++CU8k7N6XBcrDU/Vwd1Ngx6NopgaRunhU8=;
        b=FcjyglB98z0sDgxHJR4kJpwhKy/nRG+RjnJN6EzJZoQkadp9tYCNWcBIqxcK3cEF3D
         XCqceIV8WXYUougOoR3ypiGi3GDhiH7D9pIXCszYnvMGV4NoDcHWPTgYIS6x1TZw/WVs
         iHFDf43BjqDvmKR6MUFEVjcortvqAziq4IRZ+JkvRGRRUba2wRsAGXA8sqX6YL4jrj5z
         AwW5k/wXB6qVUPrKCm6uKInDmTyA9uTf10gs2n0X510QrYrzHfdcI6Dps6TBiQYq05NC
         f+x7wjraC4U5S4iiLf3nVCkpV/rMFUHrMPRZ7K6h2hYLyr96Ztqdx94JHb00bCQdIgNZ
         3PSg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.96.107 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e58a6c640d5si1011232276.228.2025.01.29.06.32.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 06:32:48 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.96.107 as permitted sender) client-ip=40.107.96.107;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-368-iD73yJvMP7uYpuhNEtmC9w-1; Wed,
 29 Jan 2025 09:32:46 -0500
X-MC-Unique: iD73yJvMP7uYpuhNEtmC9w-1
X-Mimecast-MFC-AGG-ID: iD73yJvMP7uYpuhNEtmC9w
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A6B1D180034D
	for <blinux-list@gapps.redhat.com>; Wed, 29 Jan 2025 14:32:45 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A35E618008C8; Wed, 29 Jan 2025 14:32:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9FA181800268
	for <blinux-list@redhat.com>; Wed, 29 Jan 2025 14:32:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2868719560B8
	for <blinux-list@redhat.com>; Wed, 29 Jan 2025 14:32:45 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2107.outbound.protection.outlook.com [40.107.96.107]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-weLt3-iDNiCFpjWzKp1jCg-1; Wed, 29 Jan 2025 09:32:42 -0500
X-MC-Unique: weLt3-iDNiCFpjWzKp1jCg-1
X-Mimecast-MFC-AGG-ID: weLt3-iDNiCFpjWzKp1jCg
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by IA3PR18MB6355.namprd18.prod.outlook.com (2603:10b6:208:51b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Wed, 29 Jan
 2025 14:32:38 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%7]) with mapi id 15.20.8398.017; Wed, 29 Jan 2025
 14:32:37 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Martin McCormick <martin.m@suddenlink.net>, Linux for blind general
 discussion <blinux-list@redhat.com>
Subject: Re: Control-Alt-F1 What is it?
Thread-Topic: Control-Alt-F1 What is it?
Thread-Index: AQHbccce8Zw6tLFSjEOCooTsFCkEZLMt0Kt4
Date: Wed, 29 Jan 2025 14:32:37 +0000
Message-ID: <CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <E1tcsd6-000YH1-1N@wb5agz>
In-Reply-To: <E1tcsd6-000YH1-1N@wb5agz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|IA3PR18MB6355:EE_
x-ms-office365-filtering-correlation-id: 189ad961-ddae-4e76-8abc-08dd4071c716
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7093399012|4022899009|8096899003|38070700018|7053199007
x-microsoft-antispam-message-info: =?iso-8859-1?Q?YJ79BoRg4XmzpY9RnApdZ19I6YVSWSxe2faDbKU6VFofQyT+l1Pvi0a5T5?=
 =?iso-8859-1?Q?LT3pUCW1MocwJC5YOZIwyb8NcL80oHipbH9Mndj25T71juIIPkzY10ug8v?=
 =?iso-8859-1?Q?bi8RXkLj67PkYU0aU6G/F84ELbUofNMT7G57ydMu65ESNnUDAmRCJabfVY?=
 =?iso-8859-1?Q?IvLQOYyTmEaw7M1DsKizfXf4C1GdUQZaw+3gqZMj7ed5aIhzIsTXqmJeGm?=
 =?iso-8859-1?Q?+6Rg3yQCv8dwtRKGhePVxi8isu1RtvkWcZZ432g2Lxgq8y0qF2osIuQf8t?=
 =?iso-8859-1?Q?TSgVdYJDqA1S47FHxlFmcdwL9Whpa5+lf46Xcu0E9yZiPXMcPl4vgtYtAV?=
 =?iso-8859-1?Q?KzZ/SU04lL+6flUpWgCRShgYhC8krIFF0ClKDkb3mDtvxMXbmVk4nm65+s?=
 =?iso-8859-1?Q?C/uQhScgd4Ow0LSHcEdxlh3wHGk4rhnaJUotlXxFzBZz2U0qAIsnNRAkF3?=
 =?iso-8859-1?Q?gZZd3/CpDMavUK1rPylrXiUTT2IMJ0ef6IvG0VN9xjxE6hK5+3HTqGiexQ?=
 =?iso-8859-1?Q?karoSKIVF85cCNMTXUG9Uk62Hn6T+hpK58p7vcPBW0OF5oznwTTmqwEys1?=
 =?iso-8859-1?Q?zmIUSxCgzT7L/BroljjrITF7tGx0MTi88yxnG8yidzt4qi0eccGF1pQoFv?=
 =?iso-8859-1?Q?nAA1uutNh6bAC61aVFRbD+E4QBgZv+BsPKYeAPpTzJYR4gQpM0a8lE45Qx?=
 =?iso-8859-1?Q?cotL5+2FU36umS8QzqlX+RLZ7tKPQ1aBEoqXmzlF2L0FMCCMNHSddvDG1s?=
 =?iso-8859-1?Q?uDuGnIgMR7QuR0HdkHJBXUckxinVQoIassV6AyvSVdnh4VJyFvAb4/T15+?=
 =?iso-8859-1?Q?+X5eWv/24mOnSpFY2yTPN25EjuettLDdWIDifagKD4hprY+Y30l/FvGI4f?=
 =?iso-8859-1?Q?CofA+fJWchB94aWgodbYFTapnwiWJvYt/NnUsmUabsflIGL1qfRwTlJhNI?=
 =?iso-8859-1?Q?/80En7U5RYzovM3KSm4vX9gPkofCa9iDm8cI0sOGG0V4meq9mcv71ECy8Z?=
 =?iso-8859-1?Q?b7Kth732vfawZnPF4q7tvf6KNSrQkMzcdmj3cO1AmYhdyWH5benmDPnGHk?=
 =?iso-8859-1?Q?m40IN1nGUOYhKCArIonqVcE2mBqlIs6rnyv4JRvh1oV/7Ua6hpKYw7B9mo?=
 =?iso-8859-1?Q?4st6QyOu+wiEY9zBPxnLZzlA5EAKOYCMCxVOGUCdpx6RQhEG5gX9lcuELd?=
 =?iso-8859-1?Q?N9KvSoAgHO+9Cq8qfG7WsSAtP+quBtGtq+OzF1pXbzKHBSlz8rBRhOQOZI?=
 =?iso-8859-1?Q?t6pbgDGrI9/HzBy75DdJyoJG+VIwLvELaQyPLhZ5WyJDb2fC99Ug7KjCrK?=
 =?iso-8859-1?Q?iRSXlOuJNvTNmG4yM0sHaEMfK4xfiuam6ywRRqMvbXQKVQEGP82DeyX4yl?=
 =?iso-8859-1?Q?OcAO9m85nbCj6LylLoJtFKIOFs0aa8nTAgmQSJQcf/wPc/iqpVzBcQcM8J?=
 =?iso-8859-1?Q?OlQnb+lbFgwPzd3NHnxO381gaLWAvMGYc4uJ/yr8+K7WCEQK7CU8EkrCvk?=
 =?iso-8859-1?Q?pvTt085c3CICX6aODRzOJGqFmWhxXXtXvnMPvN472LYw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7093399012)(4022899009)(8096899003)(38070700018)(7053199007);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?XJf+fNWVPwC5maq/D01Cey1Ymmro7dKnOLflhPclEWxs4RFotNYm2G5Lmy?=
 =?iso-8859-1?Q?oqdxSw9qwLOeKi6F8dcjV6AEpnLu8LYTh9/mWEcgqVhfLnqGL60DWPJ9q1?=
 =?iso-8859-1?Q?NCtQUTSduP4pZ/4dKJJD6bZO3j4VVtv33AKTA4RLPoOYMiUHrq+LptkMRr?=
 =?iso-8859-1?Q?7P03aOJ8hlMz/yprJrrJGSAyKyZZU6a6khijVSpXx+4iLkPB39BEba/z7V?=
 =?iso-8859-1?Q?iQyBcDajubkpkScNUCik5GtqxZxSwJXiYCDhaD/KwwUEkUu8kkMLlxMEvA?=
 =?iso-8859-1?Q?AyCB2NKsm6wmS6YXgtz48YfV2FcS2mEt7HdxQ5Nz0wGP1m0mAZVUP0ddDx?=
 =?iso-8859-1?Q?R2V8a+QRBLUqeUIqvK9Zj8oLjVT6e3qnG9McaZRkYKAXbxgzMPkdzLm7xN?=
 =?iso-8859-1?Q?kmCbTAkQtAMvScRL3w3ggGiFgp380c0fyObAt1pr08ihvxg/NWPgS8UK5q?=
 =?iso-8859-1?Q?7k5xmrUC25cN0D0wB4l1Ixn+Ry9gkBQU9ydeq/Mtp5GqpRl5684ZqtMlU2?=
 =?iso-8859-1?Q?UlJAUESJQqeSo6NCaZIbfb+DvAJ3eZDaSlzbjiKCUk/l+hrbueCgq+Xh6j?=
 =?iso-8859-1?Q?55sdGO2IrzKExOEQUmPUigPtnsn7EcDy1uvox9J7pK+BXUdlOJAZcQ1wsw?=
 =?iso-8859-1?Q?pt+jNaCqNIm0wCd7M+xZhngDdxQszacFKsR2LdOiglsu8Cjy63IAEuqN/S?=
 =?iso-8859-1?Q?Vsmo1TcHbZAe4hNT5Qs5XdBiffcUi0PMw5VhQGNLC15va/v12fDJw/9pfP?=
 =?iso-8859-1?Q?ZdOSol82PU1fdunjOKfjiz4ug22Urf/HzMEGWVMkwup3BThYtJMsqDYT73?=
 =?iso-8859-1?Q?ZNxjyNkZZyXJ+Lei0HX0JRcezHzHtx9PmN1nPkir5LuGn+GFS1k0qxKIEL?=
 =?iso-8859-1?Q?B2AZiCNDRUiCKIVhZU5D7m9pxZ2TKTsrRzKRAEMwlLDZfBxXdc0cDBBSvL?=
 =?iso-8859-1?Q?vhgIi/ELpIStQOgCkdwCB7z3FURFPGjhH7kqzYloYXvrPixqBr0W6XOr49?=
 =?iso-8859-1?Q?lwvRBKdULowI7Q3+Dem2hLUg6SWbcZ+X0LwYpyhWQt5fFLOs075v07TRA9?=
 =?iso-8859-1?Q?9oyvdE4whT3WMt61+H+VFulBrZijVjyPRw0vNdxtwi+ywFa7uyX4zg4Jrq?=
 =?iso-8859-1?Q?4n44+0NfCeKZkqwFXAZyX/T7QG5yngIE7If7z3T8vGYic2ebz1V3UZ69nZ?=
 =?iso-8859-1?Q?GADXs4cVBonZ3JuihrrgY5d+HiCduf+R540+dTtbZa8kX+Zgui6rLAxj7E?=
 =?iso-8859-1?Q?al1j46FgVCIoy6+PGFXoeQrOm14PH48hqEy7pzOje4cwUtj0kcDUR5OPDK?=
 =?iso-8859-1?Q?a4wrtxYHzNutug5dkSMqF/xWLRIdjZYnuARu1EpAXW3funoe3+bgq5z3ZN?=
 =?iso-8859-1?Q?KW+IZkPDwv5grd/9DtcA8ZuiCeTjxzllFjPJkp/tJeGIklnx4xeAaKygnz?=
 =?iso-8859-1?Q?5KKrjYo9GRoQwhRIo0eunU/wn9O3ON+W9kUCsXKTEz6uzEzA3yB2D0cdpO?=
 =?iso-8859-1?Q?eAXhmSu/e+eQxpvBXSxmR3/dPXvjn3oABw1V7qRwpxudMKOWnbI+1cuFKT?=
 =?iso-8859-1?Q?zt2F0KCVRkMWxs6xxuFwfdSHEMeFKqbK9JQ7ZSM+Q5mjq753JhxWod9LVV?=
 =?iso-8859-1?Q?3YN5SrDq72LnEQ7KcIWU6+kuStU14g26uE?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 189ad961-ddae-4e76-8abc-08dd4071c716
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2025 14:32:37.1975
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sKQQVsZc1g3S7w1LTqVQouuyPakvTj0Gys+dQAeeH4Z73+OIgbV58MzIuQR3FCJJR3RjU+/p0b6aQRkWGz+9Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR18MB6355
X-Mimecast-MFC-PROC-ID: q9djDaneED1440mQR_4UGpaC6K0xQP_lDI3YVLBod6c_1738161161
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: WF5AeP7g62E_FOkWNEfrD6RbjqyYmwlZ-9FdcdPHhT4_1738161165
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.96.107 as permitted
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

--_000_CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"


On my Bookworm system pressing alt-control-f1 takes me to a normal console.  There is sometimes a delay, or the speech doesn't work right away, but the Braille shows it.  Once I log in, it is tty1.  The graphical console is tty7.
I thinkIt may be a bug of some sort.


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Tuesday, January 28, 2025 3:56 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Control-Alt-F1 What is it?

The Linux box I am running is a HP PC using Debian 12 or bookworm
and I have all the consoles talking.  The first console is orca
and the other 4 are not orca but command-line consoles which are
nice when not needing the GUI but there is 1 mystery.  Orca is
always the window that prompts for a login and, when I do that, I
can bring up the command consoles by pressing function keys Ctrl-Alt-F3
through F6 after getting pipewire set right and installing
espeakup.  They all are working fine but if I press
Control-Alt-F1, I get nothing and am curious as to what that
brings up.  Everything is silent and nothing at all good or bad
happens so there must be something somewhere that just doesn't
talk.  Here's what the who command reported:
martin   tty2         Jan 24 12:05 (tty2)

That's orca.

This next 1 is a console in which I run screen.
martin   tty3         Jan 24 12:05
martin   pts/0        Jan 24 12:05 (:tty3:S.1)
martin   pts/1        Jan 24 12:05 (:tty3:S.2)
martin   pts/2        Jan 24 12:05 (:tty3:S.3)
martin   pts/3        Jan 24 12:05 (:tty3:S.4)
martin   pts/4        Jan 24 12:05 (:tty3:S.5)
martin   pts/5        Jan 24 12:05 (:tty3:S.0)
martin   pts/6        Jan 28 12:31 (:tty3:S.0)
martin   tty5         Jan 25 11:25

        One would think that tty1 would be Ctrl-Alt-F1 but it's
not saying so if it is.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Tuesday, January 28, 2025 3:56 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Control-Alt-F1 What is it?

The Linux box I am running is a HP PC using Debian 12 or bookworm
and I have all the consoles talking.  The first console is orca
and the other 4 are not orca but command-line consoles which are
nice when not needing the GUI but there is 1 mystery.  Orca is
always the window that prompts for a login and, when I do that, I
can bring up the command consoles by pressing function keys Ctrl-Alt-F3
through F6 after getting pipewire set right and installing
espeakup.  They all are working fine but if I press
Control-Alt-F1, I get nothing and am curious as to what that
brings up.  Everything is silent and nothing at all good or bad
happens so there must be something somewhere that just doesn't
talk.  Here's what the who command reported:
martin   tty2         Jan 24 12:05 (tty2)

That's orca.

This next 1 is a console in which I run screen.
martin   tty3         Jan 24 12:05
martin   pts/0        Jan 24 12:05 (:tty3:S.1)
martin   pts/1        Jan 24 12:05 (:tty3:S.2)
martin   pts/2        Jan 24 12:05 (:tty3:S.3)
martin   pts/3        Jan 24 12:05 (:tty3:S.4)
martin   pts/4        Jan 24 12:05 (:tty3:S.5)
martin   pts/5        Jan 24 12:05 (:tty3:S.0)
martin   pts/6        Jan 28 12:31 (:tty3:S.0)
martin   tty5         Jan 25 11:25

        One would think that tty1 would be Ctrl-Alt-F1 but it's
not saying so if it is.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2CO6PR18MB4419namp_
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
</head>
<body dir="ltr">
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id="appendonsend"></div>
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
On my Bookworm system pressing alt-control-f1 takes me to a normal console.&nbsp; There is sometimes a delay, or the speech doesn't work right away, but the Braille shows it.&nbsp; Once I log in, it is tty1.&nbsp; The graphical console is tty7.</div>
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I thinkIt may be a bug of some sort.</div>
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
<br>
</div>
<hr style="display: inline-block; width: 98%;">
<div dir="ltr" id="divRplyFwdMsg" class="elementToProof"><span style="font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Martin McCormick &lt;martin.m@suddenlink.net&gt;<br>
</span></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<b>Sent:</b>&nbsp;Tuesday, January 28, 2025 3:56 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;Control-Alt-F1 What is it?</div>
<div style="direction: ltr;">&nbsp;</div>
<div style="font-size: 11pt;">The Linux box I am running is a HP PC using Debian 12 or bookworm<br>
and I have all the consoles talking.&nbsp; The first console is orca<br>
and the other 4 are not orca but command-line consoles which are<br>
nice when not needing the GUI but there is 1 mystery.&nbsp; Orca is<br>
always the window that prompts for a login and, when I do that, I<br>
can bring up the command consoles by pressing function keys Ctrl-Alt-F3<br>
through F6 after getting pipewire set right and installing<br>
espeakup.&nbsp; They all are working fine but if I press<br>
Control-Alt-F1, I get nothing and am curious as to what that<br>
brings up.&nbsp; Everything is silent and nothing at all good or bad<br>
happens so there must be something somewhere that just doesn't<br>
talk.&nbsp; Here's what the who command reported:<br>
martin&nbsp;&nbsp; tty2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (tty2)<br>
<br>
That's orca.<br>
<br>
This next 1 is a console in which I run screen.<br>
martin&nbsp;&nbsp; tty3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05<br>
martin&nbsp;&nbsp; pts/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.1)<br>
martin&nbsp;&nbsp; pts/1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.2)<br>
martin&nbsp;&nbsp; pts/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.3)<br>
martin&nbsp;&nbsp; pts/3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.4)<br>
martin&nbsp;&nbsp; pts/4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.5)<br>
martin&nbsp;&nbsp; pts/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.0)<br>
martin&nbsp;&nbsp; pts/6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 28 12:31 (:tty3:S.0)<br>
martin&nbsp;&nbsp; tty5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 25 11:25<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; One would think that tty1 would be Ctrl-Alt-F1 but it's<br>
not saying so if it is.<br>
<br>
Martin<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
<div id="appendonsend"></div>
<div style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style="display: inline-block; width: 98%;">
<div dir="ltr" id="divRplyFwdMsg"><span style="font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Martin McCormick &lt;martin.m@suddenlink.net&gt;<br>
<b>Sent:</b>&nbsp;Tuesday, January 28, 2025 3:56 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;Control-Alt-F1 What is it?</span>
<div>&nbsp;</div>
</div>
<div style="font-size: 11pt;">The Linux box I am running is a HP PC using Debian 12 or bookworm<br>
and I have all the consoles talking.&nbsp; The first console is orca<br>
and the other 4 are not orca but command-line consoles which are<br>
nice when not needing the GUI but there is 1 mystery.&nbsp; Orca is<br>
always the window that prompts for a login and, when I do that, I<br>
can bring up the command consoles by pressing function keys Ctrl-Alt-F3<br>
through F6 after getting pipewire set right and installing<br>
espeakup.&nbsp; They all are working fine but if I press<br>
Control-Alt-F1, I get nothing and am curious as to what that<br>
brings up.&nbsp; Everything is silent and nothing at all good or bad<br>
happens so there must be something somewhere that just doesn't<br>
talk.&nbsp; Here's what the who command reported:<br>
martin&nbsp;&nbsp; tty2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (tty2)<br>
<br>
That's orca.<br>
<br>
This next 1 is a console in which I run screen.<br>
martin&nbsp;&nbsp; tty3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05<br>
martin&nbsp;&nbsp; pts/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.1)<br>
martin&nbsp;&nbsp; pts/1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.2)<br>
martin&nbsp;&nbsp; pts/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.3)<br>
martin&nbsp;&nbsp; pts/3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.4)<br>
martin&nbsp;&nbsp; pts/4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.5)<br>
martin&nbsp;&nbsp; pts/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 12:05 (:tty3:S.0)<br>
martin&nbsp;&nbsp; pts/6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 28 12:31 (:tty3:S.0)<br>
martin&nbsp;&nbsp; tty5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 25 11:25<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; One would think that tty1 would be Ctrl-Alt-F1 but it's<br>
not saying so if it is.<br>
<br>
Martin<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--_000_CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2CO6PR18MB4419namp_--

