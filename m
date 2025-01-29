Return-Path: <blinux-list+bncBDM5DGHN5MHRBO7B5K6AMGQEQANWIPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C2801A22669
	for <lists+blinux-list@lfdr.de>; Wed, 29 Jan 2025 23:50:37 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46e2504c3aasf2741641cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Jan 2025 14:50:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738191036; cv=pass;
        d=google.com; s=arc-20240605;
        b=cwaJV8fOY3gXXRXHnx6Cav5NhPJwCDoKQ50/a9e96W2BgU7ZpOVOkP1Wk+LxipePA3
         YZObC5zRW9UmNJJ3Y9tfPFZuo/YQxWRGe0AqqTB5A+fs8/wK52DKNkohBd79omEJ4PGq
         rcCmF9gkHULGlC/38mNevepzpJh+7pUNsc96PuWwJ5DflsnF0hg5A4n8vbZDKJsdJbzS
         +ybrihMgYXxpd3cBqC27tw7gNXR7gByzBPqZQe3si+r1XFGpejgG4yJFEhAghggASxjJ
         i/+wuCwXAFj+w9XCxgEkgNV8WfHuDqRiFl7u29oA8lcl9cfQKwLFoVQt4I1BAZhzk+31
         Txsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:delivered-to;
        bh=I1P/LBKvO9NOe0iofYeqhzmEMvlCbwUhoFA7GzcIU4U=;
        fh=anXcpL8FcOCyf8R5LxiKkxRj9JhEM73sn4wbiBCDGFM=;
        b=M6JFcXIA+H7YIyc+/RIlNKLUdAhfRXYH6ghKzB1P/bRSpWaLHVG8ujo9fiV+Hzjsgx
         MOYWvfIrhh8KrxFEPKZtTRrPpkoa1+naSHRC96BjHmTi/W/Z4TEr7dLNwXbQklsuid4W
         KxhoZH4bmTDxm/ITgg3Qb7U7uH6KUYRk8K+mLr13f6o24XuI0DWHmD9RL4GaxeLkAc4S
         7WeG4hiMYvd9phOXSKHwckL9hUdp3uZiolrTSpLqcuEugyXvFOGsc4HLbtWvrwBlAbWT
         LopcPmf5qqcClUtk4Yeq7xlHQdZgjLSWr4TxD0Qd/iuYkfvZzQimckoVNktK89WD2cFM
         L3pQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@outlook.com designates 40.92.21.14 as permitted sender) smtp.mailfrom=ilovecountrymusic483@outlook.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738191036; x=1738795836;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I1P/LBKvO9NOe0iofYeqhzmEMvlCbwUhoFA7GzcIU4U=;
        b=S6jRS1N8gAYPFnlzZ/gwiL7L/T94rzfRjrA/9rqOkluGzfn8akbsOgrnSlLRnzfRCJ
         TSmcTP5A7+wIvbWv2ogsc9r/6Em3IqfFJKrYd6Km4dDbkASiNQD73FUA/wIG5YkP57JL
         3shawXI9ecCZN+6Rh2VmkjIx0c1qfP/1a+Vyp+KZpIpERO4Bczx6E3eq5a5fejtkW6eq
         xvy0koxBYRV3U8fH+bI/N3ok7HBrmoQNYHv2JqSwmwpmCZ55+ncFFqcCVmOqmxoWOJOJ
         euWfOnxdO0ybObtZ5G6Atdq8d+D+m0QDnWsJ1cAmKCHqzFHo6ovx6miE6XsvaS9urFgj
         4jMA==
X-Forwarded-Encrypted: i=2; AJvYcCXIt3s16gO7j1O3VEdSAkkEdqrO6WuP/Bh6EDibspB/7fWv/uAAdL90167pIgiAJR3Ur+AVxw==@lfdr.de
X-Gm-Message-State: AOJu0YwevGr7mFVrvIQ6fGlrg7WOuZ6mF3eq4XFSQzzglzNuOdFB6My1
	VsTd6Nk35NAZALpcByiRna6iIONmhi6pAB1xuSQ7mas3nIMSv1kRr+cC/E1+0F8=
