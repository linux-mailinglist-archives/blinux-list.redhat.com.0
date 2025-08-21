Return-Path: <blinux-list+bncBDP7P6HU4IERB7WKTTCQMGQEXPZOY5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 96944B2FB5F
	for <lists+blinux-list@lfdr.de>; Thu, 21 Aug 2025 15:56:17 +0200 (CEST)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e9fa5f80e7sf253469385a.0
        for <lists+blinux-list@lfdr.de>; Thu, 21 Aug 2025 06:56:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1755784576; cv=pass;
        d=google.com; s=arc-20240605;
        b=AOcwOczcX+t6YoFMAz6dvXMByAigRtRoe/TDbaVOwKsuR8pa4Opo9tjkBKnth2NUPv
         nOMXGSDlTowaGMbvef/9Pd9M+i0FpkBUWxZnt3Sygk2rvlrfjBjdEZ0bqCIx94f+AZmP
         QuCnQMvvGINbmDKaNypwGzLM5/6gkppjUrn+4L2zJdO3dKgSxQlqT2WNNLa1rzlk1bsI
         2CaGhJqjLZFPaiUT9UqJY1TRQ0lioex0ZOeGv0LZ7gAPkbP4gQYEjEdBodP8LD+7ZeAD
         fNYUrEHbItVsQKZxr3MRyw4G+9Lwv0vjkmJBY9qJSA5BB8MeWeM57YfTSCTi+Z77+xe0
         qwzw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:message-id:subject:from:to:date
         :delivered-to:mime-version;
        bh=zfM0x2R9CBgPo/4LGGP7abzHfWVt9+Ym/q9rHK72vV4=;
        fh=tw/+lQx7ok0KwLvf+oBVAq1pVFst2leZNIEgGnR/0Sg=;
        b=O2JsRH+5ahXSiy/qPYUdW/r14AdKNWup5+pRQ9/ZmvmpvVXHaVp5ZdCbhbyGKELtnF
         cGKCRg4/AGZLCTh5oIF5Bp5qjQEZYfKcFIZrhONJfvsIbCpuS3iHkXsbO/+jMZUuNqrX
         vlWRIwzhmXUHCc6iEZCAVMZLncxgopA+OFazcLLcxDqcjyQvJU8eqZtOp1qMu0Pt6y70
         jGmBeiLT8aLLyrRX93yz2nsYA4FEiiQxV3UHHhCKD3ZRv74xkxA0mCwF82c1ZS8M5j/N
         HzHAtgTc9YKxSJQyhOITd23HWEePy+l31H5YHUkc0HhByudVaNUU0HbGDUOtgPITFZyN
         kTwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@suddenlink.net header.s=dkim-001 header.b=AoKp3xdT;
       arc=pass (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net dmarc=pass fromdomain=suddenlink.net);
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784576; x=1756389376;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :subject:from:to:date:delivered-to:x-beenthere:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zfM0x2R9CBgPo/4LGGP7abzHfWVt9+Ym/q9rHK72vV4=;
        b=tlVIwDTOd0eOeOhwikmAG74/Z59JiCrvHpHOnjmz8DAA1DUyk6UFbbohHu/cjnaEte
         p5Jnc7la5BkCRnalFfmy9As7afcFJsUI01LJnD5kznlrOw6HuB3RXXaF+VqypGkIKhQ9
         ZWta/vOee4PhQS5SBg16JQaxgjjhXUXBbl9bkxp6qUfRXOedfWLIVjrDmaUeJt1C9wdE
         tQ/8DRPPb/jkQ3hu4BQ9hAiID5a5qyKZnAlq5TBqAc9LWC5U+9Rhz0j1ONYcPg2w0wZa
         orpurkBxFrncaLtr1jX8/7yutAM4pk/BDMu4lUA3G/rKs53hdALqzwOjGJZDxA9kTtKw
         d0VQ==
X-Forwarded-Encrypted: i=3; AJvYcCVrzyjR/6we7SSb3OUISwTlZ8QmHl7cWiWTElJyijiFMj08hFy0YezmCvzNJnc7W5tc1mljXQ==@lfdr.de
X-Gm-Message-State: AOJu0Yx7HZPjMn4n2k+z4FNcDl/FQIXhU8oUuISNOcdrjq7dVzwgFnsz
	5Wh+LIbZn/0oXxfpOZvheYWtvbjgLb98BfVMT+lnizYWJ1BaLGhRHUKbaC9Oc3djo4s=
