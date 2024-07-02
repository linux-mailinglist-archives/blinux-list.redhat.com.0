Return-Path: <blinux-list+bncBCLPHQH4XEIRB3GOSC2AMGQECLKU4RY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0A292435F
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2024 18:14:38 +0200 (CEST)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-25cc36c08f4sf5161334fac.1
        for <lists+blinux-list@lfdr.de>; Tue, 02 Jul 2024 09:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719936877; cv=pass;
        d=google.com; s=arc-20160816;
        b=0V5nu9JHALu/FqiQUOR6cnaCw9BICs8plFKTBQhaX4BaXK6207C6SLIclFNjhzGjoh
         Qx+9o4eY7NL0G3fayR6As5z94EdxieN9U4G0X7kGzTXXPXCb5/nw4r4rgUEebWQT1rc3
         z/XoJ+ZG9KHv4IHzZbt+2Yz8tH+EznGLhsZndkhH9qghadleRVJaGP2BjB0UiVLniWE7
         s7a9o6pMblbjb6bcjcoT3AkchTGBxIAb46pHZ8Xhj+owRocWPrqPBRZ2PAX9eFb0rB0A
         4DrxBZnrUOaLI40oa+uZ382bQGXdB3a50GKjRWyqvRSCaHE65J+wL6hMpBVXJazdfMHZ
         BxXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=b7y2mXr3iFHYq5bg3uOWa56zAhafG8W4kZtYd85drnc=;
        fh=h51HQrUgZK8N9D50fM4xAmKCHQW9/o0XtzC1A+HWYTk=;
        b=aGox7BOpTdifpuduWu9Rw49Gi3bDjs3AZgVd8i+zpQm1M6vJ/OIOjCGeCSxN4Z40bI
         OQlFjMfLr5Yt+6PyFfydRoO007YyHtNRhzVxyjXW5tot5uCX9YwfRfSplC1yBZVfp6zo
         ciOqO0CRCLP0fb6jHBljUShJraWsLY+uFh2G9f5QQilXbBykcheUdceZqYAx3RM1ShUU
         x/nlrpA6vvqD8KEo3wxjb6485w9Rrb5x99IkBWppgtZe3B1bWXtProqpS8CJkg75mNUC
         uMPAJ5m6WbSD5i4L35nKXzPJb073QNw+IWF4pKiczCIwlqu9HjbvzcDsux9fu7BNzFgK
         S2Tw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719936877; x=1720541677;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b7y2mXr3iFHYq5bg3uOWa56zAhafG8W4kZtYd85drnc=;
        b=SvBPFsgZNRQBDaepwFPQc/noSYrl4EWPc4gsxgO9kHWGCLL/d4MGAvMXrZELIcVlfC
         Awzoq+gXv7CWYGr2InFOzlmUZhFtEBNTjfq5+M//RE6shLgMA9KRQjTF8xd5Ia2NpoC2
         Y9klgZNEPw6v0aKK3C8LlaHIIG5Rhmy+Z9FCqijACHRw//WemJn4gO1WIjypYlZIGqj7
         /tu4AZfX5NJFVL0DPC4b04qehW6SsoiqFHAS6Iy3uduI3585wBIVM8pgk9FE2HxZUhFs
         5HUFD0HOEoLNXjNxd/5MEJlRQRPfOXYMIZTylQPqDf8v3WLw+hC417Zl9lA+vdUi+yOl
         wARA==
X-Forwarded-Encrypted: i=2; AJvYcCVRM0i4xAWEVHguETx0BrPEM+KGqA6sLWQ22g7hpkY1eqUyS1dvJdue6e+LUg516Hm5p/GbyzSDYwbfSFyS/1aN46FSs+etSvhQ
X-Gm-Message-State: AOJu0YydonQxnllIMf8S7CcdJZvjuG7q0yiHnBmSyCUrMeF5i32hdgN8
	DaPmIw4p7GBCWjNs0GFCmiN8PWrn2oiZqj9tUlOHysHDsiJpKLfUxYV9Eo/nkds=
X-Google-Smtp-Source: AGHT+IHUQzr/P74U2bD4Iq69ZklMIvmd3gKG2kvbhW+2u1AFz34lpT2s4qUhOZveXl/Ns0zr9N3dbA==
X-Received: by 2002:a05:6870:90d1:b0:24f:cabc:4f6b with SMTP id 586e51a60fabf-25db334c566mr8282638fac.8.1719936876719;
        Tue, 02 Jul 2024 09:14:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:d154:b0:25e:624:afb6 with SMTP id
 586e51a60fabf-25e0624bad8ls176748fac.1.-pod-prod-09-us; Tue, 02 Jul 2024
 09:14:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWUCMoAO/ro03w+YFjxfpVEyV4CjmBA2ybEEX8zMKNGhIQnvhzFC+/q5Z1ZDhCwIk4y7ZgBJsBSNomAgngsY2tFY/Ea0UbGRCI8bhFY
