Return-Path: <blinux-list+bncBDWLFR556YFRB4OE7S3AMGQEWRLBFJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A1C971F39
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2024 18:29:39 +0200 (CEST)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e1a91576564sf9316316276.0
        for <lists+blinux-list@lfdr.de>; Mon, 09 Sep 2024 09:29:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725899378; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vn4lH3sROBakCOGq8MG/CJC+hvaEOCX6Ldm4h3sBoXzMMpWOjunLZVhOI2gDaIHB11
         +qz+tN8/K0Xu8iShR35DeWeQE7qCd+pFWQGMEwReXuNTM7beJclXaIZfdadMB0LPeaCM
         7dgceuMLLw5DjMp/YqTO6hCUzxFYafVZYglpwvEYlnePAT/CFvPsNPc9O1A/AvdRw/na
         1pGFnoAPAYOO+BuaQA9jLoquM0HezeRxaVG0mYZL3eI3XMdQI3/R0ef5n5Syx9tC7S8C
         dCWhtAfxHKg3ogvHrQwipz6YAVL19XQ8sQHWuohZ/VJVkKwHFrd3l32SJoiEfXiKcSQo
         XhYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=0ovG2+a2R/QyQt8QIlHqayjEQcrKKkbBQ+LZAJuBinw=;
        fh=tmjCh809Wyyfn+NhZzjXsaAjSV+o2lsAYHLzLBPhuEE=;
        b=BnPpAQYB7TFVyiebPTpN6tLdz/mwcd+T2qiIdX1iSLQRHfbAGY1WRTZsjP7y6yZFO+
         F8D4dn8HNbsLHbfvVaauLD676WQGaFENO8Ar+Rv5s6nBXBJRF1rm7PuEFbGhd8I2CEPz
         qkSDYwCSVQeoO64d7tuOKHY8bhcnFQBvuexLxOAarGmK/syOJ18sqAOeAcEj2dtmBKHM
         1XmqknSMdy/ohnnPDv6Iwpw3XK2RVdQF6tHGaOLRBFtBpUI1CvPLyhzZFWypyyp+QvVN
         QTI2nPu0GUytQvavAYAAcddA/uB28T5+jfQRQD8GQiYfnDu4ZCuepsy5z6pbC+xCc0Xf
         mkZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=r.d.t.prater@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725899378; x=1726504178;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ovG2+a2R/QyQt8QIlHqayjEQcrKKkbBQ+LZAJuBinw=;
        b=SEoUCsetSfA9oZ//jKGoLtsoIHxk93WwSlHOFVIY2erYvOcxc8UCIhN5s709XegB2T
         EVYqMBTEeov7cN2HJyxi1GkTYedPoHZBaXEf/YAGF6q/UkrbFVScLJi5O7SfANaEANpX
         J3gRdFAPIDzpDBIrTkoZ5/+zBtzp/EWNnEZtqx5luuQXGcvbUD+hKl+AVWnJuMDRgSNN
         nrWfO0VW3aDD0fPHbj0b4lo9brCaeLMWY1/mzWtKl0t0/+qpPZvyBYt3i7nl/1yABjEV
         pzmvnuuuiEiVcV3r1VEcDYQgGzadg+YJza6ptOUKffywKSIVc78sIn60C1NkRUUIevLX
         O7Ig==
X-Forwarded-Encrypted: i=2; AJvYcCXGCPJsaRJ/yOOXdbW0uX0dIzxPP3PwFHYyH12diVs7fsXsgTt0mnbMj0TeRYuJcyVmi36nrA==@lfdr.de
X-Gm-Message-State: AOJu0YwUGIPUIUrOWV/Wn4Zl03ODcd4BNCPvpcovR2JLmo7frLH2jfD+
	At5lBwCjl3E9bSeUeOYEqX3+aO59q6t4yzff9ZfSrLmaZAYcT5iDrPrfmtiX6pU=
X-Google-Smtp-Source: AGHT+IHvkil76TBcgqM4Nn1DBMfUFqfXoJ9s0RNVc6Ed46Sn5F/s/yxN6tRvZotXODXsIzuWP9SPTg==
X-Received: by 2002:a05:6902:218f:b0:e1a:a3ae:3f49 with SMTP id 3f1490d57ef6-e1d34a37c49mr12726299276.43.1725899377784;
        Mon, 09 Sep 2024 09:29:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:701:b0:e03:514d:f716 with SMTP id
 3f1490d57ef6-e1d33da4a80ls1228084276.2.-pod-prod-07-us; Mon, 09 Sep 2024
 09:29:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUc248DxSShv6YSjl5HVllw48RaMrrPecmO7EDmpYImyMncwHEEFCie7TQJjPfAfuL+7pZZUvAS9gKMaw==@gapps.redhat.com
