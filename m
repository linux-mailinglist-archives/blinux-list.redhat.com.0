Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 04C793CC5EC
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 21:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626550849;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jkmzrhQJcqhz4WZ442nnXqJF9EStgEli+mrE9AgDh1w=;
	b=YH+T3EG7Fjz9yCmWumIsmkqhj+5bjiR3xaMB8yYMjYf+p60XpkHvaqKGJBh58rzTrhw2mb
	YsbMdhn22tvTH0mhoxGp/AnQKtBP2Es5T8sqkjpGK7vJVuudGmqLDbpve3DWgrRujjoJym
	MjgmLufYULl3ua7rK4+S3DOzr88hYSA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-PvjKClUwMQiMbqfDIM79VA-1; Sat, 17 Jul 2021 15:40:47 -0400
X-MC-Unique: PvjKClUwMQiMbqfDIM79VA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8A235074B;
	Sat, 17 Jul 2021 19:40:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85DD65D6AB;
	Sat, 17 Jul 2021 19:40:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7DCC54EA29;
	Sat, 17 Jul 2021 19:40:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HJebkw028262 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 15:40:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 200B8200AFD4; Sat, 17 Jul 2021 19:40:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1AF9F200AF71
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:40:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B902180B71C
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:40:32 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-76-Dq1w4etBOHa2CELha6WXuA-1; Sat, 17 Jul 2021 15:40:30 -0400
X-MC-Unique: Dq1w4etBOHa2CELha6WXuA-1
Received: by mail-qt1-f177.google.com with SMTP id z12so9858214qtj.3
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 12:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3ze9tH2k+qz0AmzSaAM8bRtJR9fZD9abk8sOBGZcGXI=;
	b=dUGuyA59oHD1BYBLYEWYCJMpQbYU9gkemSoEGPJlNovoxgN9oDrCel9rLuSOHebCmd
	h2590YgKsKE2PyD60dFhLRwClRXxzCjaA/+V1eY5EqbCItC6xxj5Y8J2z84OADtubp/9
	tUfze551GzxcrSE6oaa2oKE0QqxvCBYGIAQcnb8NuIpB6tbCyUUl5bjFApdunPXCJCnv
	ofPkbSL74l+pzPW29i4OsD19NqGksdTZhyRgeSm+KyLVcvWreiulNp9K9AtYO+GLhYPU
	LMGTgtMvfpb0CVY492E2e5bJQIWfr4yCeKFKpNcnGH0HIFD7HwCxcYA9jtNeJoqRY09u
	GSPA==
X-Gm-Message-State: AOAM532GfqbgLha4ioGwsSSpYhXXAS+qqct6hrL6uQnamaj+uAKh+/Fg
	7EgOkmFOtjxQjfSkoRYL6XVVVFrDazA=
X-Google-Smtp-Source: ABdhPJze8bYcZY97wIIGAG6jJRz0L+umAaE0otmwWhZ8psf+enZURU+2R8IC0n8gCcCHnx5K6uMNyw==
X-Received: by 2002:ac8:764e:: with SMTP id i14mr15650163qtr.247.1626550829882;
	Sat, 17 Jul 2021 12:40:29 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433])
	by smtp.gmail.com with ESMTPSA id w2sm5530111qkf.88.2021.07.17.12.40.29
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 17 Jul 2021 12:40:29 -0700 (PDT)
Subject: Re: recommended OCR solutions on Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
	<CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
	<c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
	<CAD_4ddQJnm6Bfj_FJWdYF8-8pZCobkevOwbAPZ-X6s1jPMeBfg@mail.gmail.com>
Message-ID: <119b96d1-0167-ee36-cdfb-eae9532804b8@gmail.com>
Date: Sat, 17 Jul 2021 15:40:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddQJnm6Bfj_FJWdYF8-8pZCobkevOwbAPZ-X6s1jPMeBfg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Pidgin is very much usable with Orca, although you will also want to 
install the package called purple-plugin-pack. It gives you a few extras 
that you can enable to make your IRC experience even better. It also 
includes a hotkey plugin that will toggle your buddy list and bring up 
the accounts and plugins windows from any workspace.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

