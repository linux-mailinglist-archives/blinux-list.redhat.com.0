Return-Path: <blinux-list+bncBCAJTHUAX4NBB26J2O2QMGQEXOGGQLA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5EC94C16D
	for <lists+blinux-list@lfdr.de>; Thu,  8 Aug 2024 17:31:57 +0200 (CEST)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5d5b62ee8b9sf983875eaf.1
        for <lists+blinux-list@lfdr.de>; Thu, 08 Aug 2024 08:31:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723131116; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBK6csovMpWdIxHeQzgqx7LeV4eaXXJyO1mEUG1farQWb+QlPVGQF11xyhfDHDowAj
         2Qj5gfp5NleAKp0G8P9X+oiWunK+3wmfKrQeYPA9izlVT1UGgQRcdM/oNpSgU2hI0tza
         h18lZ2S1OlV3hSsWYQBSFSl4kl7U/m+7jwkHVCZTNrv1tItgaTPn+43es4fHZiLt+2VB
         u9RTHDWlR6rgy/ahbqMcGDirzNIKejTSr1fQwalbwTUe6vnk1QbBVmdLRpqmZ40vnUST
         zmjeSerZN/NZi7c2k+KCIvWnivWrNUhvnp8DkWP1O5403jYx+oLsJY5KSP0JUUWhxfm1
         bQYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=4My9mCgXaaQ9fqygy5swiHOxt3Fl/nDwsBZ9F7nYltM=;
        fh=nJIIJ0I/prfScrwfcsIS/JCCT9TZCJKjWTTb2nyNnqU=;
        b=aWMGXiuCfiTMiujkn79slk3syRf7xtRu0+k/+R8MFCvRpEFtDOHNvYEC6408TsDcwa
         MidZ8p+5YXjYdr4R8DOuWvXRzcx0UGw8IvIPu66CWT9lKb109qKbAGJEdRsmxUTeFCvc
         Ajqm9hevj1XtDZm7aYpMVf0VGn9gRcpzpKIPqlcD6Hnz2EQ1rjZ/YvyumE1EYYwIqQER
         ZH5GMbz83gtlvFT+SwkNJ58itwdIAeLrrmrT/y9+CXUVijol9CCtluB6hpsmTaeRIr3Y
         87ICHjYZhWIT6EL1rQE1LjHjxTIhLke0K1VTpjRliUrgQlMi6UBRL9HfnHfiS7oU8cZN
         BySg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.123 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723131116; x=1723735916;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4My9mCgXaaQ9fqygy5swiHOxt3Fl/nDwsBZ9F7nYltM=;
        b=nMC2TaGWyi5oBuFnGkXkrPX6WPgM3TzZh99PLAbMJouZZ6LQip+QWhNaK7AwOTTLzW
         qeY+/ZcuGPPzFB5GmjqHZsGkkQMY4dxzG1M2RIFyBPDztXCdPVLgmouR7K521QrKH7dW
         HJXeqf0HKEakTwP8Y86XnaXCCCDX/O6Dyos2PZ7v6Ydl5KRdeP+pXI6bw6a6cKQsI8eU
         18mSSHXFUh3Ol/KQPfgVzt6VqoArU40g8ioH8OVQ7VBkfqyMN8gcuumZ/aphMb7pC2sm
         zGOWMBKNq+6FFDXq+w8R+ACkBktgX0Uf6+Q0WPFgHuWtor3xTNnt1KynCEhQR/QylRIb
         1riQ==
X-Forwarded-Encrypted: i=2; AJvYcCWlf5HIqzxEkch+LHVPqK8sgIfOyboho+6OKE8PD+P1eaqK49bYScT4+EL31Sf2JZDPeuplag4TTr98hxUS21mcKIx8otcBNOiC
X-Gm-Message-State: AOJu0YxYOnRAM4Jbncy9zJFqzOfxSgvqtAb96T/YGdvaMyBhunvMyK2b
	kBuXllYFq5iIE0DKSC2w42q87fOO59VB88URLgPLFvBgQGJlMEfJP98c4yVaWZM=
