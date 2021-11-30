Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 20254463C56
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 17:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638291343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=57W9rlHDOQwVU3AG7QcEMvcnYYpGrO4nIym9khdzma8=;
	b=ctkM7IY1xXHZC7yR/Uq09bnuxcpjRGoVjLCMzWhuAOtaCFmy4gRGZjJ9OoEFTc4MLqBhL9
	gfrAlV7uNubBnkf+fpwG8v3lj6sRoHD9OHIRDEyjqEL7xlNQZ8CYtxlDV5jfOWDItYvbKT
	s851mwqXYimS6nCW8eAUMbO7/vSt/cQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-260--wykmI_LP-y8yC2wBPq5tw-1; Tue, 30 Nov 2021 11:55:37 -0500
X-MC-Unique: -wykmI_LP-y8yC2wBPq5tw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D08207878F;
	Tue, 30 Nov 2021 16:55:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B38AA5D6BA;
	Tue, 30 Nov 2021 16:55:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B4D34BB7B;
	Tue, 30 Nov 2021 16:55:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUGt4xd005997 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 11:55:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BB7AE492C3B; Tue, 30 Nov 2021 16:55:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6D7D492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 16:55:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 919EE101CC60
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 16:55:04 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-191-EwWVfdEkOw-UAMbYNr0Aog-1; Tue, 30 Nov 2021 11:55:02 -0500
X-MC-Unique: EwWVfdEkOw-UAMbYNr0Aog-1
Received: by mail-qk1-f170.google.com with SMTP id t6so27526989qkg.1
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 08:55:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Npp0wvaxkD0ovhjzA8CH98B1emdywqKd7QXHgjGtrvA=;
	b=jMHEBxC0sVtJGY5bR8I4B9pZGukPo/E+lm4GO311jrbxQGysSzfKjdVxJ91CIU/a5r
	ziHjzq3Eu9PGv+CBI8QMwLVrie3KtwpDt62Fk0K2wzJTBv6yCyaJgKb84HD1odbXPo9l
	OJ9NKd2CXvIJ/FURjCdH3pHA7FK2PC+sOgdE8Ki2+rfXpzJQ/Z046opagb3b1k7X2oxy
	lfF+InFmdaGrCKDb4p+EL/X7gdyEUB9JRCoiPgKlyAZ1DXw/6H90OR+lJpIUWYZXBlCU
	Yqa8geI09gKV4/bQ7lFyqO9fNFLDgO02Ib/sAw5ftqYF5WhCQH1AlQZHXdcCEXne6jij
	BKbw==
X-Gm-Message-State: AOAM531Ei7uk1b3CBaEQ/891rZHIgQSxKMMqbPrB7XqdXii4BlxjGYfY
	uzpuDIi6SY2tNbHYKoffE4vFHO+gYvI=
X-Google-Smtp-Source: ABdhPJywjF7WNcPLYM9Ij6IQOz/biTJ8qw5MdBuxJSUcjOq8vpyPnWKZBH2KFXFkfZXm5mVlc2pNYw==
X-Received: by 2002:ae9:e511:: with SMTP id w17mr391028qkf.745.1638291301185; 
	Tue, 30 Nov 2021 08:55:01 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	v4sm10629036qkp.118.2021.11.30.08.55.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 08:55:00 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
Message-ID: <5f2d9df1-a91c-5fba-a8b6-f57bf22f4897@gmail.com>
Date: Tue, 30 Nov 2021 11:55:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

In most cases, Flatpak applications speak without any difficulty. I think 
Audacious was the only application that gave me any trouble at one point.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

