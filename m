Return-Path: <blinux-list+bncBCM2V5WE3MDBB7PW36XAMGQEMPSNRZY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 889AA860898
	for <lists+blinux-list@lfdr.de>; Fri, 23 Feb 2024 02:57:19 +0100 (CET)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-dbf618042dasf600723276.0
        for <lists+blinux-list@lfdr.de>; Thu, 22 Feb 2024 17:57:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708653438; cv=pass;
        d=google.com; s=arc-20160816;
        b=pJsjFg4QiaGZfctzTKykOQRR6cuLQqEGD5Z1nrAFyxmdcIcxBbQ6ddP2b2nRe6gB00
         H4FGBaBas2SipYUZUVdIwGGsUivY5p6wJeHIhbLpWabixO/6+grs/x3He3pRDcTtUSlY
         qIID+y1Loh9+f8Zs1+KrTrXycPenZtwR6l7DkMLii0+M21kYpMotB5zu5ZESCf9POYDy
         xKJVd6FDdTfocwRfC8DfoTWx+B5CQ7gnCFYZJQ7M/yRxbz0+5aGQ0eWZaHKCA4slxMd/
         HEFW142+E2TQYtpSLB8ISNe0Fa1K42erBazAM8Oh6lZucPcfndN1onZ0gsjZa3O709YY
         AH8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=uMsr5LBgjAvevJfiA0VGlnGkt3f0CV+uAFNaJSMrrqo=;
        fh=AgNsfA11qDYemG3Pp0MVMLgiVQ2zO7WnejcMGifI+uY=;
        b=Iw9BX7bv7FzCYqxT3BoHtTUZIcHYJwJMjckXNUr1c8vmkWLQqq8T6ygKBmRRmGDWNs
         5n6yOjWMpieaXXnqNjf2vhDys6hXcPUKHfiS7LQwDNy8qVaeiFGWM95PrKZvPNL4hz1Q
         +aLrZ9+Ui85ybUtFLkraVu3V0G+DiWCsT7WhlKtij2iWAZqH7Q6V/zMmyW2Y7TK83odE
         5dzJYxfw0xArvmdsdoizpoXvnzIDlBMCQLE7tb4/QBJpfyb85KwQzmbcgyRY6iXmprub
         W7ZC0WXd68OPFnPecHyjn5fdhB+LE7ASQryntDKlVllhDmjliHFpCnsdjqkFFya68+oz
         ZTdg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708653438; x=1709258238;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMsr5LBgjAvevJfiA0VGlnGkt3f0CV+uAFNaJSMrrqo=;
        b=Se1xfSM1v+T9eWE9J6nON7fB4WKe9oKnPkw/hEOeLztHzVFZe6RZcQeg4nwnzl5EtL
         VaYpWXKaoVEKn5sNzfCpQpbjNyL1Q9E+N81kDIH8P/X25wif0sbgjiFlQYfvsOdj6rjC
         0umIojmE4e8ZeJnw9b8surzkPCUlLb0aBXOo5HduFy0cMGg0pKEdXtVeiXABkiMraVBd
         5UrMh0USY88gfPXdB68yDn3twLlFYSbKhfwA7rknU0lgmG7tr3prHQyerRSibAfVXuAW
         Xg95ogeXFyBx9snm6jwVQdhLV3QxKGw53iyzWCV1hVL/Oh739LPzjRuj+QCcDGwHONHu
         dMpQ==
X-Forwarded-Encrypted: i=2; AJvYcCWLBPJ33UUF3M8SAqOqJt8QOTgjnZoeZDbUVekYH45/OYmBJC5eOLKLOdJhc6Lgz7ZheB0Fi6t1R7HpgFRuDVvmLzpLdXthZdH/
X-Gm-Message-State: AOJu0YwtIHIEz/m9HbXV7FuS5ry8hoYz7EZFLa6MBRjiUPyYB4ITxLb0
	UKZv+MbHkR6f8s+4VAgIYCRDxhQALZlcDvMyvPk+zwfVcgexO55eMF/f1V2cDg4=
X-Google-Smtp-Source: AGHT+IFaCkzwWHE5xUD6N4bsUkrzcw+yIo5BBiLpEstXdfX0SvnFni7Y4ydWsRjm3MI0eExMAR1tgQ==
X-Received: by 2002:a25:4643:0:b0:dc7:46b7:6d67 with SMTP id t64-20020a254643000000b00dc746b76d67mr925307yba.33.1708653437776;
        Thu, 22 Feb 2024 17:57:17 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:d051:0:b0:dcc:4b24:c0da with SMTP id h78-20020a25d051000000b00dcc4b24c0dals382147ybg.2.-pod-prod-02-us;
 Thu, 22 Feb 2024 17:57:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVpWhT9Mt2/a9PsaKUN6/fuIctg+P16orjCkKeDpUGlcs0xT0ea3og1Ogjs0V20+8pO2SHW2cBwCB2AAu4RkM5y/FiSw5Q6LpUkg9NX
