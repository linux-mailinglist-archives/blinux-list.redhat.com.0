Return-Path: <blinux-list+bncBCVPTHE7K4IO7CMHWQDBUBCD6LK2W@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0E391D3FF
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 22:49:53 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b4fc5c2ee5sf6483036d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 13:49:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719780592; cv=pass;
        d=google.com; s=arc-20160816;
        b=NjpDAdG1rctyDMvvvpoNw5bkUOwCK4pWu7OpQLxLREErZsc73NDbVBKjCIKY9R2UQI
         +JTib7BB0m3BmbsOX3k5x2KOs53FHlDOIzkwzCz/z0Xzix7F/7LqBe9lqtchJF2rKPYi
         cahAue/MPO5gBi9Sq25/bYCPth5u2KLFx4dHWMA0gVKzanW5NCSm7DMESXceqc02poZJ
         9enDGf+wQVI9S/plkMNj947kxLE1qZ/yPuIEv7x8zu35DjfjST+EEjFtt7EVJ8rsAZT6
         6tUe4+TuOWOd54Nz3j7CKWb0wM+yUUIcHz7CJDXzuF21To6X0yPsYxndvogkXj7QqkgW
         WfCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=AkemZxj6pSj/rAc9nvzUjd3yZxh822JyTPMR5CuVOgE=;
        fh=izG2luJPykaDSiEvOT+N5KaRAkfPbxSsiV6tanalTC0=;
        b=u5WNssFC+bc6fm4yJCBIqQ8mCoZfSh2FOIQkW2wrQ4k81HOy+2hat0mS6PWJWiJQKg
         W/NG3Vnk28IpDC1L/IrUWrUqOvHKNeTzL/NAOgkwy29bjdBCY+R3wJztfxOcXeq8DypC
         NM5OtekQh7HIVGIJaLe8lmxlI0LuzGo7n+uPn65INMYCe3yY8ea4OwWlH7DTe/el6YOx
         mlHFk2Fq1hLnpd9a7iX4u9Sa1rpCj5lNhirTMXgUi1Vf15nqcCLc/RFff1hSejBva6IE
         whTIe04bdanp5QTYKPQEE+JwxIRN3nnjYqlD233/s9UZwrlktUgbi+Rm/H60SRnDkxl9
         U+kw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719780592; x=1720385392;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AkemZxj6pSj/rAc9nvzUjd3yZxh822JyTPMR5CuVOgE=;
        b=dJfXvRFXxP2TOwjbZlOmtkZ5zpeN9/awVfR05rp2zWqh+r3gRDmnBbbbO2U2R5gMZ+
         Vb6+mjwY/JvYRQwfS0+v61o7xO9SCoufPijVtB7QKpDHZr9TL1gJPNdg0xw9Ic7S1QRv
         01f9EMsUcBolLPive7p58BapvE9zjKxX6Z4IHIpN5qUCW+gHVqWQEqZfUcmad5T+5svr
         cNEu+AnfhKnEj4e0YJkZw2K30j6l3pHINyQnAa3pwIgoG2biLztslI29r7r27cfpite3
         pDlXtHnJSMWzI1ulBXdiXvDu0+Si4wHXXArZ4J0J8bsa4ZGQS3J0g8rpg92qEXHk37Cp
         f64w==
X-Forwarded-Encrypted: i=2; AJvYcCWUm3Swps8PYzWi4OoNg91GisuTKyCV4FP6kE4x/zOAAjFnHG73tjVVdCNVBVA24k2bkrNldb0Xbe/pKCXD4lBdzKHGOsAmuEKe
X-Gm-Message-State: AOJu0YyfsdbezN4665bV+usvl7Zcx+bfDP1quvaJe2ISfQUVwQWA8N6c
	iuIiDkU8pPvhl0lVT9mUWQ/5k3Z4XOAlYbTDtw1XPV7Ecd9HRe/KYvoYYgCZbuI=
