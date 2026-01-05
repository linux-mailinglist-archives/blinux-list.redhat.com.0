Return-Path: <blinux-list+bncBCRJ7NN7ZUGRBDED5XFAMGQEWDC35MY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 7680DCF1CE6
	for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 05:43:58 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-8b24383b680sf4841120985a.0
        for <lists+blinux-list@lfdr.de>; Sun, 04 Jan 2026 20:43:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767588237; cv=pass;
        d=google.com; s=arc-20240605;
        b=JGIQVgrt8m2GR2p++gLhcD+tLE5s0j2piVpezML6Tl+TGJCS6Trbiv7Mb3eAeCFZZb
         tKQMi6bF51tu3yQX1yokbKSDaBo8JklcC3JhCUts3+hi6kEa9IkX62F+1HmEuLkla+0p
         YESxYLQaNZ5FNYAjcwGyzy+jcespi/fvPvjnCfHb8zVMZGXGYuFHiE0YD6+f2hJWgsCS
         WKy4rkHMzYYafrcAJ/5KRvkTTsG4xahexXlQbhsa5pRwC1QixdQSzSDHEYQkMS8fnS00
         MpV6U1Wke9r4Gl1KcPQbU8THcYxqZTJ1KsyuPKh5di5nPWkuWMNTSyMA2G8fcYVfGQJl
         wtaA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:from:message-id:date:references
         :in-reply-to:subject:to:delivered-to:mime-version:dkim-signature;
        bh=ZkX7pUrzg7335dreCvJd4cBlmK7p9tcFV3fWLiC/z6M=;
        fh=6/IhErxGkbfi2cEVFXoXbfGBVh1uTSE4TM10eu/DwSo=;
        b=gJCKHJFeTR3V4GGUVqCDjd4OpHz0bWMt+Qd79d4KE66ItM2ZasBerQ5Tr8j/FE6Fqg
         KHYuI4P39PJ0hLfSr8kXJlcCh4sMsZeuW0KvFMO54196rZt9mVE8Xf00qJZxIr0xn+cl
         CdV3v43euLXnrXF2No9n9TnlEVc/pSQDuhTMl1H02f0ogNfRasfAvJLIFKZTjl2U6YJv
         0aF1HKAWXeiH2gu8shKMbPttLdHFKfkYegL5omwNcgNqIf+0kmAZRdrIOYv2UwttA/2Z
         ZNIwg6N/H+zE9mCkpl5a1GNJPDVPGqgdkgCbE83grAXFdg1IWUqbvdg6ojPi3EuKdzTO
         vObQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=LyoQvDsC;
       arc=pass (i=1 spf=pass spfdomain=mailbox.org dkim=pass dkdomain=mailbox.org dmarc=pass fromdomain=mailbox.org);
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=locust@mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767588237; x=1768193037; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:from:message-id:date:references:in-reply-to
         :subject:to:delivered-to:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZkX7pUrzg7335dreCvJd4cBlmK7p9tcFV3fWLiC/z6M=;
        b=sBn9Y+0q9f1Mcbpo+s22QwMs4luLXHoV4AiIrihHDKmGPKI+Xx34dAj+/cV+MTIdvK
         dKsz94Z9VuEGIL+e/+rNpzgfRwEOPkxi70AMEnrvfF2AdDk5e6Po4jGbua7efHOGfOr8
         5WZTqsq3P2Ez5yyfgt9aq5OekUAU9onJHLhiTEpqbWAf/CMIYlruhc6fnK1oaJj5WFXZ
         3MzgDPy+3m2li6ySuavGEs7irrWpIQZC4zr9jTJN28wS0mZdlWTwE8ICgbhZazMB/VUM
         KWVz/xzK+PnSUVkdxZ0yVe+5g+2SMXA2YLtsSdbAsy+c370iRTkkJxZuu5COaAdBoHp7
         RLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767588237; x=1768193037;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:from:message-id
         :date:references:in-reply-to:subject:to:delivered-to:x-beenthere
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZkX7pUrzg7335dreCvJd4cBlmK7p9tcFV3fWLiC/z6M=;
        b=fMK6Mc0Nmvk3xiI0JTvOg6+udLu9FHS26zl4nZZn+2riaJfn81XbzIldEC0h+EtRd0
         ypk+w5wGyhJojgitRDzGsBuMaS1TdZ0qSPNIkNDRmVfXWSmNtiaOWJteAXmU5jMd/4RJ
         lreudXPnMcpQDacYCFK3CVL5Nq+X5Mr7S1r8c4O6RxbINqF58LJsjmDpztU5UvQFx0va
         SkQ/tzV7OhMYXf8g6qAbbFTR8ZWUQel4pyYnCxAWCYAXPZaq80Vuzh5x/kroyQnaY8rc
         4IRbyPcsWg0ffOfzf54dINGV/gYiTC63rNnUwR7AbH8n5aqlAf4t2NUGYzgIUATaseJI
         yDqQ==
