Return-Path: <blinux-list+bncBDYIZZNASAHRBQHO7PFAMGQE6TLNX5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A045D0072A
	for <lists+blinux-list@lfdr.de>; Thu, 08 Jan 2026 01:16:03 +0100 (CET)
Received: by mail-wr1-x445.google.com with SMTP id ffacd0b85a97d-4325aa61c6bsf1753528f8f.0
        for <lists+blinux-list@lfdr.de>; Wed, 07 Jan 2026 16:16:03 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767831362; cv=pass;
        d=google.com; s=arc-20240605;
        b=SBVvsbLXzYQwoF6g9JR2VGxb931Jf5aTMFeXPhamFeZ9pyx2HHTfy5JIkEjEZIRoon
         GljQQH9nCOPr3A+37IJNS99PcRiLSEDfE8vWWXwc7yjIh/lkr61Qb3TuwZRtm3kz2fni
         X3Ptifv538nWHj2nQXPt8dTuXO+7+EAqrrxUMQXHCMcIyKMkX+cQxZIiSrO+L0ybmJWv
         PZ+SwmxE+Vwms0iz/2S3jQXCDTI40F7crCZQ6yQZDY5mX8e+R/GLt7aBqS90X/LW9zJ6
         y40ifs3HzhLxIeKnGaB/f4PT3693Udz3r5AoZLwyam8Y7vyK+eGPDTngSkH7W1vBXanW
         tcGQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=AR8VObdguETNFdUquzwVqxK1vcQ4Fglocg1aF4KjlRk=;
        fh=SL9g5WL/9ZX9uA9lAK20r5vSTmchfY487d4W+kxYUfk=;
        b=fVrunFNZB6nlp+oU/ENhIu4j3tQekf0YAf6GDowlo76xfgZQK60jum0XwzyDgA6FVl
         pEYcQo1HV0cBDJnHiDZsaLQWCU+Iu3UA0u7h+7K2vluYvcgp8N/TOAdEQXWr2mxNYEor
         kUdrcmOeiwRAwlKdZwJFZ33E5DLOjprD1CLvg6SiluytusY4ghWbl+EZRu2/P2EJnu5q
         qJ6R5tpwo3wsKC6dndgJbAYlCLpRXaMbKS8HtTWHXYp/IMNnjm09pBhDzNaWlmpXTyEV
         0IoVtcNWVRIQ0m4k86dYO4mBjZ+n0tyyXCYBDRAsOeS9M+hk8UA5a50a+5VXH4TL86lq
         eZiA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UZPhnHxe;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.172 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767831362; x=1768436162; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AR8VObdguETNFdUquzwVqxK1vcQ4Fglocg1aF4KjlRk=;
        b=mK4blkLCefYsdve9xY4lM05OrV0cBNXlAjt+aFyH/n/r+OS1y+dRRL67PE+LssZL4U
         lyqJPEwT3TT/5+N4HYpdO9R8Ne27ouoITcNoWBClCOgRheqlLfIajhHzStRbMMjfpEd6
         BEIeWCnX0v1oJg42piM6/REBawP1aAriTVjo1B0x1bJjvrENom1vvbOsmImuoSqVtTOS
         q/Vsf6OCC6DruJy+RQVz4GV2TcUbupwCXM5kgFBqjePGeVh7I1uEEVobGn5aIH5yYxEh
         24/nEf68xbhBGiI4aVl+eOVmF4cbUPQCHW0Ei7nyNgt17taUFL3B7Am3cTZg55DHl/u3
         3d7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767831362; x=1768436162;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AR8VObdguETNFdUquzwVqxK1vcQ4Fglocg1aF4KjlRk=;
        b=R9tK8Axm2olbc5loc7knJSTLR5uQFVhCSfI4+weDmKQsxQiieJSyfT2PQtDXMYFp5H
         lyD48ny4IPeoZXfPsOhd2l/OudWUMnm6gS1Uo34DJ59tEUCyRBNxlvY0aQ/A0rqZpadm
         WAOSwOFGZk3bulm5D4ImGam8YlA0MpM5+uzbWdq3y9y76IY7vpA2N7o7wNo2VRisYqvt
         eqBdhyxWrtYguV965UYA5GwvDVshopqxDVjkkqK/CXLpFw12cprl3jN4U4LzabZUjEzh
         ZusF+1dvAwwKYwm3Vxc0NVNZkx+CFD/Oxf9Ufqrwe61RUrlP7B0W14F8gwND5KeQ+mIv
         EXgw==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCUHzhUtFHStIY9HnZ0us0i0UlRRKm7akFbzevd7Uf+jlQZIt5MP+gjdF54hfcW5HgQiy81aiw==@lfdr.de