X-Google-Smtp-Source: AGHT+IF8P8Bx/bYGuSG5WGl+7TxoFyKHyWUKGQ633+j3ssPnXK9JENoehUesSprit0rLWzOELbed9w==
X-Received: by 2002:a05:622a:134e:b0:46c:7152:317e with SMTP id d75a77b69052e-46fd0b753famr70752661cf.42.1738191036103;
        Wed, 29 Jan 2025 14:50:36 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4f81:0:b0:46d:dee4:45d6 with SMTP id d75a77b69052e-46fdcfb9bd3ls5615021cf.2.-pod-prod-03-us;
 Wed, 29 Jan 2025 14:50:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUEsEeHRUoKP0vpTLLKA45XKBXrOqcaKqHwXxPcmBmdq+YBcgHelph9vfH5A7aV+P44y1h7pTbK3Vn64A==@gapps.redhat.com
X-Received: by 2002:a05:622a:8cb:b0:46a:65c:b589 with SMTP id d75a77b69052e-46fd0a81258mr76994751cf.6.1738191034840;
        Wed, 29 Jan 2025 14:50:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738191034; cv=none;
        d=google.com; s=arc-20240605;
        b=YU7zmjGnlXy+bD4HYXokOmOIzCCc19iEXuzkj1QN4J9ZTPzMrGFkwsOqsEmcRL/D1r
         ZtaxkH/7FPdv52Ehw7BVeqmqCdQlm5FhWzNxlnl0xgAJfk7IYQaF2BjCja81Z25VbIr7
         iDIzmI6mvlwW+HAudsYxmkxrtfK1vtQgdy3s9aQ1kXD2ifJhZeuo1Md8we6v2FUdpu5q
         5Q6XWq2sNVo3hEjQs0+2qzSlltN//mU9EHcMPKX21jlAIXCZz++IsZNztjQaDOiu3HD9
         SLVVJh5DcEtgimfWMxdAPOOA5ZYKCbQhkjLmDq+q2cE4aggXrLQrXTfex+iBUE6EiBAN
         xJ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:delivered-to;
        bh=bTTnU5IQFnwd4mzeZYAo4AjJO6Drm22qEVX6aRfj1zI=;
        fh=NqM+ocv+tctyYibxFwB333Kj+nut3FS2DTnawapVZlM=;
        b=RdEwaE4fQC59rPnNll3m259ug9XofstdJe1FX/GW6jURTui5CdoxLerjs4/EPYI8TA
         UMEYaNsmreu0U7bORnKwxdEZdxN/43fEjTRxW5wQofoeeLwB7esGVwhEKiUbBiyxqXd7
         qGTugQOdHI0bfPTr1E2IgpL9Vber7eHiivW3FfLcx2bjO2Om+RGjnxAtXulFqR9cwUDK
         zKEpe9hLGpPXTCr/yJrze+MvKE4PN4IMf1uRgRQ1vlVWBJCMm+Z1HAfWKDu13zwC2dPe
         KJhsH/etGl61j9fmyk7EU/J2uIR5po12ZstA2NmJP4ZnheGyL9W/RPa7qcmR1ABgZ2q3
         RaSA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@outlook.com designates 40.92.21.14 as permitted sender) smtp.mailfrom=ilovecountrymusic483@outlook.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf0adcf3si3174251cf.86.2025.01.29.14.50.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 14:50:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ilovecountrymusic483@outlook.com designates 40.92.21.14 as permitted sender) client-ip=40.92.21.14;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-325-gxBRo_rQM--xF5pSKPKt_A-1; Wed,
 29 Jan 2025 17:50:32 -0500
X-MC-Unique: gxBRo_rQM--xF5pSKPKt_A-1
X-Mimecast-MFC-AGG-ID: gxBRo_rQM--xF5pSKPKt_A
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A49AD1801F0F
	for <blinux-list@gapps.redhat.com>; Wed, 29 Jan 2025 22:50:31 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A092218008C0; Wed, 29 Jan 2025 22:50:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9D2611800358
	for <blinux-list@redhat.com>; Wed, 29 Jan 2025 22:50:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1D905180034F
	for <blinux-list@redhat.com>; Wed, 29 Jan 2025 22:50:31 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12olkn2014.outbound.protection.outlook.com [40.92.21.14]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-438-ONj2kxmhPIupF9tortRjFA-1; Wed,
 29 Jan 2025 17:50:26 -0500
