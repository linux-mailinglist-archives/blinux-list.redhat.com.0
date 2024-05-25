Return-Path: <blinux-list+bncBCV3N6GOXMCRBIWRZCZAMGQEPEYJNWA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7A78CF0F3
	for <lists+blinux-list@lfdr.de>; Sat, 25 May 2024 20:06:28 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43fb0a1c81esf19847611cf.3
        for <lists+blinux-list@lfdr.de>; Sat, 25 May 2024 11:06:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716660387; cv=pass;
        d=google.com; s=arc-20160816;
        b=gA2pIpblWf21538K2S7Tn5UnPnRlosybnym5VClwH5bReLTdgrFkCCaGCybQAjnnbT
         aDSz3ksT7i0xZE6a3deU+tcBKGygwWnNT2QW7znXFW07hNMWi97MLHKGd2B7JzqcxkD3
         wmyrhm6770I5KaWl9TduupVoYR1ftfCqjLhfBjuql4lJA9kBG+iG0trCjxcGxTu46jkk
         9pwoV2ZUFfPunN2TZTZudhP/kcAMxyxVeiztcwMSvj9m0fjOxm2UVYrXeqz56jBBWTpJ
         1PUtkggnAC7QGG8ta/bs6lSvSBWfi/OPCDojTZ2/iNBBJxPIk19e1H8EiKlPKXP1QOqw
         pwvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :delivered-to;
        bh=PdFrqraLxmlnA1FOdiSJaJ7PFwIrBhnTuXTj+E4c8wU=;
        fh=uRRLsz0J0vc/JUaNXXl91FDLWKU3HMgZOT/3aUC04Yk=;
        b=PhqW8E7P6EUKfP/ZaKV3p8X54+e1IeV9DyY1wN5iZ501vbkv/dSYCw2ZJrEDL1bFYG
         iJ3QqvFQ49BJS0lnC1UI3oXj6dTY5Vo5uBpc6JUX32YmgkTLxhxygbS9JFM5tmVY2w26
         7qmrijifEihERallxH6MBrD2O64E0dRXPBDSodqi3JKAR+2G7+NBS5NHmjF95n9mYk2c
         vs6mpJvfBqU/z0OZikXGu+/UzQjCrfQwH98EtkYdHlRF/CTdae841v+o1k66lwSi44Dj
         IvPB1N+9cxF6uruPPeWf1gnmjcIrd36xugW2/hRn6Cd2qk69PQA/yVFqaUxt+CQLtJx7
         QlEg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716660387; x=1717265187;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:mime-version:user-agent:references:in-reply-to
         :date:to:from:subject:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PdFrqraLxmlnA1FOdiSJaJ7PFwIrBhnTuXTj+E4c8wU=;
        b=QZUMf57cWHH6JfAdOgD1tRDKYseQtlIiNSbeUtI6mVRWoU+doeD8RpO1ASwFDxqDcB
         nNb0tI6qjE9AQRFtz9cQy9s7ll1oI0dCFQPIlnDP75pwrFHoE1o9rJ51X641tSiaU6cb
         mPs1BoD9uoywewzYYVtWYazZcipCjsMmTo0HQda2V3Wwr1cNdD7Wdw7EupEehY6PwwbK
         OXkV/xPYwg53EGu7EPlbfQN6nHcvuGj7ZSE8iphW0HQS5oSVE0nYtE1JAjloYvcCk6QQ
         /aTQ2INrUWfxHUFCa2SQHBYTe3KkW5MrjD8hUGtI23B7FXNYeY1n6IMrBurWOe2QKFm5
         9D6A==
X-Forwarded-Encrypted: i=2; AJvYcCWIc4NqDWn+M6VIpGdmjEUglrEHFzQiiYdkxKYhsVb7lG3xtWaIejtbKlHmW8JZ/Zpt+9/PcYxVNiPI3MyfRw3HJ4xybL0PEHXO
X-Gm-Message-State: AOJu0YwMDLMQKuNElWJZ+bQXl4IDmIiGrzn+r5Xe0XLnNKNtlEPYPWPB
	DTbtKAQrRW7NaHsHzRWDl50aACDuNUTW9senJPEA6gAzyM3OPytqXKpWf7tD80I=