X-Google-Smtp-Source: AGHT+IGzT1ZAwZojE1gY0E83tSWgfI7VvQowjr/VdynDVWAxqE21B5EuE/a+n4r99ATCZaHfVUpgBg==
X-Received: by 2002:a05:6214:762:b0:6b0:8202:5c4e with SMTP id 6a1803df08f44-6b5b71d8ea5mr41006206d6.5.1719780592106;
        Sun, 30 Jun 2024 13:49:52 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5de9:0:b0:6b5:d99:4d3b with SMTP id 6a1803df08f44-6b59fcccaeels39130606d6.2.-pod-prod-04-us;
 Sun, 30 Jun 2024 13:49:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVl/sUU4g7NREIFdc5Y4MENvaNLGDM+sJDIKqQNhM2D0gtb0RSTZZ2JXvRqDe5N3eAIRvHqqSFBlW1WuwVIREvpfeFdfhhkfaRT97r2
X-Received: by 2002:a05:6214:230d:b0:6b2:a333:2abd with SMTP id 6a1803df08f44-6b5b70ca916mr63770026d6.33.1719780591064;
        Sun, 30 Jun 2024 13:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719780591; cv=none;
        d=google.com; s=arc-20160816;
        b=yh9RJSRJDNxqZNED6x4h/CnEP3S2BZ7kpCQpl9yFGFc5le8L+exmGCsdiDMfTXxJtn
         7CqcsJEwXypx6uC7C01rVAzyQ6UyKjmknr3qHCRWmmAAP8PoFxY7Rzc7YBHerhlHtjxX
         tKmbXu4E4xZHPrAtmiq/khE76yX4mtaD7tqspZ8O072xLu5i+3T7pKOau4SKy+rpMb6u
         GikNBS30gs7a2xvSnKnn95rhNRHEDZvWF5uTSx8009u1ssXoSrjiQzQ/hi8GIzQI3NMs
         YFupIhjSqmj6VF0ChyMzJQ30CcZk81KbLp+oYL5SL7yDYy7wVF7Q5d5V1C8OqrTE4kgK
         qTnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=AkemZxj6pSj/rAc9nvzUjd3yZxh822JyTPMR5CuVOgE=;
        fh=VyKXAThI+6qSjiPugOOIse8Xpla/smkW2tVZYif5aK4=;
        b=H933Ubmy9ZqJtNW3Hf1zZ3L2zgp2yWoPHm0l+VZbjTsyG7Z/xb5PtEuS5v6ORy4I9f
         7SYtmSvhyuifYgLM2NiQqVhnm7pVxSZaDJDVrpBeBXjLJvQzzagO8BMOa1AZS4exGFj7
         sdz9j4DuIKEEnXRmaOx+W4eS7LzvIPr+kyhiAwXhUq3lWLNdUMbcakdZShohJC5GZZIf
         4SupsufqGjUm5bW5E2G0Hz2M3v6CKksDa9RSbWy9TY5f6jkNlDknDZuu6JLYQxjzaRbj
         4c3h8CIHpZE6GGirbPln6Mz4DWjXjMOaGxTsDbaXacGbc83DbWMA0chl+aKgPmN70h5b
         /AcQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e363246si69638226d6.76.2024.06.30.13.49.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 13:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-xcAkkkYcM3yOOMz0JmkOAQ-1; Sun,
 30 Jun 2024 16:49:48 -0400
X-MC-Unique: xcAkkkYcM3yOOMz0JmkOAQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C058E195608F
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 20:49:47 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AFC6E19560AE; Sun, 30 Jun 2024 20:49:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD79319560AA
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 20:49:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2D58E195608F
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 20:49:47 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-612-Vf7ZBizUMrSPtneCWJK-mA-1; Sun,
 30 Jun 2024 16:49:43 -0400
X-MC-Unique: Vf7ZBizUMrSPtneCWJK-mA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3E45E44FC8;
	Sun, 30 Jun 2024 16:49:43 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id E45D51001C1; Sun, 30 Jun 2024 16:49:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id E2DE01001B0;
	Sun, 30 Jun 2024 16:49:42 -0400 (EDT)