X-Google-Smtp-Source: AGHT+IEv1oiM9BHtDveVT+xX7XzcdGntcCPgZxIqrGJBkV755IbzrYCMAzy75yh6ZPy6QoexHpRiTA==
X-Received: by 2002:a05:6820:1998:b0:5c4:27f0:ae with SMTP id 006d021491bc7-5d8559f7672mr3003152eaf.1.1723131115566;
        Thu, 08 Aug 2024 08:31:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e64b:0:b0:5c4:789c:9e85 with SMTP id 006d021491bc7-5d8512ed4f2ls1121699eaf.2.-pod-prod-05-us;
 Thu, 08 Aug 2024 08:31:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUkDfC3Yu14N4h17/Q45SwZBLTuMVKbWMYMXGJHAhaZTMsDTZuPN6NKrck9a0dy0m2HDHoRpjov7pBuFgbFTTE4Qz8K9VjGOUkDtXgP
X-Received: by 2002:a05:6808:4197:b0:3d9:509f:221 with SMTP id 5614622812f47-3dc3b40bd9amr2317260b6e.7.1723131114591;
        Thu, 08 Aug 2024 08:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723131114; cv=none;
        d=google.com; s=arc-20160816;
        b=m2nJDN19NWuxmLvcsXVfqVkxMGuzEKErFdsCAQvaa/7LECHG7MEq3PJ2Kce+Da/7Yx
         9vO0GJCgxqteLrIAbK91xZQhtgQ2Z59QPUw9w7UbszKt4+6Uog06RE1YVplZAsyV7ZZu
         ZoymDswLGSrgSHRsk/CBqcKZ13eTKxp5so8EvjMyjsET2YDvb5MCGmgWz8trkD7onbKA
         RRDYKqV6TKIQRu+JYy+ESUEAY0aNHooNpxjk6eh9k6Dkjpq/d9r3oU9PBN5e7877FAXI
         y0LcGWeiVIMAr1cMvZp+fJtx6oJzHbdbK7bh3r4ZG9PCNkbVZq4SEEnOmtMIqq3jzZpb
         v9vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=Qm/ftM8bT2ewqmIu0+w8tj4nhVsYAhfgavflhGncbTA=;
        fh=xbUhAY1a7P4KbMDAmFEVpa8RAp9GmyePQoq3R3yW52Y=;
        b=tVeeBu5MqO+MnVrz1TAM6MXzlbBLSJusdC9jXKCFaq5pnjUjaxNoyiOGhsqnctCxco
         aoazBYB75R0xNFBU3gKE7Ihwb86/VAVW9oNRBoSItqPTCdyDzReNSdRxXHlkVhN+Xf2x
         k9CgnosrQJ9tl07RepNgglzeafvcTWIICPLLsBb0KoXTSOVBMS+s+SdCTNXZFdv73d/V
         Xs+GorjioBOJUqfwEOb6GP/88QPxxGkUQmMvQbJ5QJ0skpN3J88or/6PzI4tNGjpTzCU
         RiIJeIPgHnXrdMvJMUD1rxYsxUhC9HMrrjO3ndFkA6tR6bcllZH1+18FSywAzigm1yj+
         SReA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.123 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-83c07eec2b0si2667373241.23.2024.08.08.08.31.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 08:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.123 as permitted sender) client-ip=40.107.93.123;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-613-_qjDrI55O2uSRqVJEx2tQQ-1; Thu,
 08 Aug 2024 11:31:52 -0400
