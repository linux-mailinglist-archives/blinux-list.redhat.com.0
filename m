Return-Path: <blinux-list+bncBDX2LR4P5UIBBIVH3G6AMGQEQDMDNSI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6E9A1CA65
	for <lists+blinux-list@lfdr.de>; Sun, 26 Jan 2025 16:24:21 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46909701869sf82207831cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Jan 2025 07:24:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737905060; cv=pass;
        d=google.com; s=arc-20240605;
        b=K/ZOz1rdWtvSVPTeMCuK6B4ICtdtrhDj8WZJ9jt3RHxmVP4CaJKr0i/u2WqBlKQDw6
         ARpQoS+Qy8bSxTFICxSKdDs5NgJjyBR+cIBmU9RK2IbuO/0c7orzu0S0S5nb77A+ZUrW
         lNcOqRIKQiHNyXlCIWXwBqPxj8k/2pP/iQ3iyO9QOGq4sTYCWgJVsf76e2aZRJe/cwcQ
         Xc+7lBpHg3kvRo4SrPnxwWyoI0Z2X41gmUf2KpVYsro9y867gL+mlPSGdAjnRaFiojwU
         SVt5k+JjcGrI3HU6O2ZbbsgqUGlAqGxoqSgxgFYPKFWtOAX5UcresG+OB0Z34+/DAoT+
         jUUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=DrYLwEHmeIWUtEa4IrNAZIYxmkspaqzJSZ1LB/uaKrE=;
        fh=5ngZhHDnmjBE/4/PBtPe8fCpgCaKJ46GO8udTSUY4dQ=;
        b=YpKhADZSoi+/j4qBo2i733n4LPEePK0SEdgOfRlWx6rGmim/UZnfGFmPp2nJyy7M8K
         wW/4GY9wy1kw4+BuslmDkugKxAw+vYRBhFAab464Sxczovr63a/3IDb9SyVly+zUwrCb
         RdJNTBxzMbNJ1emlGoPe8XPooJan3CczopjLN+FgtYrjOKwWL/ToW/jNaBHy4/srWbeh
         l7bk2iOYTqywtded/P+A2jGIhNVUe0Yb7bcjwALfhzkZ3twSjICelwsiEFdhEPo3YUuF
         ID+3s4NAU37FOKYQg/v4aice9dvuo7EG6200e0aFYxTjoxz6fgYajlNOlvdkAhOI4luW
         ypZQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737905060; x=1738509860;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DrYLwEHmeIWUtEa4IrNAZIYxmkspaqzJSZ1LB/uaKrE=;
        b=FwPieGeYyAP8oOTUHwOOC6LYLmO26SM3fzdV5bwAGh8keuV7HeRnB25IdedFscPvFl
         RC+IgX5/Se/ikz7wCl5MTByxHKR1VMu6m+gWIJLMNNSbn5PuT+aWUU9bWs5OrJqiFGT4
         ZXMnDxfY2LvMWezVBjfHIPEQUaNQHMldfag6BtIlnyeDBzExImyxOYUXQSW9uXI37Rph
         4vmwS+F7b0guyS+333MjOjqmRTheAInjjplR/oNB0ZUlGj64SC+o5Q3Bc5LgNkSZiEvu
         4e7VZkGzLzqQdBS7+SxNRo/nOGf5/9NQ8FvJk8adGZLmLKSY8BUZaivWrfF4pjBc1C8x
         rRWg==
X-Forwarded-Encrypted: i=2; AJvYcCXHLz/JKNiY5+78EdHhJ65GQ/TMI4qzF2YO0EsikxGctm+Ct0qhhY58R81NTQa3W60mMhEnOw==@lfdr.de
X-Gm-Message-State: AOJu0YwzjTL5ZiR/TBiM4N2y4d+JsxwtpDS4hWyaZ8iQSgBY3MwGDrnl
	P8VeBVdVwxsZFN1FW4sXgm7QqtMx4vP5k6T6XpBT7fFWYhoD15Oi/Cd46eciGSQ=
X-Google-Smtp-Source: AGHT+IHJq9Br+5gZGyyu7Xwt2R1PlU1GU7a0/YSPvaiIv7ilLUYzgvYHUbVJo+eaiHQJOkIc8GhLBg==
X-Received: by 2002:a05:622a:145:b0:46c:72a4:35a5 with SMTP id d75a77b69052e-46e12a87a44mr558258361cf.28.1737905059556;
        Sun, 26 Jan 2025 07:24:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7191:0:b0:46b:cf11:757c with SMTP id d75a77b69052e-46e5b37952cls54517901cf.0.-pod-prod-09-us;
 Sun, 26 Jan 2025 07:24:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVZjtMbCveVCDKVllsHZmLtBLlBI7rJ4VxoGZOSZaIezx354NnD9SAz8IoWO00lqBByZYiUV+l7hpPKZA==@gapps.redhat.com
