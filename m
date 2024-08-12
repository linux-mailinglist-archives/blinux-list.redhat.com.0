Return-Path: <blinux-list+bncBCAJTHUAX4NBBBUS5C2QMGQE4B46YTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 5140094EDB5
	for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 15:07:21 +0200 (CEST)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7093d32519esf6253531a34.0
        for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 06:07:21 -0700 (PDT)
ARC-Seal: i=4; a=rsa-sha256; t=1723468040; cv=pass;
        d=google.com; s=arc-20160816;
        b=YsRp7n+K3tfdHapudDNJJ59AiUB7pYiVvmxEEAwHkEFNySddC8A/qko7pFIYXAG03x
         GzNOa1Mrtjjv1VRXmxH4VvRLZa3wK7M3VGIOqrDKqMAQv4kvMNsAyzh9xcE6Rbhb5XsQ
         9e3p4/rnMtbcQ8ySsmXIZthMDEZqA1oMAxryMuc8zJlGmKx/rExqmsL3Mv/K0C7aQne+
         pA8konIHnDwDFBECQnGyW+ziszmGByKxFCHlk3qSXiMmlpP8KeGHrY+w0RsS04/UbNY2
         vzC5u3Os/2Su3j//5TudOSJUkp2bJbqaGoHIcGJDFskait6n65Oc+qFNHdi8iE3eXTZY
         dKjg==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:delivered-to;
        bh=10CaEmyxbgtgIUAqtJY2I76Be/64X3c15uglUDlzk1w=;
        fh=QUIJvk55dWZ1nMhqBo2V2RIRFf7DdpVKzD347RuOf84=;
        b=vpc7aKvWzWUtDYLdY7IjL4pG1y5uTpnzuEwHvmxtUPnL1ZUAp/DjxyMFBgT19JI2+X
         zq99yEkxT1fuuoerHIWacKe82Q4Gv6+RptP+3AFFquu/YzwxRONFvc2tqWzTpZdeeqhS
         gy4uQM9TPojO0tTtLg8WKGmsF68ga0vhPpOtSi8z5eSoA4NJgcArBLm3VlSYpELMbalY
         pKgCx2SpjuqQ8DXIVEdML2TsRlxJwGO7N3o5R/BA4RSMAST/ZruUqLPFZyPrU4RjlBFh
         1w5EHGaQPDvebjohTuqUlysEhKVpnARk5f10K22A/yE02MzI3wqh722MsP8lWc9OIEHC
         XDBg==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.115 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723468040; x=1724072840;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=10CaEmyxbgtgIUAqtJY2I76Be/64X3c15uglUDlzk1w=;
        b=keqABnAILMqJ/pF2nGdNhs3acxVpCaQodiIkpi4/DCx5fmra3UoYfZ7fqaQ7D8N/eZ
         0Xw+JkP2z+tqXaAwV9JBw/kDvizurs0Ii1MsbS9byNWMeMOXsyKTMo3hFmP/MXYEHDrv
         HkMe69CFLYR1uGDUqOvMWYlM65GjKt0BAmVzD7tcReiYhHXkJ4R08nDVK0KAjQXkeWMp
         H8af0kH9D4FAFjtQvNAfK3BnS26JcuMxvDDXQlzG/iyBPPdEmVbHcNUHy6ITQ0J76QYK
         VdTWSkUd2EEf56Zm/IYt7AD1oSUGd5ob41FWqt512fm37/ubyfBNl8hw2UGvPVAcntQ9
         x3Vg==
X-Forwarded-Encrypted: i=4; AJvYcCWQQUqPPzjtJENqkpTI4grw0ZvytdnjZhLV1WKgltI8tFGwOzmhfIg/nUemtad7+nETeBQ5l4pMdR+pVuoPt7KNevsiEuPpHMGg
X-Gm-Message-State: AOJu0YzC52HmBDqfvvIE/8Hk6oYGrjPDofOoRECX9ksffnaxhx6Wjygt
	DdbnSMHMyr4eZtdMETKNtI9JZuenbtUO3aCJAp6dE+47uQM0xib/mztxT5uKxxs=
