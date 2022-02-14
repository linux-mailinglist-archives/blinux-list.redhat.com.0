Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 942614B420D
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 07:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644821045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J/mKJ1vrMMfIBLgttk5X8aQBPm7DwkYxUKklSmOukOI=;
	b=RxnBCAvUvcdfrKsUc0N4wr6U/BkWs+tiF6ykDrvuk6hbQn4d2GVcwdIs5m9HeP529sSAdY
	kK/UINi5UJrzKEKW1wMAjAT7Sg5/bzeKSY3j4iSBtTiImwckiwtzZlh6RRTINA4n7lzuIz
	7pzk87phoF6aDVAQEtWl/XuTu06qIqc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-xMY3vNocO46Y1LpXehA_kg-1; Mon, 14 Feb 2022 01:44:02 -0500
X-MC-Unique: xMY3vNocO46Y1LpXehA_kg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 269182F26;
	Mon, 14 Feb 2022 06:43:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F2B562D5E;
	Mon, 14 Feb 2022 06:43:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F1F31809CB8;
	Mon, 14 Feb 2022 06:43:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21E6hhhw032569 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 01:43:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D5ABE7AD0; Mon, 14 Feb 2022 06:43:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D10ED7AC8
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 06:43:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E777A10665A2
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 06:43:40 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
	[209.85.216.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-76-lNs4HbvDOW2ODPNN2zFt8Q-1; Mon, 14 Feb 2022 01:43:38 -0500
X-MC-Unique: lNs4HbvDOW2ODPNN2zFt8Q-1
Received: by mail-pj1-f48.google.com with SMTP id
	v13-20020a17090ac90d00b001b87bc106bdso17922388pjt.4
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 22:43:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=qv8i2xZj2BKljbenk34Q6QHmp3899RdNICNuTDVMzcM=;
	b=vakT3KBgjz/t2dQcEURN8aBZYErc6MiFNoAwoPzEDIGhiedgEp7ImMmtjj7Fif5inz
	s+Ps65rXCNhE8km8kVv1k4ge7obT0whYPHp4rsfIt885dOlKTJXHe4tspb4jAfQjbm0D
	TCPd8GXa0YYmYhCVNq/b9y0g7gsVfRlNVVibHnE6SdqTY52Q39iavy+/Yx35/cX96gLo
	a4ozyDzCJctsnstQ6ZGFzJBW0hCcjOovvXAiWDiYq0oYWhYvz9o4P5CONZo1cceaPY0D
	2n6sYhZDFdxOKC0p12DUegvxAvaUAH8itg3laKjSQQZl9gAk+uZeYY/SvKEOOet84plD
	mFjQ==
X-Gm-Message-State: AOAM5310Wj+34ahBUOnJGBgrjqvSsDgR4XXrrZBTwy4zH+kQ1ir1aD8/
	GupchoB/6CD/cYgL+cBCUMfTVK9e6DaEsw==
X-Google-Smtp-Source: ABdhPJyahJUHu3NzcIPs9R9aj9MkEQpS0jqjJoR8E37UprGbU22QFJKNTKV+Eb1EoIXZvyymp1zEXQ==
X-Received: by 2002:a17:90b:104:: with SMTP id
	p4mr13157499pjz.11.1644821017431; 
	Sun, 13 Feb 2022 22:43:37 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id d9sm978905pfl.45.2022.02.13.22.43.36
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 13 Feb 2022 22:43:36 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
In-Reply-To: <CAO2sX33gs-8HKqEaQM1bKtsbENXbOAsfb6aXncd7ow589gMG6A@mail.gmail.com>
Date: Sun, 13 Feb 2022 22:43:33 -0800
Message-Id: <A0A83FD5-6722-4C55-A48A-A6D4CCE04F83@cfcl.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<6076529C-A57A-4E14-99A5-7F410CCFAC9A@cfcl.com>
	<ddc1a3ea-835c-1bfd-4060-d508340a664c@free2.ml>
	<CAO2sX33gs-8HKqEaQM1bKtsbENXbOAsfb6aXncd7ow589gMG6A@mail.gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21E6hhhw032569
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Feb 13, 2022, at 22:04, someone (?) wrote:
> 
> The YouTube video that was linked was hilarious... though that guy's
> system for pronouncing punctuation doesn't seem very practical...
> 
> Though, now that the subject has been raised, I'm noticing quite a few
> discrepencies in how some punctuation is spoken by Orca versus SBL and
> how often it isn't the monosyllabic way*carat versus circumflex at
> versus at sign, number versus hash, vertical bar versus v-bar...
> Making as many punctuation marks monosyllabic as possible would be
> nice.

FYI, the "number versus hash" problem is much worse than you might think. It's often called a "pound sign" in the US, because 5# is read as "five pounds".  However, "pound sign" means something entirely different in the UK, where it refers to a currency symbol.

IIRC, the technical name for "#" is "octothorpe", but I doubt that anyone would want their computer to announce it in that fashion :-).

- Rich Morin



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

