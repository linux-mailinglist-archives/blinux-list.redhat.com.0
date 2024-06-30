Return-Path: <blinux-list+bncBCV3N6GOXMCRBXNFQW2AMGQENW643EA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 345C991D1A6
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 14:43:11 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b4f87eb2e1sf29100576d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 05:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719751390; cv=pass;
        d=google.com; s=arc-20160816;
        b=aRr7eFfyQHtNfGInNiUQ/PrnYLQg77BVpWsBF9tqVS2IkdanucisV9yaKXXYeZNLTd
         iPIGnCAXUazup0WGlG6nC1Oi+GCdk1aJFAL1C2oS1jbbgNyswGEpQkREw0SPEAETAiCm
         HBTU0ZBFN89nDz5EQfTo0ReWIODhIpwQCKb0tT7NOrl31TiFmqvVeTtwfMkTHRfcKjhZ
         vRWscK1wGVXInQtqeKUezQ9RQ4I3BSlyFqWlYesG8uL8Jky6IDw834UKsVXfWTrLK9LI
         VNsG6tnjwBfPngpYt8luY2W3shdRlkAcwjZsvIgg4dagZylEeegtTn3/6B+lJ1SML5V1
         CRtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=sMXVLplElaD2DnWOxwIzEWUbfk9Qwv8QGvhJTP3Xr4E=;
        fh=Cagq4sHPatynbWHPbwMnlxtNrlQ0E9HB6E9AQELLG9A=;
        b=JkPrMgwWx/X+qlRFP7MVkc1lVSAF76uh94AU1KHbWFXWSkutRQJAbuJwCLF4CSlb0g
         by1/AEms4xUWJ7BdRx3xZXnpQAsXQdgujcst2TKWCaAcoWTY3U6cS7YmQ2Fp5TY4EIS2
         tyy+IziAcfgI3qM7VfjJZyHnbTXvV3Zm3g8lnf71qWQ5ARGj87lbWvJMtJK/pcv+7d9r
         P10zn4t3Bfu+SwYO3LwhcJoLqMsFb3cSc4FdbnBHJsyU3F7xmq+9kx86/smpCBh8TCJa
         dotQHHhGwngkfSfikqXWIkNGeSJRVkqbQAJrgUZlvjQLaRfy04+0Oq+OSK2lXOLFfQDg
         uu8g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719751390; x=1720356190;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sMXVLplElaD2DnWOxwIzEWUbfk9Qwv8QGvhJTP3Xr4E=;
        b=FEEev8JroOspZzoCuC4YjxNBgNxi1UwRi/gO83Ux2HiLVAdC9zqa8OKIJ7FLUdgfeh
         z9HUJGrWcYwV+gir1bDA1quZYIep12OSuuAAGf3LgI3Aml+QXEmBj3xJgLGI+onq1asI
         +6VS9pj3g2KD+qfC5LKH5XjIoHNBeEsSCqp/eMHelMqyKQc1VzfnR8yEKeei9gZpiOpV
         QmTA6kJc08NzF6ddPbZ4dHskiuA+f6c8x51mG6PUYGmmz3MHH0vWZKE1p8t5aNKjRJ0H
         qsEUiByKdFM2hNqrkIoexqhD/+6R/d12Swgrizi6dX4NU/o+MTOyfwxwxMLMEUtaTRiW
         s36g==
X-Forwarded-Encrypted: i=2; AJvYcCXKuRwIJWj8xw/TibiqwBcmwWT4e4JJG/6w1ZkKiUk9Dyfz7jfwsV4UJmJy6wPN7lNjPGWrjioWWXVoLo0t91Ik/E1fl2ZnxjAX
X-Gm-Message-State: AOJu0YwfFmffwussSs6dTondp1eQfJi+m92qKNFaFF401RHWy1CjEXoA
	fHt/1JyzrAy+Il6ZAtUcmbxIaTLlXRFus9Gljl4qcpYEPtL6jqDs+OJYeNWykAo=