X-Received: by 2002:a81:b71e:0:b0:607:6ad3:8746 with SMTP id v30-20020a81b71e000000b006076ad38746mr873771ywh.46.1708653436449;
        Thu, 22 Feb 2024 17:57:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708653436; cv=none;
        d=google.com; s=arc-20160816;
        b=t7EvIlKogspV77IlKhrupCcXhn//PY3txhhMaHDAtyKUIonzHffa5ns9+Ut6ezyTnm
         A3jnr5K45aszCgt2MsXmfdaZr5JNaMnKZATXDEu8YrJLOEzm1Ph2gaHI//6HqlvSf5XF
         5t+yNU86eusKs+3k4RE3l0cbNtwKoLwOHckL3K3lUmPKdxGNN9ZwTsCRM5+QYYmmaKUd
         5e1FuDlPSO474NrsbhTuvfzmZr3vhY7McQNXp7JPvdypApoFMFMOmisfcKNpmUIcIRJO
         VQHhNKTVh9QuHLCJ5IcRagsmZY/NJZU0xlZy2QRqKfJ+GK9Vubd3QMHS0sy7Nf50Ow5E
         70HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=0AzIE6LRc+P4hvsg4M76TCsepuOOWkh1BQ83e39I4jc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=FcEmmfDKr8gnmWPI7CzYObj1M9nxVJd/+9qN8GcUUSj99mR3E/X4SZRK81AO5hR2s7
         5O0YF3G2eEGwCxr3y+9A6xkUkO5BHeE9DPWNFkgbnynZQOuzQ6agSwcERCoZ3Jue79Tl
         jfUXS82anLUQNbyJzVmvYIuGo/hZHCNGmS6CmxRu8DFQMvU1egdU6vAHkcb4HoTEUX2J
         7KW8AlqFl/qOdsoi0e2ryuF8xBa7Tr5TehI7fpk7K79VM2f1vd2fuQQ1h98QzEh2AxeP
         SCggxkhiSaWLK7EzAA10PvN/M8v5X8LR/FqYXJ2iD3gyjc3AUIjI4T2GQ2VZCRs+1poU
         yd+Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 3-20020ad45ba3000000b0068f6db785fcsi10232375qvq.468.2024.02.22.17.57.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 17:57:16 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) client-ip=185.70.41.104;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-Kgp92Mo_MPap_T8IuCEeKg-1; Thu, 22 Feb 2024 20:57:15 -0500
X-MC-Unique: Kgp92Mo_MPap_T8IuCEeKg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90D1686311A
	for <blinux-list@gapps.redhat.com>; Fri, 23 Feb 2024 01:57:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8D919492BC8; Fri, 23 Feb 2024 01:57:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53BFE492BC6
	for <blinux-list@redhat.com>; Fri, 23 Feb 2024 01:57:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6564D85A58A
	for <blinux-list@redhat.com>; Fri, 23 Feb 2024 01:57:13 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-211-Mupy7PGWNviL5rkPI3-OyA-1; Thu, 22 Feb 2024 20:57:11 -0500
X-MC-Unique: Mupy7PGWNviL5rkPI3-OyA-1
Date: Fri, 23 Feb 2024 01:56:50 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: not yet done
Message-ID: <028d5f36-b8a9-4000-9aa0-0e6ba60adb7a@protonmail.com>
In-Reply-To: <79c80d6b-ad0a-407f-bedf-ba0651f3615c@gmx.it>
References: <4f392189-5fe5-57fc-2794-2cfd346bfe8c@panix.com> <79c80d6b-ad0a-407f-bedf-ba0651f3615c@gmx.it>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

I think it would actually likely be harder, since modern ciphers like=20
RIJNDAEL are designed in such ways to make their output look like a=20
random data, I once saw an analogy, that if you want to have a random=20
number generator as a programmer, you can use a stream cypher and push=20
zeroes to it, which could yield bytes of a homogenous random=20
distribution. So in other words, the binary path from encrypted text to=20
the original is a set of modifications long like the original data, so=20
in other words, it would be like trying to guess a key big like a file,=20
which is unimaginable using brute force.

This is one of the reasons I'm in such a deep love with mathematics, the=20
way it protects blockchains for example. Human laws and principles,=20
including those regarding finances, are just words, they apply only as=20
long as the authorities are willing to stick with them, which can break=20
any time and even if it does not, various individuals always find ways=20
around to push through malicious intentions.

Blockchain, on the other hand, as long as there are enough people on=20
board, is impenetrable, you can bribe, cheat, seize, deceive, sue,=20
force, intimidate people, institutions, or even countries, but=20
mathematics doesn't care.

Best regards

Rastislav

D=C5=88a 11. 2. 2024 o 14:25 'Kyle' via blinux-list@redhat.com nap=C3=ADsal=
(a):
> I could be wrong, but I believe the reason something like this hasn't
> been and probably cannot be done is because it is possible to patch a
> file to match the checksum, but there are multiple combinations,
> especially on large files, that can produce the same checksum. There is
> also the problem of the infinite number of combinations, one of which
> would have to hit just right to make something that will match. You
> would have to find the exact bytes that will match the entire file, and
> that could take anywhere from an hour to a million years to find the one
> that hits just right. It wouldn't be as tough as breaking strong
> encryption, but it is very difficult for commercial-grade computers. I
> think a quantum computer can do it, but those are not widely available
> in 2024. Even today's AI cannot produce a binary identical file whose
> copy is broken in some way without having the original file for
> comparison. And if you have the original file, you may as well just
> recopy it to replace the broken version.
>
> ~Kyle
>
> --
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

