Return-Path: <blinux-list+bncBCLPHQH4XEIRBF5ORS4AMGQERDRCEKY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A69992234
	for <lists+blinux-list@lfdr.de>; Mon,  7 Oct 2024 01:02:50 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cb3328c490sf9825266d6.2
        for <lists+blinux-list@lfdr.de>; Sun, 06 Oct 2024 16:02:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728255769; cv=pass;
        d=google.com; s=arc-20240605;
        b=XkITItJEi1jekGoQYTWszZLaQ/XAkcEd1tDUGn6uL2KdenDzueg1iBRdvtNjbXdSzT
         XKiNItk0ncsTTe/I6QXFtc876WmiDHEpBpjYbBty6vWu+IGoDhpfIU3fo0Zcr1KDfxUj
         iFB+SFTdk814EEPVg7UlWGzl5RfMGuwVwyILVtpG/Lnaw5XKVAE/sF9TkjpN11kwuHKj
         fGZ8lhuRMDLzEkHkztiKGMtC9qf1HZN2jiyPHD72PsLiYQTqzg2H3uowxTpSObFgi233
         nKhvt9JDukTJPqQoj97Ou0HaPnJrTZuZ39vKhNW6UXrDvM9WmHsA5M1yjea8hlCClVy1
         MHDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Ib/TjFV/r+ljLgj4aCacKL23KR9ga/2QbaGnZqWZW5g=;
        fh=jV14VqS4ykjk6BKmdTTH3XcNWX5pp3u3oBhExvPHa+0=;
        b=Nf2y7THESMG9x4f6UfTjWT/09Q8D5DUa048zB72j9KIGRT9YZttiFLMf+YH+jbOZAm
         iJkrxo8ozDZCesnL/c4PVsL5PSD0af1XWD1eDhNPASKwHwAh/wK4gagEuOIOBo9JOFQi
         b+cePj+M0fOo7Dqqi4Ln2X7xy043iTwSKPTmej1fpn1DSJra87K91hIUry6kzri0SFkX
         rbIUDLwucXOFD0K/KqO1XWPpYj+930BHjcocKOjCh8dDRHvcKkGrZsufrtaIVm1uSSTb
         55G6P5k4OiAHg2aD15M0rWenqBjHQLBUNpoS4VUDcOr5La/dgHgHK7dDwjMAduoGB/hK
         3f7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728255769; x=1728860569;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ib/TjFV/r+ljLgj4aCacKL23KR9ga/2QbaGnZqWZW5g=;
        b=VUz8ZvRB6f8QXX/OZcTRbbCMQoDOvFPpyB/wu8LRALWGqeimJrv2w7S/Wv9flfzlLd
         IxNtisgplmuZ4qLUctzXjTaAWvE/OXXc0Ybgkz8hAmWl9v6NJBWOqnx8R7H4zy4DuUTo
         3IH9XsNObwKtFuyA3FyA7ZK64vETacG5SRBJpkWxi8PSIFvcMggdAWCfndF//WLcSJS/
         wO/p1Sh/HEMKzk1oyia7qjM0F0OEQgQqtfblazejL0HdV2hizBcpK3EFQmfxWqwmd+rX
         QWLRJpSyMWr47jnYuswvCwi9JJKClMW2pPMy7hKZDYEdvI5jjMkitqtVLxHagZpCioix
         tffg==
X-Forwarded-Encrypted: i=2; AJvYcCVUEKPPOE2RfjXlJ/sCe0OZaI5fmNZAaP7C24Lxsk73M4HsBSTnhNpd5XvhoZxEpgB3O4zjMQ==@lfdr.de
X-Gm-Message-State: AOJu0YyD/gt1Oy+B+0zMzLnEYXYbNZRC9fkJjBb6TK59bEKa8S3/dGaH
	ZkDY04Wzd6HG58fR8bPTfWwKL7bSw4SFlZGqxbdkC0/gtp6kWJ6UOp9vphERBEw=
X-Google-Smtp-Source: AGHT+IFrIJsFeyosEG81Py2BWKrWNS00hZT9twm3a6ggCwqOdkPvADqSqXPf8U5H+VDV/IDPaMukyA==
X-Received: by 2002:a05:6214:260a:b0:6cb:99ff:23d8 with SMTP id 6a1803df08f44-6cb9a2f28b7mr73518076d6.2.1728255768116;
        Sun, 06 Oct 2024 16:02:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5d6b:0:b0:6bd:9552:bc87 with SMTP id 6a1803df08f44-6cb90159b49ls49767466d6.2.-pod-prod-04-us;
 Sun, 06 Oct 2024 16:02:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUdM4b3mjuQvkNQKLU40GS1mEEcC4iPR7+W51gna7FCqHkLuNIpByXd94Rb2rXR4x7Z6fRyt/cp7Alt5A==@gapps.redhat.com