X-Google-Smtp-Source: AGHT+IElNSS5/7nIPTNq7xeMmN+F4HAiOGeFybar1oVuXg6ldTuHRnWH+17o4Dd7Q61EsoRhrPqxOg==
X-Received: by 2002:ac8:58d0:0:b0:43d:f531:8b4e with SMTP id d75a77b69052e-43fb0e04a48mr62889181cf.34.1716660387081;
        Sat, 25 May 2024 11:06:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d43:0:b0:43a:d446:cd1e with SMTP id d75a77b69052e-43faf027d98ls16417151cf.2.-pod-prod-01-us;
 Sat, 25 May 2024 11:06:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUjR7wimYvYVzdimgz0iInTIC2tReAV1MYS6RkmuFmSDptB/IFebk3r6EK1AagSQILb9BKCjPMuqdj8cIxlOUg7/1JiMDoU6Tt5fAww
X-Received: by 2002:a05:622a:40f:b0:43a:daca:f300 with SMTP id d75a77b69052e-43fb0de13dfmr52461681cf.24.1716660386087;
        Sat, 25 May 2024 11:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716660386; cv=none;
        d=google.com; s=arc-20160816;
        b=ZRx4SBSNksKDNE4jJ5swy/nVrL+ds8N+jzrW5Q65onrZaw+O4XDKe09m6YDgbmUvBl
         Dxmo1Yhd8fVwYunNqFJ7nyF0quelnz+9VMnOS1fsb3RpRNft8Yih8H4uKt8yF5fF6ZTz
         y18NQrw/U5svhTO7xro+hh5bnvzsnZUtgrWKjUIm/PleWIvx+pf+YJrCwJ4A7+ACExRS
         42qb6vYb6AIoBqeuT/32z969akhJNq3Rna2Wvt6FAgcbP32OG/idZ+xeU6T4czGm4qPx
         vMxkyBAZbp4HvnUJpgFGfYJhj5VXUbeAMQomf7OWFpYznyDQ1gneUSIlMU61mLt3at1v
         NK6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:mime-version:user-agent
         :references:in-reply-to:date:to:from:subject:message-id:delivered-to;
        bh=44R1k5I17iKFlVzUe712g7X/na54/cU6h/1D0BNwCgE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HHqesLyTWaNp9qdCnm/LM6RVJhaeLlYPd9f2W2vxvXVWbULqS97LOmr1ypoH7IBDnd
         Qtl+6ICKUZAaqIxlc7wtdT/yQ/BC148R+nV5NeK7Upoj3DTsDgeMsPqOCORv74Qdjpux
         719lyKyw1XnKl0ZWZQmj2wyNAbeKMifjSBucLztmLdAKGVQAiYRKqo7Q+HOjINDjZRQj
         EFUJiVz5+7ReAauwM2EDA+ivhVoFWV2Kn41UH0QvtDZEUAwf0T7naoO3aRsB59f9Y5j9
         SDoE64Wl61Gj0aGwADwO+opUv96Nbmj9ncdH3BfmzT3C18wyqnOwcqBuoomzPFOJI8/L
         oYiw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-43fb18b3d7fsi51158501cf.474.2024.05.25.11.06.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 11:06:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-21-vE5SUsyXPw2-2HD7UpFx1A-1; Sat, 25 May 2024 14:06:24 -0400
X-MC-Unique: vE5SUsyXPw2-2HD7UpFx1A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A81485A58C
	for <blinux-list@gapps.redhat.com>; Sat, 25 May 2024 18:06:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4724E40C6DAF; Sat, 25 May 2024 18:06:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E49D40C6EB7
	for <blinux-list@redhat.com>; Sat, 25 May 2024 18:06:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8E14800994
	for <blinux-list@redhat.com>; Sat, 25 May 2024 18:06:23 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-553-3tTikuFwMM2djyBgMhUCfg-1; Sat,
 25 May 2024 14:06:21 -0400