X-Forwarded-Encrypted: i=3; AJvYcCU9qqXznLRFd/1Fq1/h1TKipE602CPly6JqZcehhQLKpatkU35gb8X19WHJqhVqooqmrSoX4w==@lfdr.de
X-Gm-Message-State: AOJu0Yy1DDo1jVlfoAVa6Wk8k/kBH6mY3/AzlT4XP1253B4fuXOWSwM7
	ccHZRMrKOUTee9Ko6SmCyLrId0ApNoe4qxkuvcHJT4ibcgN7enFbEmdRoQvs4LT0Awk=
X-Google-Smtp-Source: AGHT+IHIXilaaS46sHdgxLNrlfluDRAqPi0k+6BLYcU1/87neIWkxIoTa5z/caRb7kBdz0m6aKiDlg==
X-Received: by 2002:a05:622a:1882:b0:4ee:219e:e66 with SMTP id d75a77b69052e-4f4abdd2cc7mr745891641cf.83.1767588236702;
        Sun, 04 Jan 2026 20:43:56 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com; h="AWVwgWbXvN1pU+qjGLrbUEPadQL8ET8qxVpDU22WnqdDJpnbqw=="
Received: by 2002:a05:622a:1654:b0:4ed:7903:e889 with SMTP id
 d75a77b69052e-4f1ced3fb5els153496311cf.1.-pod-prod-06-us; Sun, 04 Jan 2026
 20:43:55 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCVzq5Va01pRKaowDiAMi4iu6mXzHZwqP7Ui+2RSrZaM0idMWW/Z5/NRi16TbW4+FGQFrUxOoLwdYQBtdQ==@gapps.redhat.com
X-Received: by 2002:ac8:5ccf:0:b0:4ee:28b8:f110 with SMTP id d75a77b69052e-4f4abceb823mr783685701cf.29.1767588235368;
        Sun, 04 Jan 2026 20:43:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767588235; cv=pass;
        d=google.com; s=arc-20240605;
        b=DyD1UAyhRNWPvJdS/yoZGhkqjh7ATxrpv/kV/LPDoEZPUHbUJaOuEm+gD2DSk6fnpd
         eVyOV9UPO/6luyFaGeRtbA+0/Cdv+T722KGsJ/IyokPlZi94TtbES7q27Wag+Uj5+9dB
         5N5rx9ciL5hVD4HTH/9n3wBA97FwRHmJ+/+dKurfe+zgntV4ZLw69y3HPTfqgyplZdBd
         KU0G6i9gT4Niv8orgz8oobzWn8gMN4dYnwBaB/TQHH0bDTkjnX3OUefdx0Dlwev+jFxD
         5sHRz3uIhuOMWTZiKZu2tm1jGIJG4yR1LmFUOCpqaJyVZzcaCcAFN0vs4NnWjXVWrJPa
         PaMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=from:message-id:date:references:in-reply-to:subject:to
         :dkim-signature:delivered-to;
        bh=CCBSouzjfTFohyUqBgBNaZJ0AzUC3Hmwpd3ECoYx1Ss=;
        fh=2vowJKpt/CK0x3+Qs2sG3OTLWbprDUrpq2j4uVc/pVM=;
        b=TbQgTtU5s10ogmrBuW8BEJBg0jbjVnH36q9Lffi8vS2q38kEjkw/l3602+VVz/Ym4G
         Qx5x/5ddhNcon8+XGn+qnVllNt5WqZsUdCeDSheuHCUDgylPXZtshYRtZXzhePFhdPLb
         oP0AdCqsJ9BfmjLTY14taHjmv38viMbAd8QZHAI4RT+z26NLgmV/3OHlNACHG4b1TJEE
         /xirsIysqaghOYwWaCgGTSQzmlqky0p3awtCBgfRO3HU4epG0fv+CBRgXLnXyCXvX80j
         HPqZ9aN8SXC7qsJKAKgHnMeGluvbfpqltuYo4WzxjM5J9uijeWfVg8izJHInv7uG+XSM
         rHxQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=LyoQvDsC;
       arc=pass (i=1 spf=pass spfdomain=mailbox.org dkim=pass dkdomain=mailbox.org dmarc=pass fromdomain=mailbox.org);
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4f4ac55b868si484126001cf.125.2026.01.04.20.43.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jan 2026 20:43:55 -0800 (PST)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.151 as permitted sender) client-ip=80.241.56.151;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-539-B8jvQwK7PReGd1N2QUzjYQ-1; Sun,
 04 Jan 2026 23:43:53 -0500