X-Received: by 2002:a05:620a:199a:b0:79f:10e6:2ee with SMTP id af79cd13be357-7ae6f48baacmr1580585585a.41.1728255767255;
        Sun, 06 Oct 2024 16:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728255767; cv=none;
        d=google.com; s=arc-20240605;
        b=G46mDU4M43bYmrcmUSz8f7y5IwXZlftBKixA5B9MLL3Y8vj+s3OvqRpXu+Kn4a9xRu
         F2CHsqRSfxXDSCjKGUCa4f/Tn17ki8iZ35o6USFqA2dPKktf0OVlpZYGCnta8iFEwBQZ
         ySnOpokq6xFYmh/v1HwscVeZgTCYNgtR1BXR9pHgN7+Ks0ymMppcb5mlxy6Rj5SX3yXF
         Ww5XKJQwIRZKVL5Tq9Tg8eGMxEbfAMOZ8PdwMlDkE7uEiW7vF/Ks4PKHVIDK70s4gaKe
         1tia8QPqV4s1b7diLCbreUgOKkQE5xl1C8RcH7L7cOv0iA7O7x+plqDUf7OM99QvNg/p
         wsyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=S2L2Pgn1R9SfQ7pfl4VVCpn/jZykwUmHhxzx1lg/Dmk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=e7pnzfzjAHVx1u6ta81QDEXuJhRLd0KDNWtVjXEEI80hEXaoWUJG4b5YUy2mKci8hJ
         g6s+1F8nFf012o6N4NwMPvHavhQBJMsNHISnGAVKAXGC2DYEcxWj5uO9c4Ygj5ptk/W0
         dWn6zHFglzlYhxTzFP4URQtSR3dAiVjR2gQyEijXg1O5wP8/yXt/UEzaKevLeRFmN+ya
         FBXGIhYl+197aMEL95ycGwLSaE1peBUaqQ7BSiTYeeLJWK9/l2UekTA5jclF/Ipdtys7
         MQWscAFh3S3l7kRGvuF6V89rhL2JPLTaJPFpUFy5dVSlKD3DPTFcib6lFXmcrzarCE8c
         xMfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7ae756165fcsi500006185a.81.2024.10.06.16.02.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 16:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-LnQmLGMINyy7kEcz164nJQ-1; Sun,
 06 Oct 2024 19:02:45 -0400
X-MC-Unique: LnQmLGMINyy7kEcz164nJQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DF4B71953968
	for <blinux-list@gapps.redhat.com>; Sun,  6 Oct 2024 23:02:44 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D94451956054; Sun,  6 Oct 2024 23:02:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D6B0419560AD
	for <blinux-list@redhat.com>; Sun,  6 Oct 2024 23:02:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 685841955EE9
	for <blinux-list@redhat.com>; Sun,  6 Oct 2024 23:02:44 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-159-lkxh-SWwOwqvLBQfoINMCw-1; Sun,
 06 Oct 2024 19:02:41 -0400
X-MC-Unique: lkxh-SWwOwqvLBQfoINMCw-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 07F0332053
	for <blinux-list@redhat.com>; Sun,  6 Oct 2024 23:02:41 +0000 (UTC)
Message-ID: <bf5a814d-f95e-4da2-bec7-601ed40edd9d@jasonjgw.net>
Date: Sun, 6 Oct 2024 19:02:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Has Any1 Ported TalkBack to Linux?
To: blinux-list@redhat.com
References: <113a028f-ec9a-7168-756a-6026111be747@hubert-humphrey.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <113a028f-ec9a-7168-756a-6026111be747@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 4/10/24 12:40, Chime Hart wrote:
> Tomorrow we will be setting up my new Google TV Streamer, which will 
> have TalkBack, which got me wondering first why we cannot seem to 
> install on a Chromebook, and 2nd would TalkBack be an option in Debian?
The first issue depends on the Chromebook; I would suggest conducting 
some relevant Web searches. On the second point, TalkBack is only 
relevant to running Android applications. Unless you're running Android 
applications in an emulator of some kind on your Linux system, TalkBack 
isn't relevant or useful, in that it's highly dependent on 
Android-specific technologies.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