X-Google-Smtp-Source: AGHT+IElUOvhq6VStmc3IQYPBUCPF9H24JXw2IMq7vu9FWuI2nxGs5/d+sBYpmAG0NVfSznABDXhLQ==
X-Received: by 2002:a05:6214:500a:b0:6b0:74f5:8b1d with SMTP id 6a1803df08f44-6b5b70b6606mr40167466d6.25.1719751389984;
        Sun, 30 Jun 2024 05:43:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:250d:b0:6b5:1dc9:d595 with SMTP id
 6a1803df08f44-6b59fcf2de7ls38020976d6.2.-pod-prod-06-us; Sun, 30 Jun 2024
 05:43:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCViOexZzr6i4MUkVwqxUdqKiacyt3cIHwYHS4NewCIQ4tmRCZL1JZkvKFmW0WSZWp3uE4Q4Q82wPa53wp2YmYrB4bZAIb5PqYy1YNOZ
X-Received: by 2002:a05:620a:5e48:b0:79d:5b8d:8d5 with SMTP id af79cd13be357-79d7b9c99d9mr311319585a.24.1719751388665;
        Sun, 30 Jun 2024 05:43:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719751388; cv=none;
        d=google.com; s=arc-20160816;
        b=lOrc9N4CfQYZj6/JP7CrJqqlNNkF5FATq1CdjtQ+mTjywAfOqfsBp1FLYoc/5grzRG
         eah39faQ1fvXPh/WbGcWeuCcZ8B8PO9aajaxZ82DdTrL24X4gfJljAqysINEryeEg/Tb
         l7CLM9QJgMAa55zTIwKXxMoCSLWShI/rFAX8kSA3O1k4yXq7XTP37SyKccfqdU0ExWsY
         T/If3aJfIz2i9NMIeRgJQR2zOExyuJSEa40sI3IsQnw9rlVKaqFPHBMkdCfFwz9NBf4A
         bHng7+oF6y7KjZ4dJTnnlDjtN95O3AfdQNycqVAWZJymZwcQ6RP6/1m+LYE/sfD37pe0
         w27g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=mWBoJiu5mm6iT4dF7o8GZpZkeObq7zxDe1TU2PYeCaA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=YTSBDs6az1p6IJ/pHsaGmUtJ1W5w8XTumlG/ETVrUl+tV0MN5L0C4cttN+lpm5LZWx
         eOJv7igdVjTdkVCfIiLHFmfWYESr7AJipd43TW04pPJ2J5DKoiZ/vW8HXXr+x9eQc+Pl
         ALF9tXeKlQPzGOOSuBKVYvBozNSvRKJl/gso22wKD+snxWURYvmneMhnNg98x+pe7GVo
         G6z6ZI7UC9k64ncECcAxpGNV9gMpA8lTjqJzu6xSHjMqvTpnugeGSCG/ojVMV1t0+YDX
         0GlxbMgY7zmdRiutUhl3NDqfYF5RN8LlA6NcLUr649Y4k9hpKGfqhmMpuCiZ7wevDJWw
         leNA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79d692609c8si610153685a.4.2024.06.30.05.43.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 05:43:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-P_z_QltdPTiKdhhgIYvcSg-1; Sun,
 30 Jun 2024 08:43:06 -0400
X-MC-Unique: P_z_QltdPTiKdhhgIYvcSg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E6ECF1956088
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 12:43:05 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D18ED195606B; Sun, 30 Jun 2024 12:43:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CEE7919560AA
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 12:43:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 499A11956096
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 12:43:05 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-680-D5t75M0iOQWf5S2ogJ1ryQ-1; Sun,
 30 Jun 2024 08:43:02 -0400
X-MC-Unique: D5t75M0iOQWf5S2ogJ1ryQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M7sDq-1sSpZW320Y-0076Tt for
 <blinux-list@redhat.com>; Sun, 30 Jun 2024 14:43:01 +0200
Message-ID: <dbf54f5d-9bc6-4fa9-b418-705bc36fd2b5@gmx.it>
Date: Sun, 30 Jun 2024 08:42:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: solving missing ptr record issues?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
 <b2b41f63-ae2d-4f7f-8251-3f7cc1aca980@mail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <b2b41f63-ae2d-4f7f-8251-3f7cc1aca980@mail.com>