X-Google-Smtp-Source: AGHT+IEndkkGf/eyeFY1bWHe1Kz3f6H/Nfhub24uHATV/x5jBclKf9tnIcX0zpcAtJ4/n2+1qG8jrA==
X-Received: by 2002:a05:6830:6403:b0:703:5e45:f991 with SMTP id 46e09a7af769-70c93985ce1mr197550a34.31.1723468039439;
        Mon, 12 Aug 2024 06:07:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:29c2:b0:6b5:577:fbee with SMTP id
 6a1803df08f44-6bc8459ef0cls90860256d6.1.-pod-prod-06-us; Mon, 12 Aug 2024
 06:07:18 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCWFFIebKqlO7O3iK6RvqCDDJS/V6BqZlmvsqxtr6CPRkO9j2bUVuZq4bypeJjPKBmiWF3mWjvli7oz7d3PlWgAzRMAw/7pA2eS4uNz3
X-Received: by 2002:a05:6214:5509:b0:6b9:299b:94ba with SMTP id 6a1803df08f44-6bf4f879910mr829206d6.46.1723468038036;
        Mon, 12 Aug 2024 06:07:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1723468038; cv=pass;
        d=google.com; s=arc-20160816;
        b=vng2ettQDEqsBg/BWSwOS1DIlapiVuQSqgmEJyLmlGSNdtN0YEICuT7x7/A61mVhpb
         0HD6+TuUaObvNxCqzkeqS7pgjSRETbXCuO9fpF52o0u8r6A6n9BCX5OWulqt/M7Aclbm
         35rQRNHo7efUAlBw+U9XJN3u+aEgRcDk0rRogCxzsz9RC4husKrbM5QGXL7OuLpwO6et
         mUlY/AnRulmmnjJ5AU2nYxxkeiwUhNuLKdALp2P3hgaqswl4XlCGa4iXox5hkBBxsSWe
         kyUpBaRd0D+cpMk5y/wGZ2MBoMok53nzYqieYIWy3Ol5t1o4VMN6UMxiaHuhVEpS+rtq
         VBaQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to;
        bh=2eDYuMCW/L/TUb+i7nPU8sQZerr4Ii/Lt0EQcfYsYbQ=;
        fh=fOJxt5vec0JRJMl+K7ezLtAGp9vQTmBZ4aaOw6Dy/hA=;
        b=ElLdeCtIE2K1ygGrytQLZfoOoKcqY9daGwbUxwP1/U/kfPs1OhkG2ZFs2yWWXyj30r
         3Ef65Yq0A5Kf8jDz/aZPGpoN9wpDxbcu82tawatlqrFncMsHTJu80CxmtldyC4DPOjLk
         L59vCdp+7GR0uiCVaO0UEii5zr1UVNaPLGYgFAFseLtd5vm30JGum/rsrGudBU3VBEWa
         82sYNbbq4XfwZzp7Bd5jfkjhoym/06pSKIRoTorni0wldtSngWZ5J0AcIk1gagOdVr4N
         Osg62CsJdf6uPvtxkTakW1iUVeJ8odiN2ZfjA5oXGGhK2B4ZNLmdHc4Aj/p9GXMb64av
         +vjA==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.115 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bd82e819ffsi59910706d6.524.2024.08.12.06.07.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 06:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.115 as permitted sender) client-ip=40.107.93.115;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-488-Tm5nd_MHPF2T9Lv6b9_CKA-1; Mon,
 12 Aug 2024 09:06:02 -0400
