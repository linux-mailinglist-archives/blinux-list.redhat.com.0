Return-Path: <blinux-list+bncBCLPHQH4XEIRBOFR6S4QMGQEEQ5J5LI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BB59D30CF
	for <lists+blinux-list@lfdr.de>; Wed, 20 Nov 2024 00:01:17 +0100 (CET)
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4315d98a75fsf11263055e9.2
        for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 15:01:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732057274; cv=pass;
        d=google.com; s=arc-20240605;
        b=SlnOWM+5jOa1tYPFE7DstHDUXTTKRR/F7GkguI2LwWkP8Bn1TF/mPljxyDfhPvmOky
         g9SKuM2wIC3TQP2pSOg/M3yzLt85/ZIq224ZXa0lOAyt9v5ZYNiIHwg/c4807fpLuGVn
         spIiKajZxVKdhh7GOZa0WhKO5yX0ZpT/iMDH8w9+9tiRATyrJPR+9F7pM9BmVrXeXXLK
         CjGPqcd6GNYZeA1O9x0ZU45GoCmY4V/phokcpBE4qR9J+JRo0cOZjqgCvUmEjj3ANCXJ
         4euPq0yDbZBaE3Dee5mFxVUz71+G29ciZz93WiPX3Uw/niitTbYwwD+kG0VdVEKMuExL
         7A4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=dKUCyGvlfr4oAzVVPeTfgm3gwdHtZHqW/9rtx58eVS0=;
        fh=/lAb/Rh+BYzbgALEzIHGkX3sHFTZ6P+1icqy2Y2sGvI=;
        b=Lp8eLECbKWE9JNWrUk7KaRvWTwz6OdbCVkVR8TDrc8wJCxpNle70DiZhW7w+mukTjm
         mipQIjzKTFvmcK9S0KhtQRB5wkm0HMI8vHMfrf0XkJjNCd1U7PXWDIt+pEa3Ng9H5Gez
         SY7AEhKm5rwU7O5wGPz9yL77D9gKU8KepRFYqz497S0XT67js4Gi6RK+UjGdr39xsNmC
         Auan7ZbxuyPP1MBCRNlp92+wJ7zemx7rtg8tGPjOX3e+l7oQds0sc4w3eNGogm2w1fTG
         cEbq/1HYrGPmd5gt/sHXNgQeWQFxLmd2cf8n1FxJ3deZ4WJSB8lru/FMR81UDHLMyU8U
         xbjw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732057274; x=1732662074;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dKUCyGvlfr4oAzVVPeTfgm3gwdHtZHqW/9rtx58eVS0=;
        b=mnfiXi/quDciTZME4hR+bawExJy/m8HC9cRqMn0fFaQ8cBQkV5HOvvsjyKxDUoFQBF
         X53qJ1m3AtFDWXwWTIYLlhvHOwBQkPmHTfT0w+4zLm1YA5WldyQKn5siVoYPjJD3mbUS
         BSycYFhGxdqBrc+FmmtOrm6TGuVu2Y2rCsAt/IWrOKA7JdbNVHSSZGuYLQUg/JJAesLw
         CkzP14Q7D1hTZzQBakgfMFKt8Btp2+vEZSW6OFPicR/8hTcOXuFxl+DOtVb128wMDcP8
         4UYFSrRBHda2OBs/YmIdlne+WKuLv44hrIRhA8V+7U4fsv1wyHRgERj1jKogR8SfgJ4c
         ZERA==
X-Forwarded-Encrypted: i=2; AJvYcCWIyHj6E7lhAQ27ZuZgKY2XHyguswuNxGh1K0KQVdR1AwbeiEmV/hFnxL7TC+o7tz5dYjyssQ==@lfdr.de
X-Gm-Message-State: AOJu0YyUd+TgcvH92OyeLGhrJJYFPfbpt2cjyWmTCXWcbKOnohjGev3o
	Fipw5F8KnQkoE2Vpe0kVR9w1ayFSroMU3cvqFPmIaOvyCdLtdh/TQh7pFaHguhY=
X-Google-Smtp-Source: AGHT+IGMngVTYE4qzDWp/uw9WH/tP20D70M4CLJIDf3vOrGknGhwz22IXV2QDc4im8jAkT1u0dQKLw==
X-Received: by 2002:a5d:64ed:0:b0:382:32ec:f5c4 with SMTP id ffacd0b85a97d-38254adedb5mr445120f8f.6.1732057273897;
        Tue, 19 Nov 2024 15:01:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:adf:e185:0:b0:377:2d98:7c90 with SMTP id ffacd0b85a97d-3824c1213f5ls806289f8f.2.-pod-prod-09-eu;
 Tue, 19 Nov 2024 15:01:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUvFjJOdo115VQcBHB8cjS/Su97oUSxtA6gK7LLsO4mYj5mTqVh8n6I4elqKIyCg0I3pe+az2RXsb/wjQ==@gapps.redhat.com
