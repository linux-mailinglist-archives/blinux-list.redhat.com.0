Return-Path: <blinux-list+bncBCLPHQH4XEIRBYMQ6O4QMGQEAJHHMAY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D3A9D2C54
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 18:18:28 +0100 (CET)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5eee0967128sf696437eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 09:18:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732036707; cv=pass;
        d=google.com; s=arc-20240605;
        b=botVORSFQ+rNzW3uNaiFFnI0it4eDBZMPFmhU6qIegBBnC+hhdxoOBtH+If/TTiM1c
         pCw9B2JciYPZ+jvr5V1HYNUwoZMGjhWFAFrJp/SG+sfnVWJdlXNVAaHTWzxC+xDImknd
         rOnUqZamPh5BoDWnUEG7PY4fIZeIBc0m4+/nYGnBhEwDq2rFY2SV7168hXqUefuxYL/s
         +VeZMyhuqvsb6w4cgp252BEz06uAOCHXG32zIOiggJTMrFxVrRJJWpNWZPqfOm4eHyzj
         tjrV90taYe6f4LC+6xdamCKNKwC6ukfu/C2BtzykY7n9fkOO/oEXperwpBdIseETW+Jj
         sfrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=pTjlXnA0WaG2SoD1bxdsb28zDfSE897BRgpoEjZj42Q=;
        fh=Bp5AJrz2ycgiN+8nNULN2rfR+tkGS0jTfB/mRlxEsuI=;
        b=c1LDgN8UkDssq1qxW8BtPMtwnPinv0Aj/KdvF+jpSCkI6f53Yjt84qfoKTtRXJvvVc
         /e5WEd9UqQdsDgQABFiF7aD2hHkTo92xu8L7b7roOIS2ADPJIEcY7R3A1fjEmhTd1gII
         3La7vbLiA3V/DoytHBxnkNJagnMZum2r77DDURXNThC/9nW6PSwL6f6xejdbaA2YLhki
         KKbMv1zuZsMDwC3F4ImOs5jipqr4IlJuTUxOAoTPbGcVcV99+wGzsruaNvwKhp7zMzDV
         cbNaTHMddyC//1o3gh7OaLAF92fGtSwn8Gxv7W9YmgD6XpsXu0HuLZIAsTmG0xOUWpds
         majA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732036707; x=1732641507;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pTjlXnA0WaG2SoD1bxdsb28zDfSE897BRgpoEjZj42Q=;
        b=MaxJst12jVqRLryylF3msd1OlVGin3MoafgdkqqDga9Hs4jeOmeuM9KfTYQVJqhVRB
         wF5TQ8H76Jb4DEVjDEwFBeFzMTY2xYoQFf51U8Aeww1AN/szz6TE8pPYUC9PjcJhd1ld
         1jIBZDYD605JCaDeVpXnJudWZE64wz7fP/Z8tXzHjbb9b0QfvvOAUxSk/FLE457Zomzq
         n5lMdxawB5m4kBtsVje2uuTe+xiaJUOIYsks0iDnQItz07E+8CZqYep5smMOWAiCuO18
         F0pxOyU3jp2kQFU5BvOxgVZxSNZbOOkSf4IYnNJh5+5zAXjNUT07ISvQL0NoPukPErQ+
         H1Xw==
X-Forwarded-Encrypted: i=2; AJvYcCV3ThrT1Ihz9hf6dd/cuiNWHc6IfAnJdZb8bZ6RqDj/sZ3w2WmxR7wUmxbk0ihrti1ZPvyEBQ==@lfdr.de
X-Gm-Message-State: AOJu0YwiTNRquDVnINQR3DBUSWFYtKdlAWofLOf+s86x1FgrRgQFlrHS
	57CXv74/Swy1S/kVzKrC9HCvGy52TIQ7wLHFIgiqKbWIoIL0lOfa6LdtaiQofvo=
X-Google-Smtp-Source: AGHT+IHbwPZ8RZNq2NCy+1Be+BBiIF9UgnZKUwz6rpOOKM1PrjQW2Uonrn0jqZb2gMo6ykyImB+46Q==
X-Received: by 2002:a05:6820:1f03:b0:5e1:ea03:9286 with SMTP id 006d021491bc7-5eeab41755bmr15184136eaf.6.1732036705956;
        Tue, 19 Nov 2024 09:18:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1625:b0:5ee:4b35:c8af with SMTP id
 006d021491bc7-5eeab8b7c1els3250588eaf.2.-pod-prod-03-us; Tue, 19 Nov 2024
 09:18:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU70E0shPs0lGiVW0x7u8Vn7Ue5LvxBSqYgW5+E+edMbobYOSLynMb8R4bcf43XZBKAGx1EQkb49a64Fw==@gapps.redhat.com
