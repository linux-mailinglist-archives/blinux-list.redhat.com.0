Return-Path: <blinux-list+bncBDM4LSNO5MHBBEOWSPBQMGQE6ZX2TTY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E97AF0DA8
	for <lists+blinux-list@lfdr.de>; Wed,  2 Jul 2025 10:17:24 +0200 (CEST)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-237f8d64263sf55859395ad.1
        for <lists+blinux-list@lfdr.de>; Wed, 02 Jul 2025 01:17:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751444243; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ku+vbLtXzC79IGOrHZy3rDAiKup2vnx6pQpZORjlnfCLNSa7uL1y2hMcuNk4E7VdKd
         sbBD5M2svFzBCqUMEJTmxeotQ7mZXJ4rKtbwGei6UWYMaf7W2/2ZSEOhgdlEDEwxa78k
         ev/zhrlwym9QzIIbfSSTZwiqqxCB35m7kBpsXkMoqLoLpFlgzx139vhhqkodj/bg6wXh
         0tNBGdUZz4n752931SZBDvLyZuRWayDlO79cyQV5EMU9rNL1a1Bu/4qcLJsGBk1Okl8J
         YRMC6BkYX2ncfy2+8aZH4Z4wbFYOE6dGrV4a/qHLyWrWTXCTEqhRpkgjSOtbFuqDbgMK
         t3ig==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=qdk5XL1rD5LWS5qSYIjmOoPXvin1h0hxFYAuYmQ0TxY=;
        fh=3e/fCPLLfsf0KRRumciC5S65XKANJ/0ayacFn59KPKk=;
        b=ekfLXTQ9Q0xAb+uRbTrc+fCkrtad0r+HTjJA/0VA+bXzINjAhMs4Bj06j54MRBtNxC
         EhVTxoxGt6LvZ4BBCfoU/16Nulpev+I2cJe0xq1eWieamLzXFon63PkP/W3mwI3p0C8S
         HNZ0TE/Ap+4ui11T2PTCxXV1OeDLu8X9mZu/zhpcDr8ZUUFW+P0U8hqQx2NTLe3iomV7
         yjkmAMic5JgNgYaJpY6Eiy5IalrVJTkgvBhDltzPuNQpfn6K7ffHUQofjclW7E4Jq818
         tWT3mDA0xzjf16+fZQBJV3/8ttckw45mwOrSHAOGefQwGLsAGyyJFXSO+SE4+LxL/PPp
         rywQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=KrmaoKDU;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751444242; x=1752049042;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdk5XL1rD5LWS5qSYIjmOoPXvin1h0hxFYAuYmQ0TxY=;
        b=oJ+sJJXBvrZ/u/Cv817TuNoIcK179fgf10vTUg37aNlmCqOtLqQcRRTuHGF228BChB
         6O5FYB38zFNXcZWSmkMTGFLQ4t67oM/0hBfWLDxIFIjc4qRksdVU7+3cE67+E6A10a5t
         /9PiyYkAMW0aIu+HuroBQt2iDP0cFl3hT3cWA27H6uOZqVpodlAPh8o993NqAdXjYhc6
         I4aCAkd69LGm01LyyI+xuehrhL2h96G6ixY1mbkXBhwA14/P0AK0eghGWgkkcyo0xH/h
         G3y6X9pbGJgvLJUsx6PBpNkVAkyGV7LxH8GXO01/MAWyIiXYUQE5IOhBYkLSoQ8f2r+k
         U4VQ==
X-Forwarded-Encrypted: i=3; AJvYcCU9RylYq9hjOCznr55CqI8XHJeBIS546VxsYJUDKNEYTWIh4mdMbj/RGxOM6YHwDRHV1lmntg==@lfdr.de
X-Gm-Message-State: AOJu0YyBZcGYZMKUCBmLQ3tTxZCA+GRz5pTaxSN53yfs2B5rVhHRXQEa
	gtJ33hXq484FL6FEEVBPL64gjie3Ge7ZOyGda/B2wPxfpMpPZzrIihBaKS5NVtGxzC0=