X-MC-Unique: ONj2kxmhPIupF9tortRjFA-1
X-Mimecast-MFC-AGG-ID: ONj2kxmhPIupF9tortRjFA
Received: from DM6PR06MB4777.namprd06.prod.outlook.com (2603:10b6:5:fa::26) by
 BY3PR06MB8180.namprd06.prod.outlook.com (2603:10b6:a03:3cf::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.17; Wed, 29 Jan
 2025 22:50:22 +0000
Received: from DM6PR06MB4777.namprd06.prod.outlook.com
 ([fe80::c62e:2a74:7a6f:fff]) by DM6PR06MB4777.namprd06.prod.outlook.com
 ([fe80::c62e:2a74:7a6f:fff%5]) with mapi id 15.20.8398.017; Wed, 29 Jan 2025
 22:50:22 +0000
From: matthew dyer <ilovecountrymusic483@outlook.com>
To: cstrobel crosslink.net <cstrobel@crosslink.net>
CC: Martin McCormick <martin.m@suddenlink.net>, Blind Linux
	<blinux-list@redhat.com>
Subject: Re: Control-Alt-F1 What is it?
Thread-Topic: Control-Alt-F1 What is it?
Thread-Index: AQHbcqAtxRrvPstBTkG4DtnBW7rSzA==
Date: Wed, 29 Jan 2025 22:50:22 +0000
Message-ID: <742860A5-86AC-4976-8B82-8E2C87DA017E@outlook.com>
References: <E1tcsd6-000YH1-1N@wb5agz>
 <CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2@CO6PR18MB4419.namprd18.prod.outlook.com>
In-Reply-To: <CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2@CO6PR18MB4419.namprd18.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR06MB4777:EE_|BY3PR06MB8180:EE_
x-ms-office365-filtering-correlation-id: 67efa422-26f5-4344-0d39-08dd40b75059
x-microsoft-antispam: BCL:0;ARA:14566002|19110799003|461199028|8060799006|15080799006|8062599003|8022599003|7092599003|12050799009|56899033|102099032|3412199025|440099028
x-microsoft-antispam-message-info: =?utf-8?B?M0FSZWxRQXEyVU1JdHp0VjZsU0lTZVNLQi84eldQMFgwUlY4ajRndzB6Q1Aw?=
 =?utf-8?B?NjJ6enR6WVkwQ2E4aXpSWWtDeFlzWGs1b2ZMMTRYTjJhMHFtNnRBb0VkRXJP?=
 =?utf-8?B?Q1cyNWdETldEQTR0blAwc3pSUStMQXR0Y0Z6aG1QVFptRDRxb0J0dDlDa3RU?=
 =?utf-8?B?ZHM0dDY1RHlNNzBLZFBwckVnNThubDdaTFdPS29yREZlNWRTaXZTWTNkK3Uv?=
 =?utf-8?B?WlN6SjlZRjdrZUIzK1pPNXM4NUtncmlGVy9XOWhSUW4rcG5iQzFPdjV5Y0hU?=
 =?utf-8?B?djBnYm12WEdQQnhhVWZNL2JYSldxMDQ0ZURSSE1mdDhPRVZKajFGMCtVSjhR?=
 =?utf-8?B?U1Q5aEdlMEtnMHZHTStnbU5odE1sL2l2WXR6OHlQRUZSMCtpaURGa2hHVWdO?=
 =?utf-8?B?TnpCZ0IxVm5VdnVmcWp6bVRJVFllZUQ5aSttaWp4RzZyRU51TTkvSWUzVWtZ?=
 =?utf-8?B?OXV4em9rRzhIVzY5dGdTR1d1ZDJrUEVNVTZxV29LZ25ITmtnOWpHVEw0YXpu?=
 =?utf-8?B?aTQzVmZ4ZCsreDFHR2MrUkc2Y2d4aDRvSWZML1lLOXZkQk5LcjQ4NDkwdzRW?=
 =?utf-8?B?d1VNNDdnbU1EZll3UDBVYURlMXFINmZUZWNTYWJYRlh0enhTODhGeUhBMmRm?=
 =?utf-8?B?RE9HK1RsTGNUQ1hoaTl0T3Q0cEpjS2VkR0tTa0lIcGJCSU5MQ3lWdjlDMjZu?=
 =?utf-8?B?Skw0MGVUbkwraWgvRHl2dXI2dUtIT0xOQmZDYXlxazBvZDEvTUFOZTE2amdl?=
 =?utf-8?B?Q1ZnTUZ0UXU0akhscU1La2JvV1JmaEx1ZnQ5UkxIdVVtcW1Kb1luZDlBb25Q?=
 =?utf-8?B?WkRvUnBnejNiZWh1eU9Nb0J2SktDYWRwa1J3aTg2VDJydUg1dEgvdWxsdDFx?=
 =?utf-8?B?eEVWdGhNa0tOUW1ZZTRwVmhHNVpSdFIrTE9PWWdWWmc2WHB3eVdCd0hORnBi?=
 =?utf-8?B?a1hsMHN5ZEt5OWJQTFVnTnNlOVlYbEx1YkRKNEUyM00yN2NDM1I5cEM0RlJO?=
 =?utf-8?B?OC9lZWlvaTNWdWZydHhqbjhtMHpLR0FwOVZqQityOVNPK2JFZU95M25VZlNL?=
 =?utf-8?B?NzQrTVdDN00vN0ZCaEVOL284OHBFV1I2TkFiZXRTejB2ejNnWVpiYUhrYUNZ?=
 =?utf-8?B?L1F6NGpxOHpYVE5Va1dJOUk3OGtxMmJVU3VrbzcvaDN3WWZTQ0lmdjN3UFI4?=
 =?utf-8?B?TEpxeVp0R1BXejNPMDkzeDVyZTNxK0FyZ0tYNkh2YyttRUlmcmlnOXZGb3Bz?=
 =?utf-8?B?TUF6YlNrUHlGa3gwSTU1eDdOdjRZaEMxSWJiRGlGL1hsN3ErZXhqOE5zNkxi?=
 =?utf-8?B?RVVmak13QlRFT0FGVE5aVTFLSWRXbGVpb2pIbkFra3ZjMm84b0EzUlBML0V5?=
 =?utf-8?B?eG9RMUswaGdEV1VMMWRjZjNCN0lYNWFtWFcvRjM1bERRaHdiVWZqRlZoNkFi?=
 =?utf-8?B?NTNvWlhHclRZcU1lelpxb082d0gvY29NQzNpdHdJdzgwZ1lCUm4yY1dpU0Nk?=
 =?utf-8?B?ZmFhL0d4ZHNrZWNZM3c3bWdNdnBlL2JYc1EyVHk5V1NId0JHNlcwbmhFT0M4?=
 =?utf-8?B?eVhsUT09?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0ZaMEZteUtpaFdCQXJvK3RIUXpGY0ZQRWxVZVFkT0pUMm1BWERrc1FaMzhk?=
 =?utf-8?B?dnlQZWhPZFZONkNKVWtqKy9GbnQ2YmVJT3RKYW0xNHRUWTJkQkYrM2NpZ3Jn?=
 =?utf-8?B?R1FFS3pHSFFUT0g5MGlpSG1TQ0RuNnRhaWtlWlk3OHBYbkpSSGFQN2pVb0Fr?=
 =?utf-8?B?ZG0yZTJrNkVKU2IzNkpZY1NiTzFCVjlxK3Z6cEtjdm5nQi81Rno0cThUTElp?=
 =?utf-8?B?MkE1OGtGN25WZUZGbm5YRTFrWHlJci9JWElHU3h3QlQ5VXhHNWpHc3pIKzF1?=
 =?utf-8?B?RVpHM2x5QnRHUDBNeXIwUk8rWGdFVUQvK0NsUmNLTStjUS9YSXV6Q3ZwTTJk?=
 =?utf-8?B?TFVjSWVvbVozUEJiWjdQS0M5MDg0UkVmbHpMV09lNDJ3QjNlT1U2elVPMUdY?=
 =?utf-8?B?OEtQejBFTmtRNXFIblFXTmF3cENhVnFBazV0MW1jLzQ5R0V5WGl1RmxoYXoz?=
 =?utf-8?B?ZE1yUjNhTVR0emJCV2dhYjJiUmRWWTFCcHc4OVlxb0N4em9sbktMU250Y2gw?=
 =?utf-8?B?SFFBWDhOVkpWZ0dCM3VnN015aWkvYk5EdU82d1NKUzhFcW9TUFEyWjgvNEwx?=
 =?utf-8?B?QlNuSTVGbmh4aElET3VXbmJqSmYya0NpZUFUTHlPMXEwbG1HcytTZTRQekpr?=
 =?utf-8?B?TkxXQXJjWVBORnZLS29uanIvYWZ2T3RDZWNvb0E1b2JzZTBZWkVNcWhGdEFz?=
 =?utf-8?B?UUZqakovdWRvRFg5QjNIRWxSeVEyQ1RjRkpwSEF6U2x4bjRRNXNOVXJseEY5?=
 =?utf-8?B?UzNXMnBoZzBqVUQ1azZqbS9tWnRGMmtWN2VESUIvY1RPREl1dit0d0xZN09h?=
 =?utf-8?B?RlZnVDdtRi9ON0YvLzNCVmFKV1hzemRQNHA3QXZWK2ZQZG42K1VEU09ncTg2?=
 =?utf-8?B?a25NalJqQXVCd0VUakYrTUxGckkzUjhSSTVqUWR6R2tocjdmekZxNDJiSDgy?=
 =?utf-8?B?MElKa0pyMVEvNC82ZFFKcXlRNSt2VXdQWUFBcVdpY1RPZmI5eldsUER2VkM0?=
 =?utf-8?B?UDdMbTJVcStjTWJsRTFOVHRuM3ZKb0lvRm5CZVpBRC94bWJDS2ZXL1NnTHVt?=
 =?utf-8?B?SXYwS2xSMXlGSnFsTnVtOE5CMEVGTzU0NTFSQllOY3MwbUo3TnlPbzBCOGdJ?=
 =?utf-8?B?OFJzNndUem1LbDQ5MFJ0WFE1MGJFVkpNRmtiZklKOFRCL3F0dHBLT3psU0wz?=
 =?utf-8?B?eXMyVUJ1RkViNUFhQWREeHY0U0RnbVVKaVZlQU9ncHBiMzI4alB5dENqYk9v?=
 =?utf-8?B?K0tCMi9wdXNaT0FXRlppc3ZtVzZKZGFaVGpOdGwzYnlkNUhWNVVHMmEvL250?=
 =?utf-8?B?NHpuWE9VQkRHRTlVM29XSEtFaWFoRGsyS3J4aGpscy9GbXVnQi8valJKVU9B?=
 =?utf-8?B?SzVaSGo1Z3hXT2xOTGhyditPb1JzNTU0Q2duMmRBK1FTQ2hzK0tHNnpXTGZ1?=
 =?utf-8?B?UllSYmJqZjdFNWNWV3o5VitKci9RTWt6S005dVpGcW42YkErUWJ3Q0RHQXRG?=
 =?utf-8?B?RUV3djVXeTVVRzlhazNlUXd5Q0tCaExZMDYxSVl2aWVvajc4VGVoTExaT25k?=
 =?utf-8?B?WlEwWnZRQmU4VjROeis0NDhuVjJuL2tUbk9LMkRrTkdjNjVhMGVUOURhL201?=
 =?utf-8?B?ZnBrRllkMGp3MDRRN2cyMjZINEpEMjhpRzUySUFDd3lSYXorRmw5M3RzMmFD?=
 =?utf-8?B?bi9qOEtsaE5PazdnNjVaTzFSckptRU5qd3ZLUlRCaXpXQm5MbWZlT2RiUjEr?=
 =?utf-8?B?Z3ZOeEhSdTV6QVB6TVpTN0lKVnIxclIrbVlXNnY2a01selV6M1EySFA3azgx?=
 =?utf-8?B?MzRmQ3YrZUMwTjdNcTdpUT09?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR06MB4777.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 67efa422-26f5-4344-0d39-08dd40b75059
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2025 22:50:22.7666
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR06MB8180
X-Mimecast-MFC-PROC-ID: L10ZG_yDFlkzfetCN_HU4XPRWNBKH89JycGKopT7PgA_1738191023
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2n63TJFpbUpE8HoO3g4jmzL2iJzooNNcacr2Zip-2jQ_1738191031
X-Mimecast-Originator: outlook.com
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_742860A586AC49768B828E2C87DA017Eoutlookcom_"
X-Original-Sender: ilovecountrymusic483@outlook.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ilovecountrymusic483@outlook.com designates 40.92.21.14 as
 permitted sender) smtp.mailfrom=ilovecountrymusic483@outlook.com
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