X-Received: by 2002:a05:6358:d5a3:b0:1c3:77fc:3bb6 with SMTP id e5c5f4694b2df-1c6cd14fc2cmr768465655d.21.1732036704660;
        Tue, 19 Nov 2024 09:18:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732036704; cv=none;
        d=google.com; s=arc-20240605;
        b=jzRmKUmCqSRhbALJ6txglRHr9t6E3wXxq2c9962+5UVV80P27mzxzu3OChxuSEXG15
         S89HkzQpMU6dwR8DfZnbWl01htPLj8/YTaexedqPPtex1KqLXTKbsl+Vv8QSJUN9Ticn
         NZhvnU7yEkBdLn6ztKhYcA+5e1L8MG2VKhPR6wpjWXxFcnK3SusHZIxwVBhTaa8ww+kv
         emoW2TRrmaVxZUC1XZ6YCa4I6KmOvp/LKbSF/8Nu76Ebu5Ww6DiA2gWCOQ7gfzXQfUGU
         ya4W9Asr/9VVb/3gwOs581D0cKZc52H1+qPRdNmwjeBamRtLz3j8MLGmrFU3oEaT5TVt
         Ar0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=9akznjLh68+gs8Az4m5wPvkWdn9FeCtn9XD0HG/DtGU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=A63cd9x1yA6mRuYCjNoJS4SIvJSeH6GqI+CiXoGNKCPGPz+k9+Wx2k+PVxseK3l+nh
         Av+0UjbeC1JhTqZ4tv96fL89tVUVZYsygonaRK3P/IiJxs9gZIuwPg/uRNFPp5UWILSJ
         d2OqLRsAWz65z0ZRnB/fcgsPzlCnpgdnv7D0XJNInPqbdj4qwPBtji2Va74z0Kp7r8v2
         gRqWk5z/KPUlHo0lbd/eBH1xXsLHjpAHs5CITWobwAA6uJarKFroYHs4TU2jKV6eKHwK
         mu0V9xf8OJ8KZ7zIeHCBnyrtHy3qwWpWWFuiS8sgltk1T4ojbXw7wYLYInKvlS171Z8G
         xxHg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-4ad646fa03csi2595591137.147.2024.11.19.09.18.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 09:18:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-695-driuOzi9PAKAZmlDxaRfeA-1; Tue,
 19 Nov 2024 12:18:23 -0500
X-MC-Unique: driuOzi9PAKAZmlDxaRfeA-1
X-Mimecast-MFC-AGG-ID: driuOzi9PAKAZmlDxaRfeA
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 68E4F1956077
	for <blinux-list@gapps.redhat.com>; Tue, 19 Nov 2024 17:18:22 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 644E930001A2; Tue, 19 Nov 2024 17:18:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 61EE630001A0
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 17:18:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BC4B119560A3
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 17:18:21 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-303-qklxjhMhNbC8lPNws9ZKSg-1; Tue,
 19 Nov 2024 12:18:19 -0500
X-MC-Unique: qklxjhMhNbC8lPNws9ZKSg-1
X-Mimecast-MFC-AGG-ID: qklxjhMhNbC8lPNws9ZKSg
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 89E053200C
	for <blinux-list@redhat.com>; Tue, 19 Nov 2024 17:18:17 +0000 (UTC)
Message-ID: <2f03025c-aa71-42ef-ad8b-b5abbaba6520@jasonjgw.net>
Date: Tue, 19 Nov 2024 12:18:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux and NPUs
To: blinux-list@redhat.com
References: <MTAwMDAwNy5jbHVs.1731960735@quikprotect>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <MTAwMDAwNy5jbHVs.1731960735@quikprotect>
X-Mimecast-MFC-PROC-ID: fucvrGKGkWhymEvxLKJiyo_CO09WbrbeotfwbTO9cew_1732036698
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: CRNd6epLOB8Mzh4DXksSYiO10mBN29iTzg-HLNmv5J8_1732036702
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


On 18/11/24 15:12, 'Cleverson Casarin Uliana' via blinux-list@redhat.com 
wrote:
> Hi, as you know, one of the components of some new processors from 
> Intel and AMD is the NPU, neural processing unit, which is meant to 
> help with AI applications. Do you think Linux applications can benefit 
> from an NPU in the future? I'm about to buy a new laptop, that's why I 
> wanted to know this.

If you plan to run machine learning models, then the hardware will help. 
It is reasonable to expect more models to become available in the future 
that can be run locally for various purposes.

I would suggest checking over at phoronix.com for discussions of neural 
processor support in Linux. From memory, Intel's NPU hardware is already 
supported, whereas AMD's has a driver that is yet to be merged into the 
Linux kernel.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