X-Gm-Message-State: AOJu0YyqlxuEsmzj37Hs6cEdLPCQg0YBiZvzPfonrkC2Qm8iUFt2E4JJ
	gWMFe5ToHr+edLCHf8o1fBm1+EsSEcoPRQrUq6EnQcAxOYDS9Mfy1MAiD8uTMKlCvOE=
X-Google-Smtp-Source: AGHT+IF9BE/HBmZ5bO2La2I8XeLslQjlUSYckmT0DCqwmCkiTvnDnm23MNFCesEzO920pnGlH1Osag==
X-Received: by 2002:a05:6000:2209:b0:431:266:d134 with SMTP id ffacd0b85a97d-432c37617f6mr6035517f8f.53.1767831362174;
        Wed, 07 Jan 2026 16:16:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWaaZEHLwvzNZvkBPayVaiSMSZExp7tRKFDPmpBV/ijIPA=="
Received: by 2002:a05:6000:4301:b0:428:52bf:bc00 with SMTP id
 ffacd0b85a97d-432bc921631ls1813160f8f.2.-pod-prod-06-eu; Wed, 07 Jan 2026
 16:15:59 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCX7gx0FOZGuYguN0NcDjeavvS5BuJhtwH3ZGFTnNTcpP1WSD1A4nIVdS6OdfdcnBLFuJ/xJiGTpc4N0gg==@gapps.redhat.com
X-Received: by 2002:a05:6000:1842:b0:42f:f627:3aa7 with SMTP id ffacd0b85a97d-432c3632b03mr4856388f8f.16.1767831358988;
        Wed, 07 Jan 2026 16:15:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767831358; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ny2G7L4BYaF6BPZa7syDeafCNAqKKkOl+564omiBkKtauahI+GauiqOqn526jtp2AV
         k914KZ5X7KHbDhDizG6tLPHezl/HDUGdAJqciL5H9TsQRpQ6XDSQ2fJw7aV1pYJ6TJ0e
         bdlWOdBDq2rpn3Fj15YGQwcI4cWoISnI2ay5XrM3l5Y6sHqV+xpSnUgIqAL70s3EosQL
         4gFcWwFayHM+b1qWqO6UzmiliC20YEziM5vkCrmedN4XB743YLZThhJYO3Ua+RkCLwYg
         N7ouwm8swMproUn+dLV95cCk46MLBZ9BYtbbfc0NkLyU43UyZcrHcnjC4FBaCYke2v+h
         P+GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=VuMgwEOHTzaSAe/apMQcxDAuehCuznm+dBzOC3H+U4A=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=NJgV99gJBQBd0wrcm0Lffmm0sSJrgjxrlA9zGflpnc71xKMGqnPjTbDVWdJwVZ2wj6
         ycRXV/fR03V0FPm0aDuOvKWb8u5DJg1P5NgzNM7Nf7L2vBSroUTxLgmzJAoZS228AB0j
         ybJw4/pXGJHNztWz7/hgZfruPZfUQ5kKp/mSD/Lre7EEAslFm1J27OBh5TaLNjWtLVE2
         h6AdKpRuUP5duWA3oXZ/t3/VaVwQj5GN77bVtpaVw8Ew3vIz6uw2zVxtUs9jf7BA00RE
         xMPzLenTvT2nTIeZcqzvzlsADwsaD6ppd/6Z9Ab33l6ElfQI53/ZmwGU+eL5fKNWpMaw
         nuNg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=UZPhnHxe;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.172 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ffacd0b85a97d-432c079f1ebsi7991070f8f.328.2026.01.07.16.15.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 16:15:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.172 as permitted sender) client-ip=209.85.222.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-546-vLjkTaC-PHKAUhd_f0Skzg-1; Wed,
 07 Jan 2026 19:15:56 -0500