X-Google-Smtp-Source: AGHT+IGTZfRePJ9F0w680MyGFPlMxCsyqV7s6dCp6gb2+6TJKlb2W4oxCOCJXYA5C0fltboxZp0H+Q==
X-Received: by 2002:a17:903:1b67:b0:236:15b7:62e4 with SMTP id d9443c01a7336-23c6e511dc5mr37944575ad.38.1751444242265;
        Wed, 02 Jul 2025 01:17:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZeCj3FUpR2kJCbiXeGzCpMBP7b7AoycD6coKH2LPz0ydw==
Received: by 2002:a17:903:22d1:b0:234:b428:baa0 with SMTP id
 d9443c01a7336-23b358815dfls19962125ad.2.-pod-prod-01-us; Wed, 02 Jul 2025
 01:17:20 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCURCjGmiBGZVuBymnuBXVhTI9EAseG9vBo/LLPjSOcuVAaRn9tDk5AnMV3RqvCO+D0FoDbbzsME5QyVtQ==@gapps.redhat.com
X-Received: by 2002:a17:902:d4ca:b0:235:f51f:c9e4 with SMTP id d9443c01a7336-23c6e46d380mr40557005ad.12.1751444240511;
        Wed, 02 Jul 2025 01:17:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751444240; cv=pass;
        d=google.com; s=arc-20240605;
        b=LHLbyhMWuVd12Ls/GzXboQIVcXAhKKscluQozmkzK5+bZGfHGHLZ5Nmix7mQLLyzRu
         a+KOffA/KPkzGabiE9LV39hPZ65Nxx9/oXag6QMIMhq4VzGucLMcNLu9rSipfIjYRLHr
         iIRWtRFoMpdcbGHXGBwwNO255lrkRQLgFCtBqZoaJVkTsm29xE9HNWjRvvz2zt+PwYX+
         xJfXjz6aHzv74HutsuDVEOfrM3mWSWTcZ7n0AspxpDC4w0zqrN68PCZxtVOgJZ0Klgf2
         hNR+cET5t5dV6VA+35Pp/Pz4cEdOnCEI7Q55UL2ueGwpn7DWQXJ4xOWAqHAUuBe8BPvo
         fbug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=etjkWHJGYx3tqWFFGGSpfiEXyQnRbEmONegu0fh8Bcs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=gSVqInFbVUu5blJorv9ux3kI4ZjkEphE6wf3cUsKHVnSIeFXmvK6GmRRLgyIP5rrpP
         zF++Y1m6Hr1haxGYQZk3jAr1zaSjtPjEAvBZJh+0No620eslrRWE6A2xsYypIdI4vQE5
         CwgO75Fo+PQmtbSeM0QD+JGex7YzJf824JMthTUEWCYsE4nLZF0/EyXoxz7ycs6EYo18
         pR9BG26I9FVytIo0wHmIKtQq7L2TTLdjMKVO+xxvhYzPg67XvJoOC4P4vHSRoDUaw/qj
         HGEFH5FuGekGQLF4rfx75a7RvlaM6pfW9u5aLsSgRhb1ozW8F/uuBG0hS6Y5nzBwtzwi
         6UEQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=KrmaoKDU;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 41be03b00d2f7-b34e324219asi15479634a12.496.2025.07.02.01.17.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 01:17:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-278-gezbRU1-NzGSEjuQbkmwLg-1; Wed,
 02 Jul 2025 04:17:18 -0400