X-MC-Unique: _qjDrI55O2uSRqVJEx2tQQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 663C01955F65
	for <blinux-list@gapps.redhat.com>; Thu,  8 Aug 2024 15:31:51 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6181D19560AD; Thu,  8 Aug 2024 15:31:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5E65919560AA
	for <blinux-list@redhat.com>; Thu,  8 Aug 2024 15:31:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0E4E1955D60
	for <blinux-list@redhat.com>; Thu,  8 Aug 2024 15:31:50 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2123.outbound.protection.outlook.com [40.107.93.123]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-159-rNWJO0Y9PMWiA2hk2TiXKA-1; Thu, 08 Aug 2024 11:31:48 -0400
X-MC-Unique: rNWJO0Y9PMWiA2hk2TiXKA-1
Received: from BN8PR18MB2497.namprd18.prod.outlook.com (2603:10b6:408:6b::27)
 by SN7PR18MB3805.namprd18.prod.outlook.com (2603:10b6:806:10d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 8 Aug
 2024 15:31:44 +0000
Received: from BN8PR18MB2497.namprd18.prod.outlook.com
 ([fe80::a3be:12c9:c94d:976]) by BN8PR18MB2497.namprd18.prod.outlook.com
 ([fe80::a3be:12c9:c94d:976%6]) with mapi id 15.20.7849.013; Thu, 8 Aug 2024
 15:31:42 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>, Al
 Sten-Clanton <albert.e.sten_clanton@verizon.net>
Subject: Re: how to enable use of right-alt key
Thread-Topic: how to enable use of right-alt key
Thread-Index: AQHa6NxaCrk7wxCNaUyUnw5A8eT0trIdfJoR
Date: Thu, 8 Aug 2024 15:31:42 +0000
Message-ID: <BN8PR18MB24973A8490704B4C3702DD5BC7B92@BN8PR18MB2497.namprd18.prod.outlook.com>
References: <37ae7068-5dd0-4446-81d4-3aa55b69cd0d.ref@verizon.net>
 <37ae7068-5dd0-4446-81d4-3aa55b69cd0d@verizon.net>
In-Reply-To: <37ae7068-5dd0-4446-81d4-3aa55b69cd0d@verizon.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR18MB2497:EE_|SN7PR18MB3805:EE_
x-ms-office365-filtering-correlation-id: 12ae5d7a-a2da-4d40-ecf6-08dcb7bf346e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7093399012|1800799024|376014|4022899009|366016|38070700018
x-microsoft-antispam-message-info: =?iso-8859-1?Q?iwy5p3+I597BMNoal3Ap4WHtqJ5HsZaqw6rsQfBCrzqQqcn/x1I+hC0Iqz?=
 =?iso-8859-1?Q?r5acXggcOjrxx+iB5MaekQJOBXbBo6xD/4YtXg6qqZMWBw6oYEB171ToTk?=
 =?iso-8859-1?Q?IPxAg/cwN86gBqTGHQSpT0xY7jPvJFF4Ei0M02JaAy7lEdt9TdazLcIx/b?=
 =?iso-8859-1?Q?D1bTFZ7/2lHH03kl6ZjgcZ6SzRot8eWN1ifJ8eYD1yGt3pbfIc0xZMJgfD?=
 =?iso-8859-1?Q?PiM1l/PMWzvHgo1Rfm8dUj0xABzq+SelO1om4kuD5YdVPR86/MMSldVfjt?=
 =?iso-8859-1?Q?Y0ZDp0mwv87oqXkbg3+PUuWndG1P7AQwapJijBeZorrnSbJgI7A7M044I+?=
 =?iso-8859-1?Q?/h4oj0iGxN/PfMzqPujkY/63YNOQ2LdV8LLulZ1TlURONgIBJJXG8OK4nI?=
 =?iso-8859-1?Q?XwfSKKVpBHHM1/gp86dBqQ9bgJHoCIoRdGDrSUYjr/6Ahp4+1VDu55gMML?=
 =?iso-8859-1?Q?aDUCxPbL1THaCoyPMSCvjcn6r0WL9MXJuTbLhbpdEl6sWcqDQYdPWicOsq?=
 =?iso-8859-1?Q?AQJfZFe9IYg0ZP2dKUFbEmaIHUL/6nXC7cheXgeHV+Z9UolYYgbu0ze4qE?=
 =?iso-8859-1?Q?3zvuUh0RJxa2f4wFhU/u2wK08gtoZSgdQES+0D30FjQmSs6DDrj86wfQmg?=
 =?iso-8859-1?Q?zLao/Kio5CSWvyWbOL5rY0YPBBMjQscS8i8Ks1kEcVtpM5OpEZ7GRVEApF?=
 =?iso-8859-1?Q?ZkzHpLW2ES/i4C3YfTTDM5ijeZM4BGSnB9UUwRzN5LlXgrw8dbnWknukLz?=
 =?iso-8859-1?Q?zisIDH52NRzRJgyeCVctKKr8dREUbEQgidOeTfPj5tysyLfvPyPLthQfmq?=
 =?iso-8859-1?Q?c2PCCSRoy6cvGbS4Y16yPJZA9+NR4sPS+OCb2I/VivuGsqMsd8xY9rxWeq?=
 =?iso-8859-1?Q?tcr7L8y6q6i9CZJmbrXZnx2GyLkVYcgtdiEcUhVeJaW94BLZSKYIRykFit?=
 =?iso-8859-1?Q?XILqSGK9el+GFkhLaMnxloJ0dpCai0sn+kA+9Roc5LGGgQR6yf0ewn1m+Z?=
 =?iso-8859-1?Q?mCSbFLDtvlPn8KwikssM24NpYz4wkzQR6gRhQNdUGx9rm2q55bQ7PGyW02?=
 =?iso-8859-1?Q?kudLNdz8JD0EfV5xP4DNPZLp0WWBpEtA5d4KV8ZSF9L0Yad/iAIiRq6IQC?=
 =?iso-8859-1?Q?zRQPfuxk2LqjFqip7NRIoattkVOR46oxr1jgofuz63ozxB9OCEnGW0xI06?=
 =?iso-8859-1?Q?6oyhEeEgksSuS//q/z3KETUrvKFKIn1UZwYp/PRzQDXwb5pCjQN5L2/ppn?=
 =?iso-8859-1?Q?7QZDfo3eBXZs/0xsaNXDUP223TBrf3eB6n0CJP+tQyjqVoiph3U5S6n8f0?=
 =?iso-8859-1?Q?29LUTiNbG0IOXqlQ3eBxOnpv8WC58peP39XX0wFDj/6z0o7XtP4Q6/3A9X?=
 =?iso-8859-1?Q?BvS0BZCfDqZCaFPqw31UVO1TS7E0T9C99Si/wzazmHr9tlWv42325BlX6C?=
 =?iso-8859-1?Q?T8SBXPNGORuINruaj3Z4cMmpIwghtP7vf3t+i5WsVJKomh+TKOxx9/xFpe?=
 =?iso-8859-1?Q?A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR18MB2497.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7093399012)(1800799024)(376014)(4022899009)(366016)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?maVathC1m/R702P0UXq4aKlzODlA1BftyD5CZHgmXqBD3FWHziHl1x26Gz?=
 =?iso-8859-1?Q?jSC+hLHpb8syHY7qt0GLJ5aeToRpdK3LHRfnIXEx/vCbMzJzcexGbKp2m3?=
 =?iso-8859-1?Q?pEiW0+FycQem+WLKV5sVn1RdB3ZmhuuOkX9CjepNyJ9zxkUfwzLZNzqEj0?=
 =?iso-8859-1?Q?wPMKD50lTHJqOvcZOlL0ORHF5iJ2xr24LAZAyGs7K3GkKLUdSEMluHKUwq?=
 =?iso-8859-1?Q?hUo9puUGjE5mNQHUSokv8tCKfN4M6UgX1sYk1eg2MyBemg7AtLFqHOIAkb?=
 =?iso-8859-1?Q?SNqgUbYzFaKANToyTHvkowHAu+Yytr1s0IxnuqeiVi0kk5TgqCjmXj1PGA?=
 =?iso-8859-1?Q?T7Jm32rlBNAPVaPxbBLgk2KHcxgwHgc+rz/glStzc/NwwJ5rKCsNsg2ALh?=
 =?iso-8859-1?Q?+5zzVB/1kqt5UpC3STEu+/CXEZ3P5Hx8eVtAHK5VDEckHnCkluEy395Xvd?=
 =?iso-8859-1?Q?egBIhznfAg/SR3d3RrfhF0S7j68JqHztp4NALN0sMHP6gEQI2AILDNqOgP?=
 =?iso-8859-1?Q?ZXYX/gyXmkVIqhLXKZI3SC2VVWACTwTCXMCHj4wn+ZGq8sl5i81+JLUrIg?=
 =?iso-8859-1?Q?fQZJWqNumrmXtiNNbudfcRm3Z7U61Jl/dtvxJYc0PFBaT3SXhVVYCWpxub?=
 =?iso-8859-1?Q?yURWgw7KFMgJyUGsTqrLq8iCxe+eJE9cfQF8BKQCo1IivQnEKm4eDoLQ3s?=
 =?iso-8859-1?Q?bJR59MV1cNqo7CrWYKUZRVHvnYP3MV5CNdN2Mnss8mszD9kFz0ScC6Quxr?=
 =?iso-8859-1?Q?vCm0h1iUt7W6+nrsdViWK1aw+d0Q6OWiVUixWP7ZA2vb7dEWFycbdGN9gV?=
 =?iso-8859-1?Q?fAN9ZSqYOkw/YSqT6XRQFD383wKj/1wFkZhhCNlOnsjEhebkRUkZFL0HCB?=
 =?iso-8859-1?Q?Xrilsvz+4Wg9tLYNn8M5eU0yYvkupM+bRnEaId8Velc217UptywdyT//Jl?=
 =?iso-8859-1?Q?SnRyH3vPqU9DS4PVZnS75PEj/tROzkFVgY4iumklmCXAzRVRqJWg2c2tqm?=
 =?iso-8859-1?Q?ZoXAhQfnDBRETrH8e8ArwOcUFzBFoyQucDsm3Pw6fiaFAuuX5b67flAo0V?=
 =?iso-8859-1?Q?tq4IjBD8ssToQNdIFuc6yWu53/uaNSArFYyt85NK59em2I5qRdZuVDBnXA?=
 =?iso-8859-1?Q?MGSpL8ZCA54bpsjPbik5KYolP/LIWez+4BzCgXX/PXOAJKBU4XYAF2XVKk?=
 =?iso-8859-1?Q?wdGQIlYsOrcb6IhVydTprH8+q8iVRR3W+arnQ3w4eDTXIbLM0b6ndA4t67?=
 =?iso-8859-1?Q?IrLhmcCURhYIUNn1ln4hpiTWX43m2tJ5Srbl9wH5Q6z7ihsFgplXBV3aam?=
 =?iso-8859-1?Q?ETrFc0gafx0Dpm+hoS0unvrWLH+theVbFoM5xPDBzfaivY58ubLr6yT7BT?=
 =?iso-8859-1?Q?rCsVNKJf70n9ze3Ibs90CSJt7Y1Uc2G7UqBD1NyYhUGokoFU/9k0L2KtK5?=
 =?iso-8859-1?Q?Im0I5LAIyR2qNhzxEWEuevBHOtbsN60SiX/e3Ve3gp4lt7ntR69EBE8ov+?=
 =?iso-8859-1?Q?PW/1gCl+CjSdjlLK7En0ALznrnwLE3/dcHStpUOn+VmveoUBjNwvl0pYhf?=
 =?iso-8859-1?Q?Vs9A7leyb2Qq+D6GqTxyTYX8dSdv+YWSCMfOoJ6FoXsO41Zl+4BNgIjqEj?=
 =?iso-8859-1?Q?bLjzQrdVoJjy0CdRLa8YIMW30WoACnjHKX?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR18MB2497.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12ae5d7a-a2da-4d40-ecf6-08dcb7bf346e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2024 15:31:42.5650
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WLIZOxohdXIaSWGoClRtW53kTmAmTbq77gpk8mTXPejK9zYEDNoUpson0T0fJ0sKQjN2rHhMTKsUlAOQvEbZ0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR18MB3805
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN8PR18MB24973A8490704B4C3702DD5BC7B92BN8PR18MB2497namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.93.123 as permitted
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