X-MC-Unique: 3tTikuFwMM2djyBgMhUCfg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from fedora.lan ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MIx3C-1rv2p72M4A-00KSmf for
 <blinux-list@redhat.com>; Sat, 25 May 2024 20:06:19 +0200
Message-ID: <c4128c0d1fd8cb70e053c26948b8c86257ab0534.camel@gmx.it>
Subject: Re: RHVoice in Fedora 40
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sat, 25 May 2024 14:06:17 -0400
In-Reply-To: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
References: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40)
MIME-Version: 1.0
X-Provags-ID: V03:K1:8NFPRKtGiZyPgI8OhorXMR4H2NOFl+pUhIaGIXDGVrkgaDu41Ni
 1bxiCxdLblUvZHmRFwhmZNN37M6ekdoBO1CUlKiadMdiXSaLir6HYknROixHwKT6Oq58Onq
 DzAWet3AGaI82tfmaRIriPe7RdjO5a6Bjr5+WRmmHx/S8OjNhPOReLWVZEY0p0pztxKboRA
 FEoPPBUN1IFKbjAcVul/Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:N6SeYrBP9I8=;Al82hbVxCAZE0d/naD2UH3Tg0zV
 j7bizkgzu1607mBRXpSg4Sop2Goihb4SbcK7SwxSc30vHzFAXIB6IWy+UKT5P2T9Egz88ihP1
 IdVsHGnMQaYz0XfeD8xKEuBmuf2YiXhMwCiyQu3M4e7e+/RAVkJbMWRpn12brGebKQkNffwC3
 Mt6yoquy3B5ky8mA1j85K6PMwju2ROjjP7zcL65CTdkSz1K8v0Y9gKEzdYpvk1vo8bghgXzGE
 tFe4pMimKVfeaTUf7HDuQvoGPKizoLXZsqF9pRBgMHe1pxHPysmrSoIF7+PzmmB3MO6PRVV2k
 oJkO+3XviQGUZzm84NmA8dE/tgMBJ7gP2M9cNxfrRbQo9x1L6WXudRukfhGd4Fb05cIrWH9VM
 uZoS+cWq/f6ZzzR3nK+yIqo/W30uCF4NeK9wpOKSjxbIbiqqiNaqdd5JJYUKgdaohgzwmPCe4
 oBJeXl/p+Uxl8sBVGACDsgcil3zjo9CnMZjccat7MW2Dmb/X8EFjQxrUBLbwuWwIYoqb4DNA4
 PcHUUQOrU2J9wVljTaO3Xs6XSGOF9Gf1zpw1tafRsMvn/HmLQ70m0wVh6X68MIl6lDxV61HSz
 0j+phkjRHT8Y72INWdd2ONIUeQWu6ekDUsaKSk7YmtGCGZSZAMrCYFzlp4Ohr4Rj1+8zlbWC+
 0+aWmoJjqmoqhq1pxqqEcH5VyFgC47SdXu7hjJpytTaeh3NP9dozqYB/Sdofjj0zaqO/gz298
 yQhIx1DnhMCcUYFIYt5XGX7EmY54EnTfE0PMnGM1olkLxYfzIccLAxFAxb5YViPqCCtRKvPVG
 P9RmXilrl3VaDzAOMqCnRIlotZ+3oo9cIrHWjwftsTurNa3yfvA5jU8kaFTJXCrR+L
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Type: text/plain; charset="UTF-8"
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

How did you install RHVoice? Did you try to use the copr that says it has
RHVoice, or did you use the README from the Github repository? Did you find an
rpm package or a set of packages for it? I am aware that a copr exists, but last
I knew, it was broken or incomplete since I think 36 or 37. I have been meaning
to make my own for some time, but I want only the free libre voices and
something went wrong with my spec file. I unfortunately never got back around to
getting that rpm set working. I'll probably take a fresh look at this in the
coming week, as I'm a bit rusty when it comes to rpm packaging, although RHVoice
is something that I do miss having packaged in Fedora. For now, the README is
probably your best bet, unless this is what you tried that failed. Don't forget
sudo make install
so that everything gets where it needs to be. If this is what you tried that
fails to work as expected, I've pretty much run out of ideas, but I will be
looking at installing it today to see what I can figure out.
~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