X-Google-Smtp-Source: AGHT+IFaJgqA53F5cKOEGUw4L77WFqmRYPvpmFBO6hKbsBNJfmF2i+qatZqyjBfOtFu+z/gossc6RA==
X-Received: by 2002:a05:620a:1720:b0:7e6:9698:5932 with SMTP id af79cd13be357-7ea08d96036mr293022185a.21.1755784575169;
        Thu, 21 Aug 2025 06:56:15 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeCRtgX3h+zh4ZFoQPhwkTcYNDtqiIMBwfyHkKKU+wVdQ==
Received: by 2002:ad4:5c66:0:b0:6ff:16c9:4229 with SMTP id 6a1803df08f44-70d85bf163els13936206d6.1.-pod-prod-05-us;
 Thu, 21 Aug 2025 06:56:13 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUMers7rh8qI1ZL4ZZ1sCaQ88wgP/WhmSdBy8tBM0wiq93GUylhcgk+ji1umBkq3gjJjOl/SHaEbt8zAA==@gapps.redhat.com
X-Received: by 2002:a05:6214:5093:b0:70d:8166:b7c1 with SMTP id 6a1803df08f44-70d88ed90ddmr29973396d6.28.1755784573796;
        Thu, 21 Aug 2025 06:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755784573; cv=pass;
        d=google.com; s=arc-20240605;
        b=Fw4p0m9LvmF3E4r27XJYDq8yNtQy92A9uHyVnbSeFL9TLU7jy8sALIwZAu9Y3FxWNf
         Ofin93Pvd8BxF04/fmFwUhzpJabx7NsGqUOpZnoJUpzQGPw8c5OTGF2S/kJZiD7dTMBJ
         rcKofUkEb0LOrGz184KIX44lSaiAMQY1zcVMGbSPHXXHc0p/LMOBnseX6BjcxjUZdrlv
         4hYra9R/VlHCUC2tIuG24Vp/yQoMqwRlpMjaJ3pjAMbwwoKa3jJX2SNfI8E9oTypbXIW
         Td8gWGPXG9oLLNEgOc2MAB9sxkxx7tXSWdEZz3s6WLhb1ZzIV2WA0rAFQLx7OkqScxKb
         YrHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:subject:from:to:date:dkim-signature:delivered-to;
        bh=EMqBzkfAUc6Wo9dQP5xGyumDe4RR1Jm3NPCUvAvl+7w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=cd3qr/UKRyrZXQnsdzYWjfo+PDrjTDvD9F60IH2IVuSXH/al+sfT/Ni88HMHNM0eAA
         al6HJMAu7kY4DaIqqW4T8VgZ7uIla3lAksMHGnXlLN8vYMI63R0gz3ZYSPkLmoDlUFbs
         qMLXDaqQgUWMCEUnThHDEA/C6pZRoUEI5v+ZHFPQ9eqJU+qAucfRhlwvqT3T0oSACbjJ
         K1SJXnSEA/FAhUKsAK8aOD82BrE27fY5PqI/oqHBIZV8tJnpG0SKFA81Vo7BJaPAajAy
         qcSf8SEgai28x8Aw4Wvu3HMdDeg6vos0oxdB5m4sdRyqLhG97a5j46CdQXl/cW6GN2zS
         x5Jg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suddenlink.net header.s=dkim-001 header.b=AoKp3xdT;
       arc=pass (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net dmarc=pass fromdomain=suddenlink.net);
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-70ba96188b7si55076726d6.948.2025.08.21.06.56.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:56:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) client-ip=66.179.105.214;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-529-F9XZMOlePayqJ1VjhBPdxw-1; Thu,
 21 Aug 2025 09:56:12 -0400