X-MC-Unique: gezbRU1-NzGSEjuQbkmwLg-1
X-Mimecast-MFC-AGG-ID: gezbRU1-NzGSEjuQbkmwLg_1751444237
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2B4501956061
	for <blinux-list@gapps.redhat.com>; Wed,  2 Jul 2025 08:17:17 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0C3B819560B4; Wed,  2 Jul 2025 08:17:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0945119560B2
	for <blinux-list@redhat.com>; Wed,  2 Jul 2025 08:17:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71E1018011DF
	for <blinux-list@redhat.com>; Wed,  2 Jul 2025 08:17:16 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751444235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=etjkWHJGYx3tqWFFGGSpfiEXyQnRbEmONegu0fh8Bcs=;
	b=Bwl9frBL9Vkm98U+ZVT/m+oQaxHnzSbuaCpMsrgLhyIk5Ssq8faH+tbZhRrQmb8op/nog6
	Nyk+foC2/4qlvzCaor6HAMevfz82nhdWSy1nKPWeCjyQP20IZHaynmH/pvWN0+4gTsH6ES
	Lmcw2+kSk6d5MQOXqIPVXDCWlailUqMC6AovJ1pkQ6ay0y3PZl5djx4uTOomek1nxInzMH
	Iao4lUhdOZ9t7dbkw0rusVK98tC6PPDOoGxQ9zy6ynLnyXXcAlG5cPex358KpcwH7pY+az
	DAueAaod7DG1ggo7tDy3eJ3X3GhbSTERgQ1BleyIJOdaz1wWPLBi/mju1+3x5Q==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751444235; a=rsa-sha256;
	cv=none;
	b=YMmd+0931et89iSM+LlYjmw6b1NzwWIh1CQVIhBK78QluYvKNgYsGv2sbQA/HHV8OEXUUu
	SmRYDAVx0/dgXXOwtWL3FiM1WPA0jUba6lfAA8JJ5pOuY7gsB+nIahAN60bZzqxUH2eQWX
	8popFe5ptVqg7eLN31SqCrytbAFhkxuKxqHKyZBE7jb5l4ufqbjeumwVgYqfSM8vCVPfup
	p8kb2K3HZYtbWus2lGVetMSaMt4d/fGuC6LruJDtC+8Dl0pLRQJOmOoBwaVhgo53fu+F9R
	aLWuK2IjycrUgenAoOz4L9b8KFGPbnQD0MpYhbaKhuWr4rlQ2tmJ2QDZY7vnrQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mail.com header.s=s1089575 header.b=KrmaoKDU;
	dmarc=pass (policy=quarantine) header.from=mail.com;
	spf=pass (relay.mimecast.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from mout.mail.com (mout.mail.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-607-4jPbmJz7PGWL53XFctecsg-1; Wed,
 02 Jul 2025 04:17:13 -0400
X-MC-Unique: 4jPbmJz7PGWL53XFctecsg-1
X-Mimecast-MFC-AGG-ID: 4jPbmJz7PGWL53XFctecsg_1751444232
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0M87Ox-1usxsd1BFB-00qxv6
 for <blinux-list@redhat.com>; Wed, 02 Jul 2025 10:17:10 +0200
Message-ID: <1dceb3fa-aec9-48cd-8dd2-deff957aca85@mail.com>
Date: Wed, 2 Jul 2025 10:17:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
To: blinux-list@redhat.com
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
X-Provags-ID: V03:K1:x5zB8QuDnpOXa2F40hPL5mKTst3O1u6eCw9Iha8YtB+VGZzd8dc
 EHUBqH0CI4AS3udFzP1x6D3iWRabMaMf0VB/Z8G/Qp1212v3LcqyUYk3+ac/g+xe4T2QK2Z
 aeHb8U9Sd5zgAL8jAEUin7bM2AAlUhauc0hvkeyTxqbQonq3OYXDRx87TyorTTWYpwBkzMV
 B7GE7MrC8hV9+VQQjwiIg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Ji9mcmS5QHw=;ZWdjC8c+GaTgN8aIdJoDiS2/rn3
 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
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MzjbrVzLZ7ILSXITnIiBl1qCfjryg4s-FW3uNAB-3VQ_1751444232
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@mail.com header.s=s1089575 header.b=KrmaoKDU;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com
 dmarc=pass fromdomain=mail.com);       spf=pass (google.com: domain of
 johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 7/2/25 00:12, Abdullah Zubair wrote:
> That brings me to my main reason for reaching out.
> I=E2=80=99d love some guidance, mentorship, or a roadmap on how to start =
this=20
> transition. Specifically:
>=20
>  =C2=A0* What should I learn first? Are there any key tutorials or
>  =C2=A0=C2=A0 beginner-friendly resources?

For a few months, I would suggest a multiboot or using a linux VM to=20
test everything out.

>  =C2=A0* How do you handle common tasks like file management, software
>  =C2=A0=C2=A0 installation, and system settings with a screen reader?

If you are comfortable using the CLI, one possibility would be to use a=20
DE only for web browsing and e-mail.

Linux is simply a server with a desktop environment ontop of it!

>  =C2=A0* Any must-know keyboard shortcuts or accessibility hacks?
>=20

You know the CLI!

--=20
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