X-Provags-ID: V03:K1:up/9wpNSBYiFZAiXHKWRfsAXD29prwpoazBjORR714OkdwkJvCf
 P20uNYDSpadvmkjnFEwV2NPFvqSIqU9TXOA6XneapnY3fPiGUbH0JasFTrf0H1ATfptvHnj
 dROjqeJpb1i6174QyzunRJryh23n1vyy9wcWcq+4+ca0beI1I+tj7agYSyQzr/ffGkqWIRF
 omTctIreq31vXi2M026LA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ozaiHrdPVlc=;fpB6qGN30N9foEVDLq205y+KPQe
 ivjrl4Cq+31K61EN3KyunXxqV5JGYArGo6x9y5QgcqUA1eoSk6ImZf3md0a2fjjJ0vUyM4ya5
 NgsUkdt/flRYqiHgKlMyMe1/2EtR+Xqi1TImfo34Wd+HiY2ttFzIYxmnK68d3zOyEHUC+Hovx
 LGX4TVErblr5hDiLSvdk008spYn/CPFxCeaG9K+18ih3h7hEElkI7K64WfSTibU4DFPLnKx3s
 eYOivCO0rossKQCO4y7dH8crqJazCNZdYt9AwdPBwZnVzElW5aX1oPC0gLoH8A1wC/Wz7cqvq
 6XX4sWYYCMZjy0B0JTtlFW4cluOZiV5JQg6ma3bfTmZe7FHYYBL1eAQeV5GYRSlf+UdI3Cvw9
 8syN9Dl6tK0DDM8oyRxYZhfZpHfkokm8Y30aK6EIvXaxgeoaukrU52q/PM1aIgi4taCU3ZZyR
 IWPNxdopPnQilVVpEVsIp+AMDfk3icewJxVegaKj4HUyziencYi6eoWVaHFdCrLucQIev1AFz
 gZ0xZnuM/zVCweIEb/jJ829skfEGG0WAV7Asflr8aezURxPPXOyYuhuYtBj+f3yrwWuVCCjmF
 huVAbxsxitaCBYerybvvVdNVkZ0Cacw3ZPq73PTjazOAI1vqU+up3d3uv1Ax/J+Le8e2b6wZj
 3d8AGagnVWxgkSFgCHyZjYbYKk2LIf2275D5qURK70PCxtDbkEak3DIfaKmrfLIuS96LV2Cu/
 2Kd2y3MjonAlhdSf75CsN9IE+Q9y4qKQIopyeC/SYJ62EPOtfM6Q3SF7SPoYNkE2mW9v8WNmp
 lGQAWwTpeGZqi2bEK8yTByJkQyKQayyRxmU+ILUs1+328=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

john doe' via blinux-list@redhat.com alitoa mmaoni:
> What are you talking about, we have no context.


If you are unable to help, just say so. I have enough context and
understanding of the subject matter to answer the question.


Most receiving mail transport agents reject messages from sending
addresses that don't pass a reverse DNS check,, meaning that they look
back at the DNS IP for the domain portion of the email address to be
sure that the IP points back to a domain. It doesn't need to be the same
domain, but it has to point back to a domain of some kind, which is then
checked against the SPF on the domain portion of the sending address to
be sure that the sending machine is allowed to send from that address.
In the case of shellworld.net,

host shellworld.net

shellworld.net has address 50.116.47.71

shellworld.net mail is handled by 10
mx.shellworld.net.cust.b.hostedemail.com/

Actually, that mx one is the one we're checking.

host mx.shellworld.net.cust.b.hostedemail.com

mx.shellworld.net.cust.b.hostedemail.com has address 64.98.38.4

4.38.98.64.in-addr.arpa domain name pointer mx.b.hostedemail.com

Actually looks right to me. But just for grins:

host 50.116.47.71

71.47.116.50.in-addr.arpa domain name pointer users.shellworld.net

OK I'm out. Sorry, I can't help, as everything here looks right. You
should be able to send mail, and the recipient shouldn't be complaining
about PTR records or reverse DNS. But it could be the SPF on
shellworld.net, which needs to allow mail from
mx.shellworld.net.cust.hostedemail.com.

dit +short shellworld.net in TXT

"v=spf1 a:shellworld.net services.shellworld.net mx:shellworld.net
a:atlas.bondproducts.com a:forward.b.hostedemail.com
include:_spf.hostedemail.com ~all"

Yes, this is also looking right. No problems from my checks, so I really
am out this time. Sorry I couldn't be of any further assistance.

~Kyle

Imetumwa kutoka mikono yangu

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