X-MC-Unique: B8jvQwK7PReGd1N2QUzjYQ-1
X-Mimecast-MFC-AGG-ID: B8jvQwK7PReGd1N2QUzjYQ_1767588233
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 618591800342
	for <blinux-list@gapps.redhat.com>; Mon,  5 Jan 2026 04:43:51 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5C9F030001A8; Mon,  5 Jan 2026 04:43:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 59C3B30001A7
	for <blinux-list@redhat.com>; Mon,  5 Jan 2026 04:43:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EC2B01800365
	for <blinux-list@redhat.com>; Mon,  5 Jan 2026 04:43:50 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767588230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:in-reply-to:in-reply-to:
	 references:references:dkim-signature;
	bh=CCBSouzjfTFohyUqBgBNaZJ0AzUC3Hmwpd3ECoYx1Ss=;
	b=TQO2itWuXWhnxS4gXhSyO0F40DJx7QiNrtkmCc28oaCFjw01mUh6RaIxeC6EzL87RRZXyj
	OA61PC3qInOcd1xVQ58QNQSUM9UNjstWFSGWCvWqgz7wyUZ8u7EPGvcCzbhi21Oqqi4cHz
	VUfzjEf+VzswS0kT5SN1n+x7UZrrjFcdCSOZDj8jWpRZyPxMaIhs4NB3oWHfJBcUVO5v5z
	sXPu+C+WvmW756A7BE3fj+DtD2H35bFRV5UrUR4yUYIqjPTA143n2d+V22+LlDiy7OsKJX
	HGaGTsgrb4ogoTsryc2l1pq0rHjYnJH1UrV+OXQCFLYPKK2FmpXN0ddX8I4VCQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767588230; a=rsa-sha256;
	cv=none;
	b=rXYpWNQxQr3MIbmILidqgiiy+VHoWPTISiwXz97bLb5Ck9jEzFzd+2q0Ys21txUKJylNr2
	R6AK5NHcl4uEJHCamPBmIz93MaNR3tQHTU+lq1dStqqfb+kLDdwvzJiC0UHWPp09cmB/48
	cyNzhKvoPNdrLknIMmgsaIvvhajeX72+gqM+aiM3UuB2EAr+E1MnK5TbjFr3LkmMZ3h4o6
	L10fKV6TP47X+hQKPQ9ctkuvdGnrNQKT1OpiqV/336eCqExysfS6FlIoR5JI/BnFvUTehQ
	FMt2kyY4pHh5brRsAC1R4Bz35xP4F8cb1saVPqmDXqbRtailc6CAAYfrk17aEA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=LyoQvDsC;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (relay.mimecast.com: domain of locust@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org
 [80.241.56.151]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-321-3_0XjHi4ODuhuQoRUfeXag-1; Sun, 04 Jan 2026 23:43:48 -0500
X-MC-Unique: 3_0XjHi4ODuhuQoRUfeXag-1
X-Mimecast-MFC-AGG-ID: 3_0XjHi4ODuhuQoRUfeXag_1767588226
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dl1sD2M5bz9tSn;
	Mon,  5 Jan 2026 05:43:44 +0100 (CET)
To: "rodney jackson" <jackson.rodney.1970@gmail.com>,"Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: vojtux_43
In-Reply-To: Your message of Sun, 4 Jan 2026 17:01:21 -0600
	<0188d089-4f53-4d9c-a1c7-dd70183a6b50@gmail.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
 <495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com> <E1vbeKX-000sRo-2r@lapcust> <0188d089-4f53-4d9c-a1c7-dd70183a6b50@gmail.com>
Date: Mon,  5 Jan 2026 05:43:41 +0100
Message-Id: <E1vccRR-0000p5-2t@lapcust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
X-MBO-RS-ID: 3343cc1bcd58ae34e3b
X-MBO-RS-META: nwji13dws7z51pjb4iwo6yfjh9qc8ihi
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Bf1mzHff10YS5YwngyISrcmbhKQokLo91Jo_Yt9AaA8_1767588226
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
content-type: text/plain; charset="UTF-8"; x-default=true
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=LyoQvDsC;       arc=pass
 (i=1 spf=pass spfdomain=mailbox.org dkim=pass dkdomain=mailbox.org dmarc=pass
 fromdomain=mailbox.org);       spf=pass (google.com: domain of
 locust@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Original-From: Artur Rutkowski <locust@mailbox.org>
Reply-To: Artur Rutkowski <locust@mailbox.org>
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

Hi Rodney,

I am supprised that changing display manager affects the volume but it is good to know. Thank you for info.

--
Artur Rutkowski

https://www.youtube.com/watch?v=GxbstiD8hM8&list=PLKH67XJTusY6jSokJhZgD_NsBmmIpUvet

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