X-MC-Unique: F9XZMOlePayqJ1VjhBPdxw-1
X-Mimecast-MFC-AGG-ID: F9XZMOlePayqJ1VjhBPdxw_1755784571
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4E0BC195609F
	for <blinux-list@gapps.redhat.com>; Thu, 21 Aug 2025 13:56:11 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 46D7518002B0; Thu, 21 Aug 2025 13:56:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4411A180028F
	for <blinux-list@redhat.com>; Thu, 21 Aug 2025 13:56:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 88720195608F
	for <blinux-list@redhat.com>; Thu, 21 Aug 2025 13:56:10 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1755784569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:dkim-signature;
	bh=EMqBzkfAUc6Wo9dQP5xGyumDe4RR1Jm3NPCUvAvl+7w=;
	b=SJjV7/s5yn+2SQzR/lOOTCdH7foIiRCvFHafrFqTX1SWNsBl+fBNW0irD6H7GwsZWNwYGb
	Xmmzzv1hlCf4Ks2s9JYpypJZBmi4S1rA8pchqf0a90eOjQTcIt6logJS1kGyFb0ZsuJPzL
	0qUxVe5pzRXg5LEcZ/h+xxDsXUKvb0uAR7GmTxkhviGviRQppPW0S/d/gJXhNGC1IFfLhP
	SUKlRBK8Th666Di6CurAbBBavxj2iPSiffuD6WUUeJbtA9M5Htf9saxnBOuVCfgJlSwIVJ
	MYBVjtfAADSz99/QUN3k9owoOGQKegq1rhzq0yIiWxoMIatKLOFYTcbhhFG1rg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1755784569; a=rsa-sha256;
	cv=none;
	b=BYhs18kHXlHGrFqIxhFeDfqc6yA5BEGEV93p96qfDPhDphMDBiqvn0nwrzi2Bm7szAiJy/
	i4hpP5EMX8Q3wAsg2U+lQaQoi4fPZET6YeoYcc2DUdBPsJWXWSRCDPCGUFdoL0Fio87J/F
	1KObkx92nEGQahAUs1nlEn29mrzDd0nbNT9Gn4P44lqdpzcAHj7X7LpXet4eg7OE/hP9x2
	Wd/hK9Qzinr1JoB56tS6eUB5HiKyuJV/3Kj23DOpPKEIpaJIhtZ64VQmXnG4dkKOn9jJJs
	LIEppUi8gNRyGjzZVLsT7j/dFE6T26Fy1s4I8Cnk1jmnki3koTR64S7WBtP2wA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=suddenlink.net header.s=dkim-001 header.b=AoKp3xdT;
	dmarc=pass (policy=none) header.from=suddenlink.net;
	spf=pass (relay.mimecast.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from altprdrgo003.altice.prod.cloud.openwave.ai
 (altprdrgo003.altice.prod.cloud.openwave.ai [66.179.105.214]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-222-3F-LORd2NPyQd98bXHqQ0Q-2; Thu,
 21 Aug 2025 09:56:05 -0400
X-MC-Unique: 3F-LORd2NPyQd98bXHqQ0Q-2
X-Mimecast-MFC-AGG-ID: 3F-LORd2NPyQd98bXHqQ0Q_1755784561
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 68A6AAE00013DEB1
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduiedugeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffvhffukffosedttdertdertddtnecuhfhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtnecuggftrfgrthhtvghrnhephfeuieekgedvvdeujeehieettddttdffueeljefghedvheekiedvgefhteekudejnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiirdhlrghnpdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdttdefpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz.lan (47.217.105.81) by altprdrgo003.altice.prod.cloud.openwave.ai (authenticated as martin.m@suddenlink.net)
        id 68A6AAE00013DEB1 for blinux-list@redhat.com; Thu, 21 Aug 2025 09:54:06 -0400
Date: Thu, 21 Aug 2025 08:54:00 -0500
To: blinux-list@redhat.com
From: martin.m@suddenlink.net
Subject: Writing Checks
Message-Id: <20250821085400.043859@wb5agz.lan>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2qafnJsqgLnF-0f3gLWtw6-Ygvw7zlGUPy5-c-Y9yBg_1755784561
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
content-type: text/plain; charset="UTF-8"; x-default=true
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suddenlink.net header.s=dkim-001 header.b=AoKp3xdT;       arc=pass
 (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net
 dmarc=pass fromdomain=suddenlink.net);       spf=pass (google.com: domain of
 martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
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

This is a question to this group and I figured some of you have
already been here so may have some answers.  My lovely wife
passed away in July after 42 years of putting up with my
idiosyncrasies so now I am doing a bunch of stuff I either never
did before or haven't done since the early eighties.

	One thing I did back then was learn the format of the
checks of our credit union so I could put a check in the
typewriter, count the number of lines to roll down from the top
of the paper and type it out and I got pretty good at it but
times are different.

	One of the things though that still exists is payment by
check and I still need to do that from time to time.

	Are there still printers made that can be essentially
handled like an old typewriter so that you could put a check in
the plattin roller, start it at the top and have your computer do
all the spacing after, of course, telling it what to do?

	This shouldn't be a difficult task if I had a printer
whose command set is open so one can just tell it to advance Y
number of lines from the top and go X number of spaces to the
right and print the amount, basically, all the stuff you normally
put on a check plus blacking out unused space so miscreants can't
use that white space for unapproved alterations.

	The other alternative is to have the person you are
giving the check to write it themselves but they may not be there
so this solution needs to fit in to the existing framework.

	Not everybody takes PayPal or those other companies who
do similar things and those companies are also subscriptions in
which you pay whether or not you are using the service which is
what I call a running meter/money leak.

	Most checkbooks I am familiar with also make a carbon
copy on a sheet of paper behind each actual check so you almost
have to have an impact printer head to use that ability.

	Anyway, I would like to read some knowledgeable responses
which is why I am posting this message.

	Thank you.

Martin McCormick


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

