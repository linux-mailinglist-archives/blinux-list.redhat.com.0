Return-Path: <blinux-list+bncBCCIDSOV5UGBBJG3TW6AMGQECST4PDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 9842FA11B9B
	for <lists+blinux-list@lfdr.de>; Wed, 15 Jan 2025 09:11:18 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4679becb47esf150959171cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 15 Jan 2025 00:11:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736928677; cv=pass;
        d=google.com; s=arc-20240605;
        b=R02NaFLz8AX9/GI7UQHZ36HrRx+Wz2p0Qaa2eaQY0XNedRqJVe0BYItqaHAKGpJXIR
         d6TPcXyvK75XkZYvNMKhcfRT1SOqr1OIYSRZh3SZLWRkDvn+Hxx2At6wczmWwQ5Q+HBk
         u7u2AR1WeCQcMGuyXUIGVASIJmNWyAN7mFglstITqlZQJqbvRcj0ZbztkYqLwg396WGE
         Nil4eB4zOdmvYdWkTvkFHJTOVt7oEzu0JRtOCzHHA2c1+DzJ4PyWmiP29v0RG6QRevRq
         zakhJLPssvcsylB44ts1yMtKXekfNyGB65j1wbr++Tn5BIUErCQtBCoaA0eM5kOPJ/i4
         NiwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :feedback-id:delivered-to;
        bh=ooZACCIsLqyHdM2j1MFYo+iTjDPEv9jp7+nDmjVPOqo=;
        fh=79VYKL9tUN/NIEO+6mX4Be5/bA0ZliqBjg6Jup5lxWM=;
        b=Y4y5ISOYbr/3w1XCdBrK5Z8SoQoywxlfLvXr/sF+kBC4zfCGnMA9CeNYu4pDAyC9qV
         xDFyzQFy6S6/dNY+o5KXmvTutOMrIAy+JtRQ3c0mlKZo81LIFhS19jMlzLEeGB7iziYW
         qkkJhvgv1k5EWyylk7YrnJiUCTyb0jZz5Z4RDiO8h7IzJJvrrp2HtDF9RskYd8/SfnA+
         lESdr7Yl7U4B82G2AMqbBCogKXPzJY3NRXLnzyZ3/KjG2IJ/B5i+UuI1rMcvT85LqUtp
         eU86Wakp6+zgNyaOjoZLZGjUWwRpqLLgi2EYat+rEiT3VHHEzAyrSwq4NMSi+kRwWON9
         LCdA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 202.12.124.148 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736928677; x=1737533477;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ooZACCIsLqyHdM2j1MFYo+iTjDPEv9jp7+nDmjVPOqo=;
        b=wYKc0DHf9/R6iNtX1VzhayrPo/j1+v5tRpguCMS15NL7+Qq8GMo6R+mGTowNmVOsBl
         t/XZprnqrDeCiYoJxlYKb50ahcrDfryMyfbZ761OwCVi0zjbdgL3W0v7If5hfzmIdf/e
         i8Xh/31qK0bYEDcc67wJisHmyntowg8wJZr8gMXuJ71WT8ocCKB+MsPD2tT2vbDhU1Hz
         Rkr21zeIZTti6zIOB0SGwBfOCHgEJgC3ETQ+UkHsdHTX1RkbCYzDZoKxNJoFkw5td9MD
         NbY/lpeT2vBsVKZjM1BR/5JgEPSW9wiUdZjwxu4bqE8tVjoZlsG/k10x71hJYK7v6Npx
         mvUw==
X-Forwarded-Encrypted: i=2; AJvYcCXlEeNZLcNVb6A6lATdsooHDRwRTCe0ZDW8ppOgIBY4TzbBzHk8Z369ZimIXJnushoa64564g==@lfdr.de
X-Gm-Message-State: AOJu0YzFh0FU2+Umx/HgrY2S59Q56zaNCIiD/Dsncu0zLLHHoK1cgP0a
	0xf0gOWi2WpvX5D196SaFGSbzk9+Iv+HvPzFYSPriB/VtunZDqVmO6DsGqGntrk=