X-Received: by 2002:a05:6902:e0f:b0:e1a:72fb:80ad with SMTP id 3f1490d57ef6-e1d348a1ce6mr13553796276.11.1725899376843;
        Mon, 09 Sep 2024 09:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725899376; cv=none;
        d=google.com; s=arc-20240605;
        b=PPFDMJK8PcJ6/koQElaQyWfpTvvLvstBj8MW6HBNpU0Hr5lmoNLNCpsj2I5ya1yBkx
         LsS+dBldfYFjn5TstbmvqYOKWUy46TX5AI7x+tBUVVCAPW3KKM/z6N9VZZkjZ8+EabaK
         IHj1gUruNExoRRvMITG80dVx6B12SZMHo55HnEQTy8vZoGf6CBzGkfBoef4CAgZw14dL
         ZSclRTQz3Y4X7xh7YpdunN7vQ3LO2aSvYU1aHHz28kP4IUyqdJra4KsockDEvS3lSvGN
         X2SGGIXxJ1lACKFbLalMluSOAhB/K419cynVgSZgxCjA1x8rdbxhkOTqAkfVvbTmxLgH
         7Hlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=cpnrGfLtil4KmFvk75gRNbVCeKqufjkrj9mwdbY1a5s=;
        fh=4sl9ZcvEzL8kIuMi24GTh8e26HvuIJOMD5WQHuhM6Zo=;
        b=L2pOmNFb9C1PQbUm/wlmijUNNbAls7/hQEk/gtjgRrdj/KvayxMRNDC26Li/OijyrJ
         C6ba2c4A95BqXZOFYEFYXPj3ZD86TVL+ZDd0mcsQV3I4S2S/C6TM4pQVJJJVZixPMZFC
         3gezaEqnLhzG92lwF7VpRaDeVUn5EfCwGPZULEbTEFyEBeSQn6lHzGRTxX/QrYw79B15
         dkkUdSlRHkjr7s+jHB3+++R336+uokH96ZoQP2egT+3Z9kjBEUEWy8P75BZJnG91jMrP
         E5rWp+tHxJ/b8F6lPjC+m4T+OIQt3OJQCEIkJG3R025QpXGoPIoAXZTWvd+c/RYGn510
         QiwA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=r.d.t.prater@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c5347c365asi59373986d6.529.2024.09.09.09.29.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 09:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.219.169 as permitted sender) client-ip=209.85.219.169;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-126-YFYPbs61OeiVuCTjrQElRQ-1; Mon,
 09 Sep 2024 12:29:35 -0400
X-MC-Unique: YFYPbs61OeiVuCTjrQElRQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8B651953958
	for <blinux-list@gapps.redhat.com>; Mon,  9 Sep 2024 16:29:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B3EC21956086; Mon,  9 Sep 2024 16:29:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B12DA195608A
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 16:29:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 26DAD1955F3E
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 16:29:34 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-Tf5--sUtNLeMzIleLjevUQ-1; Mon, 09 Sep 2024 12:29:29 -0400
X-MC-Unique: Tf5--sUtNLeMzIleLjevUQ-1
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e1a74ee4c0cso4879348276.2
        for <blinux-list@redhat.com>; Mon, 09 Sep 2024 09:29:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXwdN9FYdZhbFUefZV9yOT5suH5GKxhnIyi3hs4QaeuK6xqWEJPGhojioFSu5e9E3Gw3lkfGAG1HsyadA==@redhat.com
X-Received: by 2002:a05:690c:f01:b0:6b3:a6ff:76a7 with SMTP id 00721157ae682-6db44a612ebmr153695097b3.0.1725899367885;
        Mon, 09 Sep 2024 09:29:27 -0700 (PDT)
Received: from [192.168.0.49] ([204.29.85.5])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6db5c600089sm9709297b3.2.2024.09.09.09.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 09:29:27 -0700 (PDT)
Message-ID: <13d97cdd-9e3d-4c80-b0f4-89f0dc16e2e0@gmail.com>
Date: Mon, 9 Sep 2024 11:29:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: any chromebook users here running linux on chromebook?
To: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
References: <2A086636-DD93-48C7-AB8B-146614201E15@panix.com>
From: Devin Prater <r.d.t.prater@gmail.com>
In-Reply-To: <2A086636-DD93-48C7-AB8B-146614201E15@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: R.D.T.PRATER@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of r.d.t.prater@gmail.com designates 209.85.219.169 as permitted
 sender) smtp.mailfrom=r.d.t.prater@gmail.com
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

Please use TDSR. It'll save you tons of headache.

https://github.com/tspivey/tdsr

On 9/9/24 10:48 AM, Jude DaShiell wrote:
>   page chromevox complains too much output to announce try reading line by line.What are keyboard shortcuts to have chromevox read line by line?  When I open a man
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Devin Prater

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