X-Received: by 2002:ac8:7155:0:b0:46e:23ad:a120 with SMTP id d75a77b69052e-46e23ada189mr401266681cf.35.1737905058308;
        Sun, 26 Jan 2025 07:24:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737905058; cv=none;
        d=google.com; s=arc-20240605;
        b=PyMZmQ/rENlTO8kR73WMVz/h7hdWa86y01EVJWJxpj0dRIyIbCKeCC8FQNZuzTVybY
         2D+Y+1vUZom++HgfpQtOy9uB/LDfcVES4jdy+lo6sAZPv8aSv10E9JRfy4XvSPYTxFDN
         5rdRLK66utHxAclRSq7ts+iWr+cq2VYDPgrzVw5ISoZcuzzN7vkCPvCe+QSstbD/FXS/
         P4DjJJ7HtkSwEgF20ou2N5H6btYxhD676fqWLt2VtoU5VGReM9NcGbHsbPZ5G2L7RdQw
         ABGvgIuPwxR/g65cOQV2gUgmEvtKT55X88olRrA+0JxczC2a40ryU57eSkiMh3fCLmlU
         kPog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=k5YZIl6FwwUtZKPk/YpPGGGZMHEG0aTT4FqKedHXuSI=;
        fh=hTgTLZp2OupH1aBmz4Mg7YQTPi5aqOKtead1cXW2e80=;
        b=Knf1cJfReJasYsgXN5+4qoOcptrIXzxkqYvkqzfPM6fMFpi0BW39V6Ywqm2FzWwsko
         Y/m/LOG9NOLPXt+nFhGATQKejiN4soR0hvPQ/2bSVX0AeVeefVnPlHCt7/Vb46mQmb0A
         GZAoU/8fzZblnBti86fuYaepjaRRcpn8K0R6PKYUQeOY4mgcWY55bY4aMzmEBttOsYOl
         KOER8fAu1Xx6R6FwG7lyXedoyF/+D8IRyWmmArnM8xoYcSKltiGDt73wMRwe959zIhpV
         kFPivDwmIzhjEFJKpnFmwei31fxokmYKZ4y+ypuQ7o8mR9rtTnA5uuUQv77A37NkxI/T
         87nQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e20525c416si85975716d6.26.2025.01.26.07.24.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 07:24:18 -0800 (PST)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) client-ip=173.255.224.66;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-N5S7Cf72PfqtR3IY9x5WRA-1; Sun,
 26 Jan 2025 10:24:15 -0500
X-MC-Unique: N5S7Cf72PfqtR3IY9x5WRA-1
X-Mimecast-MFC-AGG-ID: N5S7Cf72PfqtR3IY9x5WRA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D2A0B19560B7
	for <blinux-list@gapps.redhat.com>; Sun, 26 Jan 2025 15:24:14 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CC3BE1956056; Sun, 26 Jan 2025 15:24:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C9953195608E
	for <blinux-list@redhat.com>; Sun, 26 Jan 2025 15:24:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 42862180034D
	for <blinux-list@redhat.com>; Sun, 26 Jan 2025 15:24:14 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [173.255.224.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-280-LDYxsCebO32GnjjMVQl3bw-1; Sun, 26 Jan 2025 10:24:11 -0500
X-MC-Unique: LDYxsCebO32GnjjMVQl3bw-1
X-Mimecast-MFC-AGG-ID: LDYxsCebO32GnjjMVQl3bw
Received: from [192.168.194.128] (unknown [176.230.59.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 1234EA495F2D;
	Sun, 26 Jan 2025 15:24:09 +0000 (UTC)
Date: Sun, 26 Jan 2025 17:24:07 +0200 (IST)
From: Geoff Shang <geoff@QuiteLikely.com>
To: debian-accessibility@lists.debian.org
cc: blinux-list@redhat.com
Subject: Re: debian installing packages suggestion
In-Reply-To: <Z5TJIPr-d7cs-yDM@panix.com>
Message-ID: <db946e2b-c6dc-f8d4-a12a-039f5b9eda1@QuiteLikely.com>
References: <Z5TJIPr-d7cs-yDM@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: mcskkGGUoAR5a9XxGxYMAmYfHIYc1d6VI4Mw02fSKm8_1737905051
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Aw23CoNFjcSLlxIO9TA77a01MSB8iJVOAnEwptwpoR8_1737905054
X-Mimecast-Originator: quitelikely.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 173.255.224.66 as permitted
 sender) smtp.mailfrom=geoff@quitelikely.com
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

On Sat, 25 Jan 2025, Jude DaShiell wrote:

> By way of example, installing the ghc compiler:
> sudo apt install ghc|tee ghc.sug
> answer no to install packages.
> You get ghc.sug on your drive and can then look over the suggested packages to install.
> If a problem happens later since you declined to install one of the suggested packages when you actually do install ghc, you at least have a list you can use to get the necessary packages to install on your drive.

You can always run:

apt show ghc

or

apt-cache show ghc

which will list the suggested packages along with the other package 
information.

If the package is installed, you can also run:

dpkg -s ghc

HTH,
Geoff.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