X-MC-Unique: vLjkTaC-PHKAUhd_f0Skzg-1
X-Mimecast-MFC-AGG-ID: vLjkTaC-PHKAUhd_f0Skzg_1767831356
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0728619560A5
	for <blinux-list@gapps.redhat.com>; Thu,  8 Jan 2026 00:15:56 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 00F1030002D2; Thu,  8 Jan 2026 00:15:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F203430002D1
	for <blinux-list@redhat.com>; Thu,  8 Jan 2026 00:15:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 786781800365
	for <blinux-list@redhat.com>; Thu,  8 Jan 2026 00:15:55 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767831354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VuMgwEOHTzaSAe/apMQcxDAuehCuznm+dBzOC3H+U4A=;
	b=CDN39D9w7lSJcFxSgO4GKf3bDymXochD41MwczYSi6ubMrMAT9caLj6b12yQWahvBj4SqM
	HIFgCHlY+zfZd9BiZordy1jRJD7+H7Wbj9Z8T2WmEx5yAZvVQE/+x9pVHknrbMcIl/jR9R
	LCRTl1M01CwkTFEJXsbf1vPbGzALFYJNbcdUBP9Kuth1psCY8FgIDH5BckCjLJQ25IUwmT
	TvsLtnGRDSH/n7oPPR/AMzMcpxBiUFAoJ9uO7gG1gDNAg75s171KFP8BPKZqwJLZV9uO+/
	BWS8NECusN8YA7B+mr8OxMj8t1XzEp0H8T4rx7toP3S7tl9Ml6ZyS9FDb7Fyzw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767831354; a=rsa-sha256;
	cv=none;
	b=aZo2F1XCmr2dgul2AhiHdbK2gRRm7cWqYsXx6J3VMMHtH4yreuxhEFgrnsfoPlGwDj4lq3
	QgwrNXeVPy8njOsU23fjhNjHgHNFzSKrMN/4urUkU9rVwZVsQQqK5wXtrwX1UOegLkdhkx
	1tsIyF3Vw78KGYjYNe4QwRwyqabzhfJlV0nGZ0nQxMIVXVQC9mE53I0+0JazO76+H7H/DW
	5qNSiLklkGJLGB5CVH+Lo7+aAhmCqdXGnc48p5ZFi+YnPFTTQBH+WytgG4IP1hTaibRdc6
	RWWDxZ1xqOUy4+55xDMJvFq5ZUqeI7fEmUbbH6JBdjTydp3glbhYOh/zWazARQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=UZPhnHxe;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.222.172 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-c_uIY0uwOr-ZmZvIUyylVA-1; Wed, 07 Jan 2026 19:15:53 -0500
X-MC-Unique: c_uIY0uwOr-ZmZvIUyylVA-1
X-Mimecast-MFC-AGG-ID: c_uIY0uwOr-ZmZvIUyylVA_1767831353
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8b2ed01b95dso286675385a.0
        for <blinux-list@redhat.com>; Wed, 07 Jan 2026 16:15:53 -0800 (PST)
X-Gm-Gg: AY/fxX4asBtrtAiF7pwIWeCg8MX0C+s7sNLI1fyz9XAs5HAEsAAw2dRWljqgxSTxnB7
	xmw+IcwAgRGFzbpmeMtbKld+4tmww3n3IgG9Cw3lbrx2MPoYXNSD5Q+M9bGQhJzVlTfrZ4GANa6
	++JVPl7ZFfpbpBUan8YyKTnDuMzc94PPd5EYE7/EgnZnk6wOcOpEtsKW2u6WzQi8r4KqP7YiYlu
	lHWLRv34vYeLKM5Dfv7l8knuCLSSrqE/Adp/AiHUqGeM0M18AkgYrRAGRXkAT6oNNYSSbCSS8Nu
	Hy76UguBWy3Uh8RT5uIJaiLpsixoHlxsf7Ej8KJ4bgfC/lSKjJiHzyKUmAWp4SP5x/Up7qlKA1L
	zd+dr4adf3xXS7E3i7mtR7hDxzWfUMntlCyvfTu7QpQVh4HZQPdtW6/dOiGJ89ZK9gRMYsppq0d
	9CXwReN0/p3Y4Lb1/a6HUn9zdeKgWdehLNJRqEVUr7FjCG5KTT1Pa+U3WrO8fHgkqe1w68/ic+I
	FgO2WAWID2XyRnb
X-Received: by 2002:a05:620a:1786:b0:8b2:d6eb:8203 with SMTP id af79cd13be357-8c38940ee79mr487727385a.69.1767831352398;
        Wed, 07 Jan 2026 16:15:52 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f5433b9sm474886785a.49.2026.01.07.16.15.50
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 16:15:51 -0800 (PST)
Message-ID: <e3996fda-7734-4868-b4c7-742c4df6ef5a@gmail.com>
Date: Wed, 7 Jan 2026 18:15:49 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
 <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3D1-SLs_M1UCavQ9VYxsZV36enDJ2aYIptg2szcqsRQ_1767831353
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=UZPhnHxe;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.222.172 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

Jus downloaded the jenux 2025 iso and burned it to my flash drive.

when i boot it up it boots to a prompt with a cursor to type a command.

how do i get the installation to start.

My old version i have which was 2023 booted right into the installer. 
what am i doing wrong with this one?

the iso i downloaded was:

Jenux-2025.12.18-aarch64.iso

Rodney

On 1/5/2026 21:40, 'Kyle' via blinux-list@redhat.com wrote:
> Looks like the site may have gone down temporarily. It's working here 
> now.
>
> ~Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