--_000_742860A586AC49768B828E2C87DA017Eoutlookcom_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,  I have never gotten speech to work in a conceal unless the guy is disa=
bled.  I either have to use one or the ogther.  In bulzie this was not the =
case, but since bookworm this does not work.

Matthew



On Jan 29, 2025, at 9:32=E2=80=AFAM, cstrobel crosslink.net <cstrobel@cross=
link.net> wrote:


On my Bookworm system pressing alt-control-f1 takes me to a normal console.=
  There is sometimes a delay, or the speech doesn't work right away, but th=
e Braille shows it.  Once I log in, it is tty1.  The graphical console is t=
ty7.
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

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.


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

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com<mailto:blinux-list+unsubscribe@r=
edhat.com>.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_742860A586AC49768B828E2C87DA017Eoutlookcom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <8F2922A8C256A343860031B4702D51BF@namprd06.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
</head>
<body style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; line-br=
eak: after-white-space;">
Hi, &nbsp;I have never gotten speech to work in a conceal unless the guy is=
 disabled. &nbsp;I either have to use one or the ogther. &nbsp;In bulzie th=
is was not the case, but since bookworm this does not work.
<div><br>
</div>
<div>Matthew</div>
<div><br>
</div>
<div><br id=3D"lineBreakAtBeginningOfMessage">
<div><br>
<blockquote type=3D"cite">
<div>On Jan 29, 2025, at 9:32=E2=80=AFAM, cstrobel crosslink.net &lt;cstrob=
el@crosslink.net&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<div><style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;marg=
in-bottom:0;} </style>
<div dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<div id=3D"appendonsend"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
On my Bookworm system pressing alt-control-f1 takes me to a normal console.=
&nbsp; There is sometimes a delay, or the speech doesn't work right away, b=
ut the Braille shows it.&nbsp; Once I log in, it is tty1.&nbsp; The graphic=
al console is tty7.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
I thinkIt may be a bug of some sort.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
<br>
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt;"><b>From:</b>&nbsp;M=
artin McCormick &lt;martin.m@suddenlink.net&gt;<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt;"><b>Sent:</b>&nbsp;Tuesday, January 28, 2025 3:56 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Control-Alt-F1 What is it?</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div style=3D"font-size: 11pt;">The Linux box I am running is a HP PC using=
 Debian 12 or bookworm<br>
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
martin&nbsp;&nbsp; tty2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05 (tty2)<br>
<br>
That's orca.<br>
<br>
This next 1 is a console in which I run screen.<br>
martin&nbsp;&nbsp; tty3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05<br>
martin&nbsp;&nbsp; pts/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.1)<br>
martin&nbsp;&nbsp; pts/1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.2)<br>
martin&nbsp;&nbsp; pts/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.3)<br>
martin&nbsp;&nbsp; pts/3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.4)<br>
martin&nbsp;&nbsp; pts/4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.5)<br>
martin&nbsp;&nbsp; pts/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.0)<br>
martin&nbsp;&nbsp; pts/6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 28 1=
2:31 (:tty3:S.0)<br>
martin&nbsp;&nbsp; tty5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 25 11:25<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; One would think that tty1 would =
be Ctrl-Alt-F1 but it's<br>
not saying so if it is.<br>
<br>
Martin<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt;"><b>From:</b>&nbsp;Martin McCormick &lt;martin=
.m@suddenlink.net&gt;<br>
<b>Sent:</b>&nbsp;Tuesday, January 28, 2025 3:56 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Control-Alt-F1 What is it?</span>
<div>&nbsp;</div>
</div>
<div style=3D"font-size: 11pt;">The Linux box I am running is a HP PC using=
 Debian 12 or bookworm<br>
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
martin&nbsp;&nbsp; tty2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05 (tty2)<br>
<br>
That's orca.<br>
<br>
This next 1 is a console in which I run screen.<br>
martin&nbsp;&nbsp; tty3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05<br>
martin&nbsp;&nbsp; pts/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.1)<br>
martin&nbsp;&nbsp; pts/1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.2)<br>
martin&nbsp;&nbsp; pts/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.3)<br>
martin&nbsp;&nbsp; pts/3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.4)<br>
martin&nbsp;&nbsp; pts/4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.5)<br>
martin&nbsp;&nbsp; pts/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.0)<br>
martin&nbsp;&nbsp; pts/6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 28 1=
2:31 (:tty3:S.0)<br>
martin&nbsp;&nbsp; tty5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 25 11:25<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; One would think that tty1 would =
be Ctrl-Alt-F1 but it's<br>
not saying so if it is.<br>
<br>
Martin<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
</div>
<div><br class=3D"webkit-block-placeholder">
</div>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to
<a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscri=
be@redhat.com</a>.<br>
</div>
</blockquote>
</div>
<br>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_742860A586AC49768B828E2C87DA017Eoutlookcom_--