X-Google-Smtp-Source: AGHT+IHwtjxT+IWcO9p9Eu6yUsCPUiEQM+0NSGYKXsr2DLU4JoOta3wTuejZziAn+AGyK8FfVlchLw==
X-Received: by 2002:a05:622a:1a06:b0:466:9824:16ef with SMTP id d75a77b69052e-46c70fd2960mr464632811cf.3.1736928676966;
        Wed, 15 Jan 2025 00:11:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:714a:0:b0:467:5ee5:b23 with SMTP id d75a77b69052e-46c7aba14ddls23011201cf.2.-pod-prod-06-us;
 Wed, 15 Jan 2025 00:11:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU87Kj4EAHHFZv63y52FdS44ZZQafxyp8t+SLa1miQ8S/pLZyS/nPyRiklL9kA3hlNHfON7XkUT6ZissQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:4494:b0:7b6:bbe8:7d6e with SMTP id af79cd13be357-7bcd97a4a53mr4814612685a.40.1736928675861;
        Wed, 15 Jan 2025 00:11:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736928675; cv=none;
        d=google.com; s=arc-20240605;
        b=eEs5IPKE+lrCP/nvHAeZcYzk100XKGvIimJNRaQRQZ5jUKV2P3rTyNCGLLWBmndr0r
         h4wv95+DJ0qkq3IuAFci4yOzBtdY4uV8sUjtJZ3BsCeGtuHbZALXoHHv1nv3x6VKePGU
         aE5+2xCwA8Cglo2NU4iNYvnRSY5Fn2GIttDvj1bE75ctvTryeE6t/ePvG3y0TuYAzp0y
         hhr2iTAhpqKdtzSzMjGmnzSZpL6Cy9vMK/sKkGqId/o6cdGo9vw4NQ029MGL38BGQjQR
         vjeVFYf1C0STBS5oYSJEAl8YxRwl0oS3jsMf/aVPE0yzYp5Bcd6sENj/qzCsz8r/ByT7
         rGZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:delivered-to;
        bh=SkSrfhix17bzxK8Ro0ULCxh4F86Uw3nD4sIw/RtRX3Q=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=S8utuILmGVcG8FCMuwqqcqKFnuClgmqdqPPOS1rutB8tlRXtbMH0bEO5qMyUvwyRTm
         wH06cz+LjZBhx2XaAVZ7GbgMo9bi3F7ybsprX4sAtaIGfeK20paHACTcJDlSaVn2A0Ga
         hpLb9ZVFSu1bFjD/N/9xs1LGD4MmSH/0wAaTGAexsdoRQEO2YSdPBGGj41NC80arfbm7
         JPNU1WSsds2qGIEJj9Z5pMYYWnkOf/5wyysvanew6yx70xZA7ZVz2v5sHpS6SGnyOb8R
         O3d47MRo2mK0yrSGcjMIZQ0JkqYpq/MAdhnA0uHkrfZVhSzO1u2TKaKp3CPO3ZxAnFx9
         s9HQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 202.12.124.148 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7bce322b37bsi1578154785a.37.2025.01.15.00.11.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 00:11:15 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 202.12.124.148 as permitted sender) client-ip=202.12.124.148;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-102-wef1jvBlPHOgS3eH1z7prg-1; Wed,
 15 Jan 2025 03:11:14 -0500