--_000_BN8PR18MB24973A8490704B4C3702DD5BC7B92BN8PR18MB2497namp_
Content-Type: text/plain; charset="UTF-8"



________________________________
Maybe xmodmap if X is running?
xmodmap by itself tells you what these keys are mapped to.
I don't know for sure this will work, but try:

xmodmap -e "keysym Alt_R = Alt_L"
If you want to reset it typ:
setxkbmap


From: 'Al Sten-Clanton' via blinux-list@redhat.com <blinux-list@redhat.com>
Sent: Wednesday, August 7, 2024 11:12 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: how to enable use of right-alt key

Greetings!


A long time ago, I found and used a command that enabled me to use the
right-alt key in the same way that I could use the left-alt key.  I did
this especially for making Emacs easier to use, but I recall that the
command itself was by way of the Bash shell.


Recently, I've look for the way to do this but have not found it.  I've
so far done no better searching Emacs information.  Can anybody tell me
or point me to how I'd do this?  The main benefit for me would be in
using Emacs, but being able to use both alt keys at the command line
would also help some.


Thanks for any information.


Al Sten-Clanton


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--_000_BN8PR18MB24973A8490704B4C3702DD5BC7B92BN8PR18MB2497namp_
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
<div style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style="display: inline-block; width: 98%;">
<div id="divRplyFwdMsg" dir="ltr" class="elementToProof"><span style="font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>Maybe xmodmap if X is running?</b></span></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b>xmodmap by itself tells you what these keys are mapped to.</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b>I don't know for sure this will work, but try:<br>
<br>
</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b>xmodmap -e &quot;keysym Alt_<i>R = Alt</i>_L&quot;</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b>If you want to reset it typ:</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b>setxkbmap</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b><br>
</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b><br>
</b></div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" class="elementToProof">
<b>From:</b>&nbsp;'Al Sten-Clanton' via blinux-list@redhat.com &lt;blinux-list@redhat.com&gt;</div>
<div style="direction: ltr; font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<b>Sent:</b>&nbsp;Wednesday, August 7, 2024 11:12 AM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;how to enable use of right-alt key</div>
<div style="direction: ltr;">&nbsp;</div>
<div style="font-size: 11pt;">Greetings!<br>
<br>
<br>
A long time ago, I found and used a command that enabled me to use the<br>
right-alt key in the same way that I could use the left-alt key.&nbsp; I did<br>
this especially for making Emacs easier to use, but I recall that the<br>
command itself was by way of the Bash shell.<br>
<br>
<br>
Recently, I've look for the way to do this but have not found it.&nbsp; I've<br>
so far done no better searching Emacs information.&nbsp; Can anybody tell me<br>
or point me to how I'd do this?&nbsp; The main benefit for me would be in<br>
using Emacs, but being able to use both alt keys at the command line<br>
would also help some.<br>
<br>
<br>
Thanks for any information.<br>
<br>
<br>
Al Sten-Clanton<br>
<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--_000_BN8PR18MB24973A8490704B4C3702DD5BC7B92BN8PR18MB2497namp_--