X-Received: by 2002:a5d:5f94:0:b0:382:30a5:c389 with SMTP id ffacd0b85a97d-38254b1f994mr358481f8f.53.1732057270832;
        Tue, 19 Nov 2024 15:01:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732057270; cv=none;
        d=google.com; s=arc-20240605;
        b=hKTBWzPgi71+OF0bWDI8AMBceC4eVhWzcsv8G2aqkiKUAm5FKoS+rTj0EQB0IOz5rE
         F8I6hN0sCKNdnjdfMPM0Zcebnj9aWHrOwEVN6Fio2W6nyudy/ImiNQBYwTKxWQPm2qND
         BhkVS+Is0K684fADSisdUpU8qkzgh6/f24RN2l48Qv6gNhLL/vvTVxNz/3DyAIS0F3XU
         JImPXvEIQAMLzHy9hcS5AnCssf3GYx2TTmmFbTvhaZZDBmz6ICms0rEANdzmeWNBqTgm
         kjH/rhvV36SndW5d+KdH94by0WdLtg5X8GYx9n1MPLI88PMeb4XNVS6dW1sucr1mQitO
         03Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=BQSsJ+YDPv1hIQ1x4rE9GV2wVFViMdOooM2Yt9vRZvM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=fGvqfbsH3mU0JZJN5tFbpJvukDPbxJ4+GSUD/RhUPSgiG3rUMNqWt2OTiGJO5r9foz
         z+l+5nI9B5oRQa8mRepSph1wF4hQ2kHYJBfZZyDkZ4KKCkiEn7ZKIRh5U35RmenAuvLs
         vL7cBn9fKBWqoxH78Q950/RU8/0j50zJ7LPszbWWqWzVtN47e7GuI63i9F/xHmhanjDO
         K9mNK8KmmjnVzPdcDn9XAHC/IVWiPMTLdKMc/2KNo96jAyPZtiQUnKQD5F71PrdeVlTo
         ul//j7XH8Ay833Qco5W8eFydDEzVlCfc+ANWTLYSmU+oyPAAoc31GoWK5BrIhUUBSBbj
         pcCA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ffacd0b85a97d-38254951895si227349f8f.897.2024.11.19.15.01.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 15:01:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-42-IXQqRO7HOPmHOSHYfA_KtQ-1; Tue,
 19 Nov 2024 18:01:07 -0500
X-MC-Unique: IXQqRO7HOPmHOSHYfA_KtQ-1
X-Mimecast-MFC-AGG-ID: IXQqRO7HOPmHOSHYfA_KtQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C4D8D1953958
	for <blinux-list@gapps.redhat.com>; Tue, 19 Nov 2024 23:01:06 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C0CB21955F43; Tue, 19 Nov 2024 23:01:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BE5B81956086
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 23:01:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 378171956089
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 23:01:06 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-298-PLExvIRFPQihb8mJSKgTaw-1; Tue,
 19 Nov 2024 18:01:03 -0500
X-MC-Unique: PLExvIRFPQihb8mJSKgTaw-1
X-Mimecast-MFC-AGG-ID: PLExvIRFPQihb8mJSKgTaw
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 8A0073200C
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 23:01:02 +0000 (UTC)
Message-ID: <2f30eb4b-1f24-4064-ac05-91f67fd5d1e0@jasonjgw.net>
Date: Tue, 19 Nov 2024 18:01:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Piper as an option in Linux distributions?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
X-Mimecast-MFC-PROC-ID: DS1rC3J19wp56c6TPeWnO4A39P48qz1KSAheZGhkT5E_1732057263
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QNt_H4WxfVadYAAvcE0Zl9ZBGyO_cgAWmBFR7o8yShk_1732057266
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


On 18/11/24 17:56, Karen Lewellen wrote:
> Anyone aware of the Piper voice?

Yes, it's neural network-based, and there are various trained models 
(i.e., each trained on a different voice) available.

Piper used to have performance and latency issues. I don't know whether 
this has changed in recent development. As I remember, the new Spiel 
speech server supported by Orca supports it.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