X-MC-Unique: wef1jvBlPHOgS3eH1z7prg-1
X-Mimecast-MFC-AGG-ID: wef1jvBlPHOgS3eH1z7prg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 46CCE1956053
	for <blinux-list@gapps.redhat.com>; Wed, 15 Jan 2025 08:11:13 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 40D3D1955BE3; Wed, 15 Jan 2025 08:11:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3E066195608E
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 08:11:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CEFAB1955DD4
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 08:11:12 +0000 (UTC)
Received: from fout-b5-smtp.messagingengine.com
 (fout-b5-smtp.messagingengine.com [202.12.124.148]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-641-UZKv4jyqP6qZFxONi41pAg-1; Wed, 15 Jan 2025 03:11:09 -0500
X-MC-Unique: UZKv4jyqP6qZFxONi41pAg-1
X-Mimecast-MFC-AGG-ID: UZKv4jyqP6qZFxONi41pAg
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 1E4D111400FD
	for <blinux-list@redhat.com>; Wed, 15 Jan 2025 03:03:40 -0500 (EST)
Received: from phl-frontend-01 ([10.202.2.160])
  by phl-compute-01.internal (MEProxy); Wed, 15 Jan 2025 03:03:40 -0500
X-ME-Sender: <xms:22uHZ9fi03pZd1-Cd2Vg9PPqPvopGtobVItVKZvvYOzlhazwRlF8tg>
    <xme:22uHZ7PbLoJHb4ROY4dgBWNeTJ32lpQEEKP-wScFEbQT5YJ-eChIDdz8afneMnhfT
    D4TKS5T9aKpR8Xwzzk>
X-ME-Received: <xmr:22uHZ2i1ukEm2i7CSrmhCypvkzeoR9Bc2jOQPJPb729AXwXl3vTuOzMkuxLL5w70yregGx7ovXAD3PFlYagIPAMKfVja>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudehjedguddufecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhrfhggtggujgesthdtredttddtvdenucfhrhhomheplfhovghlucftohhthhcuoehj
    ohgvlhiisehpohgsohigrdgtohhmqeenucggtffrrghtthgvrhhnpeejudfgjeefjeeghe
    ehuefhledtteejueehudetgfehlefgteetleeuueffffekgeenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjohgvlhiisehpohgsohigrdgtoh
    hmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegs
    lhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:22uHZ28ZPmz2g4fz9MlKufy4_HQH8qtEDOru1yImnBXWV6gJCkiZ4g>
    <xmx:22uHZ5tS4tGm3YEvYu1syrjkn2o8a-dhPfHD0twTwnlTeSYL9NmmFA>
    <xmx:22uHZ1EKX8VnMfp7MEf57p0lWttGbLHUc6YETHxLEtzllWElr5cx4w>
    <xmx:22uHZwO8BaDWDgqI49nPQzzf7MYYoXgTvfYKJsVFgesrndfkFAY7og>
    <xmx:22uHZ6VDLz_SE5XLh5q5mlhGuqSiHyW1s3bAuKcvoE4rFZb_VS-_d3Cp>
Feedback-ID: if0194970:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Wed, 15 Jan 2025 03:03:39 -0500 (EST)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1tXyNF-0001dz-2e
	for blinux-list@redhat.com;
	Tue, 14 Jan 2025 22:03:37 -1000
Date: Tue, 14 Jan 2025 22:03:37 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: speech-dispatcher Before I Do Something Stupid
Message-ID: <20250115080337.fjk25kiajtxwfbpr@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <E1tXPM7-000KS7-0c@wb5agz>
 <45995941-6847-4694-b01e-d67ee7418667@gmx.it>
 <E1tXuBT-0001H0-2A@wb5agz>
MIME-Version: 1.0
In-Reply-To: <E1tXuBT-0001H0-2A@wb5agz>
X-Mimecast-MFC-PROC-ID: KjgogVfPcmuzdjoHmkWoL6gNupuRASTeYl7gPCcVyH0_1736928669
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vNScF0P7gCFY-bqjb4LgmBoseLeGvOgC2mAqhgbMEu4_1736928673
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 202.12.124.148 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hi Martin,

Due to the number of moving parts, I've opted to forgo using
pulseaudio or pipewire on my system. Depending on how
hands-on you are, you may like to try stopping those
audio servers and attempt your experiments in a bare ALSA
environment. 

Speech on linux predates pulseaudio and pipewire. In fact
these sound servers mimic the underlying ALSA devices. 
So you can run speech without pipewire if need be,
for debugging or as a system configuration choice.

The main use case for pulseaudio was providing a centralized
bank of volume controls for all applications playing audio.

Pipewire adds handling the JACK audio connection protocol
use for music production, replacing the function of the JACK
audio daemon. In this case too, you can run JACK, and live
quite comfortably without the extra features of pipewire.

Good luck!

-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