X-MC-Unique: Tm5nd_MHPF2T9Lv6b9_CKA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CCAC51925394
	for <blinux-list@gapps.redhat.com>; Mon, 12 Aug 2024 13:06:01 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C642719560AA; Mon, 12 Aug 2024 13:06:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C318619560A3
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 13:06:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0D1391944EB2
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 13:06:01 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1723467959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2eDYuMCW/L/TUb+i7nPU8sQZerr4Ii/Lt0EQcfYsYbQ=;
	b=NqjZQbfLTvlbHInH1PnWrBOLvm8zW08RTG9Vq6SK9oxe31zDZRCnVaM62iiIKFrr+Yv1WC
	5abFySIzcE9LyQpqC35g5GfBV+Bai+3xWjNrmd7lhhvbJxIcUVSJ7Coi3kNjyihNsZ1Ph9
	Jg1R0EgHo36YKNvS3r1d1ABNiT/583MGeyQFOcEERzvlGIjgriMIDlvOokuB1QNDsrjRJ9
	fPQ/AAlpKpOcVk8ZNmUTJ4wG9KpWI/nrGuaF6APBj7qo6wakxspQSbLPv2e9rOJ0wqxFMA
	HE/J+DZG6l/n00tmJEQ8BxJ2HO4tehXodphhwfGeDuJsLxCoJYA+oPoY5Dgclw==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1723467959; a=rsa-sha256;
	cv=pass;
	b=mRNDdnv5W7baRp1mVWSL6RfR6DfHG9o51HHjewV8oxBloLSjIfviB/z5wHNIXY0rneF2ZE
	RJUUBGRVF7gMfThLoWnbVToAJcUILIZn2u+kF4FS9NvFCVa1koYcb74+/gnkgmGgZifGXX
	AJ1UJT3ky5Cj7xEhCRIRqrWQWCti2Ylb/hXOS3K0iE3e7LrIcLpg4sKxq1wKHfm1hnSBKs
	0XlplQIUMCwUQ7lNuAFZha9emssrz4WX0ZJaVyNtRfFPqMLPwtkYIsihJjtjEEkkcI+oCP
	Dyhgvr3TrhT3d4N7ew55zoMlZ4iI2uDGTXfj3ue5pd7AO/54y1sc29BGXQvoBA==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=none;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=none;
	spf=pass (relay.mimecast.com: domain of cstrobel@crosslink.net designates 40.107.93.115 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2115.outbound.protection.outlook.com [40.107.93.115]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-378-J9IwO4a6NxqQer7cZV7JLA-2; Mon, 12 Aug 2024 09:05:53 -0400
X-MC-Unique: J9IwO4a6NxqQer7cZV7JLA-2
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vSP7wWzvJxSR7xtHDpTKI5QvwchJ9V4Qz0UVoGyekRGhuHHYsz1IHepmE8LhGdqhp6i+3+x1nWQjmEk3GnfIEhGPXsOqYiCUAb8a8Q7CkUnN5U7mkZZLttnxQWKKVZIaBAzdMXL4vm7XygJ9m1u/hq2dPn/jO48p7gwtk7eI7N7xiAg3I0olZaqtslsqpI5yfPsNhU9ZwH0pptQ4Lb3NR7Om5Roxj6LLJhhMWRoTYT0x4PzO0v7U4AfiBuYvZGNIicjlz9xk1BDEaT9ztT7AE/Gu8mz48LhJQUG/Zmkf1/0JDg/99TBFKxl6Kkfu39tm7PDpbou1rG1CntrDxKt+hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HolTZO7fHD1u0T4JtwbPnpXlXvrbGqAOo81VsINlPSA=;
 b=doPo5VE1m8ZAyValu0qJ04jfi6fRbOrDa/nzPnWenmTXwNRfTIu3n4HgBWKPDQsYuHvQ4VhnoYvADjjIOR6/X4fjDvsiPHdAHOn6issKT6yyw21HgRE/dgYpJhYfn5RvG3WG1jlJuZBUN04yf/Fsr3QU5YHWZX0POu3zak77xrpeeeiXt2rmNS8AomCV/bmLicYh64aQ/Xpvv4b24o8MjpCF+wLuNiroUxtCHPw5zKaC4aEVurqhTfftaJc0JVEoB9B5ha6YdGJdcTvBLnmUFbel87wBqBSIj5dmHkAWWqa+Xw5J4ctoRt+sHalZFpOFH9BoLghWJLCFcDQ2YSfPSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crosslink.net; dmarc=pass action=none
 header.from=crosslink.net; dkim=pass header.d=crosslink.net; arc=none
Received: from BN8PR18MB2497.namprd18.prod.outlook.com (2603:10b6:408:6b::27)
 by CH4PR18MB6140.namprd18.prod.outlook.com (2603:10b6:610:228::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Mon, 12 Aug
 2024 13:05:48 +0000
Received: from BN8PR18MB2497.namprd18.prod.outlook.com
 ([fe80::a3be:12c9:c94d:976]) by BN8PR18MB2497.namprd18.prod.outlook.com
 ([fe80::a3be:12c9:c94d:976%6]) with mapi id 15.20.7849.019; Mon, 12 Aug 2024
 13:05:47 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Karen Lewellen <klewellen@shellworld.net>
CC: Paul Merrell <marbux@gmail.com>, Linux for blind general discussion
	<blinux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?
Thread-Topic: taking a screenshot using either Links or e-links?
Thread-Index: AQHa6ocv1PPds3AkdUS1QAwsi7mPaLIfVwEAgAAhDQCAABkngIAADKiAgAEvB12AAAd2AIACxty7
Date: Mon, 12 Aug 2024 13:05:47 +0000
Message-ID: <BN8PR18MB24971BEF8094928970AAA86CC7852@BN8PR18MB2497.namprd18.prod.outlook.com>
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
 <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
 <CAJ1g4g9XWT9LpS_69mqzxHKQKOYkmyWbSE_kiwbG3d_=2snvLA@mail.gmail.com>
 <Pine.LNX.4.64.2408092006300.4155520@users.shellworld.net>
 <DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2@DM6PR18MB2506.namprd18.prod.outlook.com>
 <Pine.LNX.4.64.2408101435270.4167173@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2408101435270.4167173@users.shellworld.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR18MB2497:EE_|CH4PR18MB6140:EE_
x-ms-office365-filtering-correlation-id: fa4c23a0-ce17-40f4-27ed-08dcbacf7bdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7093399012|376014|1800799024|38070700018
x-microsoft-antispam-message-info: =?utf-8?B?eGhMS0p4cysrUUU3bGl6Z0ZBcnpRR05tMzZJd282K0djd3dzUW1ETXc2bEV5?=
 =?utf-8?B?dnp5MENQcjA5bWZjSGNPT0I3RjBHQlkvUFViVzJNYW5oSGZCTHFVekltTGNy?=
 =?utf-8?B?UVlsVHFBaXJNdUdPYVVUSytxSDQyYUdhT0dHbXJlSVBad25GU1IvQlZyRUZC?=
 =?utf-8?B?c1d2eFg3bS8ySDFWemJ6NkxKR3p0Z3BNamhZblpCTkdkSG00L3pmSXVKT3F3?=
 =?utf-8?B?OUJENUIySkx4anlWNUh1NzVkYWJObnIyUG5YbzQ0amRuY1liUlhtQXdiLzlq?=
 =?utf-8?B?Nlc4VW9nSnBwaXpoV0MrcnVtM3BsSk9ValdFd3J6RzJzclBWb3kvTFhyZ1Bl?=
 =?utf-8?B?blZvQmpwNmd2SjJqaWlUcXNrdGxpTG5DNTBCTDhkQlgzMnNiaWtaZGRreUpR?=
 =?utf-8?B?Q3hIVFl4SXZ4SWsrMEpVNngwTElrR1JVT3NVbkw1UFFBZ0NyVDVieXBrMHhP?=
 =?utf-8?B?MGhOWXphTW5NQnkvVkRUeEh5Y3dMdHpWc3M4Z2gyTE9OUitHZHFHcDB6U21G?=
 =?utf-8?B?V1QxbExEemRnclpwSGFYN0VTV2U2emhOQTAxZmRvMFF2MG83MXM3QlNCQkFm?=
 =?utf-8?B?WDZYMkJGTzQ5VzA1OElvdTBsK0xwd25XRUl5QjdwZFJnK3lzdnpKN1JsRWtI?=
 =?utf-8?B?ejZZU1UxNjVXRlBnK3F6aUg3QzRkQ3ZTUnZyMDFjblVVTWtKUWxub1Q0QTAw?=
 =?utf-8?B?U0xRT1ZEUkEzTUdGakZycFI0QXlsSjlMS2FvR1JXdzBMdklHbFpVZWEwS25Y?=
 =?utf-8?B?a3lkMDJZSnJiNVRyQ2YxZHlURDliU3MrQlE5MTltQzNkaFBCeXlBb0VTQjMr?=
 =?utf-8?B?akNVQWpHNStOanBLbERRQ05USmNJVnFRSzVybDNkRDZORVlHSUtqeEFnSHhR?=
 =?utf-8?B?bTVBTzRCUXdjTFhZNFVBMktGSVV2YUdETXUzWldnUlMwd2huN1oybkcremJv?=
 =?utf-8?B?V2lXOUdFUFU2dnBZTUdWVnh2dGhXeXhGWE9vZ1h4RjM1UjJyb3BIQWVzWTJ3?=
 =?utf-8?B?VE9BNWNZUDBLVTFoZ2lCMFNyZ2h2NEZwUWErZklIaC9KL2V2UTdFUUQxa2NB?=
 =?utf-8?B?K2M0YTlySjFsTEM2RDZzNXRhRHF3NFkrQUUxWDdJU0FKUmtpQkxEOWw0bUFn?=
 =?utf-8?B?YmdtK0ovUURBN2NFbFEwcjRoMjJiMjN1WFpBMFp0OTl5WkdsblRvVUlwSVlW?=
 =?utf-8?B?SnI1eEU2bjNLcldCelRCODlEU0MzUXF5djRzcGRtZ0xDdk5oVXJaUTg5aW4x?=
 =?utf-8?B?VVZEVTM2VHlTNVc3Sm9CL3JZR1pId01yWW01R05qUWVaam02Wk9BbGxxRGZr?=
 =?utf-8?B?QlVCeTNORHU4cGFrSHVDdXpnOFJ0eTB2N1huR01KcHVUa3V5U21hYWxBZGxO?=
 =?utf-8?B?RVdrSHBTcUw2VjBlckxQZzh1L3hhTmNrcldjb0JLTU0rOHBqUnNCWjJaL2V2?=
 =?utf-8?B?bUZ1SDNJZHFpUUt5OEhZZURCN1c4TEZRTWttd3V2Z3l6ZDNndUZ6azIrZDVz?=
 =?utf-8?B?OWVIZG9Wc1kvNHlacFh5RkhnM29mek9CQytNZjg0Mi83VDFpeWdPaElIU3dz?=
 =?utf-8?B?cDR6cjNGcVZCQ1NEVU9vd3h4V3BXMFV6Rm1QcHZJcDZJM0oxZ0hkTk1nUlRo?=
 =?utf-8?B?NEdKL3pRQlphdEJ4OGs1M0xvRVBlS0ZacFQvNWw3aG9LSSsyZnBnUnFoZnFS?=
 =?utf-8?B?cDZDRnpQY2FBUnlaU25DQ2tBNm1YeTBIcUNYUkJOTllSRlgwcFRSaDk1L1Qx?=
 =?utf-8?B?UC9PZ2tjL01uWlNJa2N0VUpGWnhYWGNzRytTSDFHdTljS2N2bjZmMzFvSTE2?=
 =?utf-8?B?d3hiSmxIRzgzTWVla3FzMGVMZzJnZkJwZjJRMXBhNXcxYThXM2tpeW9pbHZZ?=
 =?utf-8?Q?BZKxhpsb8p9Au?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR18MB2497.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7093399012)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0FuY3RnUW1la1M4MXpxMkd5dmMzdHdkQTZ6VFNVSHNFQjV6Qmd1WE1jZTIv?=
 =?utf-8?B?cllOY3hrWkRJUm5XNElYWWRqODkxVlFKOW8zY0xxZmx5Z3ZaSUtxMnVrY1Fi?=
 =?utf-8?B?Q2RvNm4zWW41b21BQ3V1TVNKYVVhdVJhWnVjdmwyTmROclFxeFVOK0xBQjhN?=
 =?utf-8?B?T2k5UWJuUmc4YUZ4c0NhcWRGSmhpK1cvYUs2U1hVUTNYcFFMMlVmOFNJbndp?=
 =?utf-8?B?RllXRjVpNXZNMExOWVlvWTErTXhTSmY4V0lQTU0xK3UxQnh5elZiZ0pmOUlU?=
 =?utf-8?B?NHhzZHJ3UWJYcUc5eVpjWk5wYlZtN05VT21hbFhWS29pZHVPc1NFUnBhK3VM?=
 =?utf-8?B?d2FFUTU5Z0pSMDJ6ZWoyd2JnR1VKOHBnNWRjY0lPSnpMVTVvWDJFQlhIaG5p?=
 =?utf-8?B?c2VJWXkrbE5YU3NhN2orMTBpQU5WWUNxVUVZN2xoVzFINmdDZ2tadFE4RE9z?=
 =?utf-8?B?REhCZWNZNlp0a242Z3lrUnBDZ2pZUW4vczczZGFDbEY4YlRYZXUwSWpoU0NP?=
 =?utf-8?B?U3pEN3NtNE1tZi9wVXltMGJSK0x4M0RSNGVmYkFDSS8xenNEWVZBaVEraG1B?=
 =?utf-8?B?STl5STZXdElvOWhiaEpvaW1zNUtKWFdOcUx0Nk5OU253MUFrLzBWSlhoU09i?=
 =?utf-8?B?QlBDQlZsM1F5TFRNY0VLdWxsYXF3WWlvZzY3OUVJYSs3dWZITHYvMmhuazl0?=
 =?utf-8?B?YlA3d0diQU4zbUpURTVUWW1vbTgxbjAzNndmNTgzNlliTDlWMUhHZzZLZXJZ?=
 =?utf-8?B?UnkvNEMvQ1NnTWZVei9WVmpmcU9zeFpEbWpzeU9jdCtSNlFCeVZLY0xkcllX?=
 =?utf-8?B?MGtaQVJZWUJ4QS9HdEtXVGYwQlhvRnJ6Nk9Qa2x5b1M2cTg4b1ZVcjQyT2J0?=
 =?utf-8?B?RnNndEVBS285d2RRak8zSGc4bldqMThwVTNvV3RRVzNNTGp2di9nMjMxZ05p?=
 =?utf-8?B?MUQza3IxMDJlYU9OYUgrQWVIWkFPV3Y4bm82M1Z2Zy9HcDhtTXd3U0ExVWR0?=
 =?utf-8?B?ak1lRE9MK29JSGJWT0lFazNnblpuMVBDMTd4dmQ4VHMxazRlMzg3ZUh4Sk9j?=
 =?utf-8?B?Rjl2ZmRqak9Jd2dvaFJENFJJYkhlUmhZUVkzV0V3UGRON2JCY3NFTHVQMDlG?=
 =?utf-8?B?Wk9NYzRkeEZaZWFIQS9pYTZ4YkVnRUhnejVZTXVTOVVrWEZNYXVpUjlrd0xY?=
 =?utf-8?B?em5XeDZoR2IzRktKMlM0eDFpekptU0w4eUUrbU5TR1ljY3hWUy9JUnUvSVda?=
 =?utf-8?B?SmFzK3JkRS85SVhNTzdaQ24vaWdGcmNCc1ZvQ1l6Y3I2S2RRL0VkbGpXKzBS?=
 =?utf-8?B?ekFHaStkU3YrQ292TGo1Q25HempGV2IvSjJUNjRYRDlXa0V3dEw2aE1jcFhp?=
 =?utf-8?B?WDBPQ3FIa050VzNhd3FMMjZnelk3Y3QxaVpHTUQxTGdsbHdmYmpDbEtrYU5P?=
 =?utf-8?B?cUxmRGtUbGw0L2ZXcnRtM0dMMzhTWUJaOU5ldEdzWmNSaTN4cW1kUDdnSkJz?=
 =?utf-8?B?eHl4ZU44bUJWQ2xVL1dvTElWMG0wSURUQzFWYmZqV1FlcW5xVHNzdHhod0da?=
 =?utf-8?B?OWJnMldZaTFRUnFZaG9hc08yWDcyZ0tRbUxETUtnMy9NTkgvZURxUmlMTW16?=
 =?utf-8?B?aGtNdVdSbk5lRFQ2eHQ5VzU4MWt2NHVoZUVoQ0RJSlFjVEdCbU1lK1Z6NUV4?=
 =?utf-8?B?dEJhVmNQR0docUtQclBGL3lSdjJ0Ty9NbEhWNnFLSGdYbnc3QXBBNUFkT1Rv?=
 =?utf-8?B?UVVnb0xYLzNzSmpkc054aE1iZU1aM1NXYjQwRkN0ajZlVE56alBjdDBrYTFY?=
 =?utf-8?B?QVhYK1VBaytRT1JlcmVmL2xKaTRETEJMWDBmalZTZUVFM2N6QWI1dGJ5cisz?=
 =?utf-8?B?NW1lUzN6VzdUOFg4UThsQkFlMUVoeHJyT0dsNVIvYVJjWHZuR0pBZEdtN0FV?=
 =?utf-8?B?bEpUWGtEbXc3N2RRSUs4VmFCT1BrRmk0bkVjN3VnRFFDTSs4d1RaaXZ3TVpM?=
 =?utf-8?B?WmdHV05FZWp1eHFScWdxOVR0d0N5d0VzN1MxaVJWUXpBankxUm41bE5KSHYz?=
 =?utf-8?B?QUhnUUFhNUJ6SkY5cE1qcHdoUVdTdEN1UWxaYW03Wklia0JLTGRucE4rTitr?=
 =?utf-8?Q?zRMwHkan2Gu7xvIn13jRCPVbY?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR18MB2497.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa4c23a0-ce17-40f4-27ed-08dcbacf7bdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2024 13:05:47.8619
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 35GiwWOXORiDKepnvod1WaoH0ju0+jVlb0EA2jdhjVdVTRqMaVny7u7Xx4IzvpfjLjW+9DJ+eKVArKwTjuRHjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH4PR18MB6140
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN8PR18MB24971BEF8094928970AAA86CC7852BN8PR18MB2497namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       arc=pass (i=2 spf=pass
 spfdomain=crosslink.net);       spf=pass (google.com: domain of
 cstrobel@crosslink.net designates 40.107.93.115 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
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

--_000_BN8PR18MB24971BEF8094928970AAA86CC7852BN8PR18MB2497namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With Links the Chain, you can press F9.  On the File menu it has a Save As =
option to save as HTML and a Save Document option that saves as a text file=
.  Good luck.

________________________________
From: Karen Lewellen <klewellen@shellworld.net>
Sent: Saturday, August 10, 2024 2:40 PM
To: cstrobel crosslink.net <cstrobel@crosslink.net>
Cc: Paul Merrell <marbux@gmail.com>; Linux for blind general discussion <bl=
inux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?

My sincere apologies.
I am not asking about lynx the cat. Amazon has removed the
www.amazon.ca/access<http://www.amazon.ca/access> door all together.
Meaning that when one tires to log in there the html error that empties
form fields, all form entries will be lost error happens.
instead, I am asking, as I did several months back for the links - as in
chain or elinks solution since both allow  amazon Canada log in.
I am also not sure if I am getting all the posts, since shellworld
administrations still believes they are above the need for ptr records.
Thanks again,
Kare



On Sat, 10 Aug 2024, cstrobel crosslink.net wrote:

> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82Looks like 'p' to p=
rint to a file in Lynx.
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=
=80=82=E2=80=82=E2=80=82=E2=80=82https://defkey.com/lynx-2-8-9-shortcuts
> [https://defkey.com/images/program/lynx-2-8-9-2022-03-31_02-08-02-origina=
l-size.png]<https://defkey.com/lynx-2-8-9-shortcuts>
> Lynx 2.8.9 keyboard shortcuts<https://defkey.com/lynx-2-8-9-shortcuts>
> Lynx is a text-based web browser that runs in DOS, Windows and Unix-like =
operating systems. Started in 1992, Lynx is the oldest web browser still be=
ing maintained.
> defkey.com
>
>
> ________________________________
> From: Karen Lewellen <klewellen@shellworld.net>
> Sent: Friday, August 9, 2024 8:08 PM
> To: Paul Merrell <marbux@gmail.com>
> Cc: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: taking a screenshot using either Links or e-links?
>
> I appreciate that wisdom.  However, I would deeply prefer the browser
> specific solutions if at all possible.
> I am using a Linux shell, which may impact how this door works.  further
> the  extra links  compile on my desktop is for DOS not Linux.
> With appreciation,
>
>
>
> On Fri, 9 Aug 2024, Paul Merrell wrote:
>
>> On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen <klewellen@shellwo=
rld.net>
>> wrote:
>>
>>>   well..how would that save a file in a way to share it with others?
>>> print screen creates in theory a printed copy.
>>>
>>
>> On my system, it brings up a screengrab program.
>>
>> --
>> [Notice not included in the above original message:  The U.S. National
>> Security Agency neither confirms nor denies that it intercepted this
>> message.]
>>                                                =C2=AF\_(=E3=83=84)_/=C2=
=AF
>>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_BN8PR18MB24971BEF8094928970AAA86CC7852BN8PR18MB2497namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
With Links the Chain, you can press F9.&nbsp; On the File menu it has a Sav=
e As option to save as HTML and a Save Document option that saves as a text=
 file.&nbsp; Good luck.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Karen Lewellen &lt;kl=
ewellen@shellworld.net&gt;<br>
<b>Sent:</b> Saturday, August 10, 2024 2:40 PM<br>
<b>To:</b> cstrobel crosslink.net &lt;cstrobel@crosslink.net&gt;<br>
<b>Cc:</b> Paul Merrell &lt;marbux@gmail.com&gt;; Linux for blind general d=
iscussion &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b> Re: taking a screenshot using either Links or e-links?</fon=
t>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">My sincere apologies.<br>
I am not asking about lynx the cat. Amazon has removed the <br>
<a href=3D"http://www.amazon.ca/access">www.amazon.ca/access</a> door all t=
ogether.<br>
Meaning that when one tires to log in there the html error that empties <br=
>
form fields, all form entries will be lost error happens.<br>
instead, I am asking, as I did several months back for the links - as in <b=
r>
chain or elinks solution since both allow&nbsp; amazon Canada log in.<br>
I am also not sure if I am getting all the posts, since shellworld <br>
administrations still believes they are above the need for ptr records.<br>
Thanks again,<br>
Kare<br>
<br>
<br>
<br>
On Sat, 10 Aug 2024, cstrobel crosslink.net wrote:<br>
<br>
&gt; =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82Looks like 'p' t=
o print to a file in Lynx.<br>
&gt; =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=
=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=
=E2=80=82=E2=80=82=E2=80=82=E2=80=82https://defkey.com/lynx-2-8-9-shortcuts=
<br>
&gt; [<a href=3D"https://defkey.com/images/program/lynx-2-8-9-2022-03-31_02=
-08-02-original-size.png]&lt;https://defkey.com/lynx-2-8-9-shortcuts">https=
://defkey.com/images/program/lynx-2-8-9-2022-03-31_02-08-02-original-size.p=
ng]&lt;https://defkey.com/lynx-2-8-9-shortcuts</a>&gt;<br>
&gt; Lynx 2.8.9 keyboard shortcuts&lt;<a href=3D"https://defkey.com/lynx-2-=
8-9-shortcuts">https://defkey.com/lynx-2-8-9-shortcuts</a>&gt;<br>
&gt; Lynx is a text-based web browser that runs in DOS, Windows and Unix-li=
ke operating systems. Started in 1992, Lynx is the oldest web browser still=
 being maintained.<br>
&gt; defkey.com<br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Karen Lewellen &lt;klewellen@shellworld.net&gt;<br>
&gt; Sent: Friday, August 9, 2024 8:08 PM<br>
&gt; To: Paul Merrell &lt;marbux@gmail.com&gt;<br>
&gt; Cc: Linux for blind general discussion &lt;blinux-list@redhat.com&gt;<=
br>
&gt; Subject: Re: taking a screenshot using either Links or e-links?<br>
&gt;<br>
&gt; I appreciate that wisdom.&nbsp; However, I would deeply prefer the bro=
wser<br>
&gt; specific solutions if at all possible.<br>
&gt; I am using a Linux shell, which may impact how this door works.&nbsp; =
further<br>
&gt; the&nbsp; extra links&nbsp; compile on my desktop is for DOS not Linux=
.<br>
&gt; With appreciation,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, 9 Aug 2024, Paul Merrell wrote:<br>
&gt;<br>
&gt;&gt; On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen &lt;klewelle=
n@shellworld.net&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt;&nbsp;&nbsp; well..how would that save a file in a way to share=
 it with others?<br>
&gt;&gt;&gt; print screen creates in theory a printed copy.<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On my system, it brings up a screengrab program.<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; [Notice not included in the above original message:&nbsp; The U.S.=
 National<br>
&gt;&gt; Security Agency neither confirms nor denies that it intercepted th=
is<br>
&gt;&gt; message.]<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =C2=AF\_(=
=E3=83=84)_/=C2=AF<br>
&gt;&gt;<br>
&gt;</div>
</span></font></div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_BN8PR18MB24971BEF8094928970AAA86CC7852BN8PR18MB2497namp_--