X-Received: by 2002:a05:6830:1054:b0:700:d299:1f25 with SMTP id 46e09a7af769-702076f4a19mr9828767a34.34.1719936875867;
        Tue, 02 Jul 2024 09:14:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719936875; cv=none;
        d=google.com; s=arc-20160816;
        b=T/mgb23oW5jTVAFKEfiFFIp8U26WLsITCiULACbHETG+LN9tNKOWWmsxzKIXvt3TZA
         EeqriTmR1NCh/SrVnIzsm9z/S/YS5CfrjEwK1qPFKiUpg/f5mIY8SPVDrT9d/DSLTZHP
         r+bjN708hkSw/vqd58iUZn45WNLvmVnBT8+lSNL49ibBUP9PqsmmUT0IJ3RB2D28K4gh
         mL/odEfEarKKe2yJqHo1OwaFGNxJnGWClvhNmq0VzPt6ZthAslFFk3pL+ix0EplOgQwQ
         Zma1tDWUcSUiqFMhO9DDWmuEnASu+TZ9G19sGxHITe/5sAMLWEzTFKMb1o+qXOcDFIEa
         SQjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=YDRr0BLUoxh6uzt/doC3DfjMwPzip7awWtkglZVWIKw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ZkSGMI+zHqjy5ilWXrjV0EAS+EvDsavU6SeYKAavjkxC7EqHttpBfSEkb8JO4kVYgQ
         0qwAFlCWtgtEFbi0OtmBm6yzbgLNjBcx/d4OK2KlULJKOUdZP6SZHLFRkOhPA9rULm2l
         InVOjgKVRNmoO3iojtIxfWRMwhmhHZfhgN+UVJqIWMULFtd107lxaK7ShK3bgc6m6i0j
         3O9Dmk1V2biw30a7ZMoSqvoOP9vXp+oaBa+OzqIbgM30wVKyFwRlcIpH9S9asRpDJdm0
         Tzo9CjVnc7Q3h8wbO5qt95wfo/h4bBUIJtKZyxXi9g0+5CIDVpiuSdU483jDR17g2Xoe
         SJsg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d6933d4a4si1028795385a.655.2024.07.02.09.14.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 09:14:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-136-6HR0yUfsMrq5Q7LBDbEzsw-1; Tue,
 02 Jul 2024 12:14:33 -0400
X-MC-Unique: 6HR0yUfsMrq5Q7LBDbEzsw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E7E3119560B6
	for <blinux-list@gapps.redhat.com>; Tue,  2 Jul 2024 16:14:32 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D514A19560AE; Tue,  2 Jul 2024 16:14:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D1FE419560AD
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 16:14:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4820219560B6
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 16:14:32 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-vRrB0O0kM-GNax9p_0YMag-1; Tue,
 02 Jul 2024 12:14:29 -0400
X-MC-Unique: vRrB0O0kM-GNax9p_0YMag-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id B775332065
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 16:14:28 +0000 (UTC)
Message-ID: <10029893-5d7b-4c62-883f-195550ce5d49@jasonjgw.net>
Date: Tue, 2 Jul 2024 12:14:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fedora 40 workstation status
To: blinux-list@redhat.com
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com>
 <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net>
 <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
 <5e90b809-1877-881a-9c59-2f6d94d0084c@hubert-humphrey.com>
 <0c850d51-1b56-46c0-aa43-4d3c2ad8bdd3@gmx.it>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <0c850d51-1b56-46c0-aa43-4d3c2ad8bdd3@gmx.it>
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


On 1/7/24 23:16, 'Kyle' via blinux-list@redhat.com wrote:
> In any case, I have no idea where this article comes from talking about
> Fedora not being accessible for 9 years. That just seems odd to me.

I interpret the article in question as claiming that (1) Fedora 
Workstation has been using Wayland by defalt for nine years, (2) Orca 
doesn't properly support Wayland, (note that this is due to issues on 
the Wayland side), and hence (3) default installations of Fedora have 
had adequate (known to be flawed)

support for screen reader accessibility during this time. The author 
further refers to the role of Red Hat in Fedora and their ultimate 
ownership by IBM, large corporations that could well afford to have 
committed the engineering effort to solve these problems years ago.

https://ar.al/2024/06/23/fedora-has-been-shipping-with-a-broken-screen-reader-for-nine-years-but-the-real-problem-is-me/

Note this is very different from making the false claim that Fedora has 
not been at all screen reader-accessible over the time period - and the 
author doesn't assert the latter claim.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