Date: Sun, 30 Jun 2024 16:49:42 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Didier Spaier <didier@slint.fr>
cc: blinux-list@redhat.com
Subject: Re: solving missing ptr record issues?
In-Reply-To: <ae3bf211-b235-42d8-b2a0-15ae92df01d0@slint.fr>
Message-ID: <Pine.LNX.4.64.2406301645490.3212883@users.shellworld.net>
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
 <b2b41f63-ae2d-4f7f-8251-3f7cc1aca980@mail.com> <dbf54f5d-9bc6-4fa9-b418-705bc36fd2b5@gmx.it>
 <ae3bf211-b235-42d8-b2a0-15ae92df01d0@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1937605946-1719780582=:3212883"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1937605946-1719780582=:3212883
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Actually,
Both of you are being quite helpful here.
First, I get errors when sending from shellworld,  Will pull one of those=
=20
to share.
The most recent issues though come from karenlewellen.com.
My site is hosted at shellworld as well.
The error stating that the ptr record did not match used a 55 at the=20
start, not a 50.
Perhaps I  will share both examples.
Thanks, honestly its richly informative.
Karen



On Sun, 30 Jun 2024, Didier Spaier wrote:

> Hi,
>
> To add to what Kyle wrote:
>
> didier[~]$ nslookup shellworld.net
> Server:=09=092001:861:5872:fed0:56c4:5bff:fe21:679c
> Address:=092001:861:5872:fed0:56c4:5bff:fe21:679c#53
>
> Non-authoritative answer:
> Name:=09shellworld.net
> Address: 50.116.47.71
>
> didier[~]$
>
> So yes the reverse DNS seems to work for email associated to the domain
> shellworld.net which has a ptr record. The only thing I note is that the =
address
> in the output is an IPv4 one (the same given by "host shellworld.net") bu=
t dunno
> if that matters.
>
> Also a query of internet.nl about emails from shellworld.net doen't ring =
a belle
> eithre wtr reverse DNS:
> https://internet.nl/mail/shellworld.net/1280212/
>
> Hence my question for Karen: I have assumed that the domain associated to=
 your
> email address is shellworld.net, but maybe this issue occurs with another=
 email
> address, using a different domain?
>
> Cheers,
> Didier
>
> Le 6/30/24 =C3=A0 14:42, 'Kyle' via blinux-list@redhat.com a =C3=A9crit=
=C2=A0:
>> john doe' via blinux-list@redhat.com alitoa mmaoni:
>>> What are you talking about, we have no context.
>>
>>
>> If you are unable to help, just say so. I have enough context and
>> understanding of the subject matter to answer the question.
>>
>>
>> Most receiving mail transport agents reject messages from sending
>> addresses that don't pass a reverse DNS check,, meaning that they look
>> back at the DNS IP for the domain portion of the email address to be
>> sure that the IP points back to a domain. It doesn't need to be the same
>> domain, but it has to point back to a domain of some kind, which is then
>> checked against the SPF on the domain portion of the sending address to
>> be sure that the sending machine is allowed to send from that address.
>> In the case of shellworld.net,
>>
>> host shellworld.net
>>
>> shellworld.net has address 50.116.47.71
>>
>> shellworld.net mail is handled by 10
>> mx.shellworld.net.cust.b.hostedemail.com/
>>
>> Actually, that mx one is the one we're checking.
>>
>> host mx.shellworld.net.cust.b.hostedemail.com
>>
>> mx.shellworld.net.cust.b.hostedemail.com has address 64.98.38.4
>>
>> 4.38.98.64.in-addr.arpa domain name pointer mx.b.hostedemail.com
>>
>> Actually looks right to me. But just for grins:
>>
>> host 50.116.47.71
>>
>> 71.47.116.50.in-addr.arpa domain name pointer users.shellworld.net
>>
>> OK I'm out. Sorry, I can't help, as everything here looks right. You
>> should be able to send mail, and the recipient shouldn't be complaining
>> about PTR records or reverse DNS. But it could be the SPF on
>> shellworld.net, which needs to allow mail from
>> mx.shellworld.net.cust.hostedemail.com.
>>
>> dit +short shellworld.net in TXT
>>
>> "v=3Dspf1 a:shellworld.net services.shellworld.net mx:shellworld.net
>> a:atlas.bondproducts.com a:forward.b.hostedemail.com
>> include:_spf.hostedemail.com ~all"
>>
>> Yes, this is also looking right. No problems from my checks, so I really
>> am out this time. Sorry I couldn't be of any further assistance.
>>
>> ~Kyle
>>
>> Imetumwa kutoka mikono yangu
>>
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email
>> to blinux-list+unsubscribe@redhat.com.
>>
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

--1949452079-1937605946-1719780582=:3212883--

