Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A84744C491A
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 16:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645803326;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2DirKst4DFVST0gZYi9XEh4QdWEZ6oOg7qiAHpXoZvY=;
	b=gBGEYsjdLbE5YRIXihhzzTQt9kQZqRl3jN9wd31ZrFQ+JloMqa1oAX3narzQiYgLpmmVQL
	A84v7/s51lGM2EPNra7ZDfHIwWwVCrOa+tYqZxoEHSAb5chn16mJJ0fkeAigmLJR4oGJqm
	vUtZEIeRAlwYl8BVO2uJkt1wYCiv8Io=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-pZSQa58XOp2Adq60EoC8zQ-1; Fri, 25 Feb 2022 10:35:23 -0500
X-MC-Unique: pZSQa58XOp2Adq60EoC8zQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C2B81854E27;
	Fri, 25 Feb 2022 15:35:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 103937DE25;
	Fri, 25 Feb 2022 15:35:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A11BF4EE76;
	Fri, 25 Feb 2022 15:35:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PFTrMl024406 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 10:29:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C2327C27FB2; Fri, 25 Feb 2022 15:29:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCA9FC27FAE
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:29:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48ED93C19847
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:29:53 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-447-PQUqaEGmPU65YmEI6wLUDQ-1; Fri, 25 Feb 2022 10:29:51 -0500
X-MC-Unique: PQUqaEGmPU65YmEI6wLUDQ-1
Received: by mail-wm1-f50.google.com with SMTP id
	p184-20020a1c29c1000000b0037f76d8b484so1883380wmp.5
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 07:29:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=zLlcR/Kj7suxVghOt26XbZBc3I7xtPUk7f641Dp6ii4=;
	b=tPVmdpICdOi5QMa5BfOPvpPNU18zX73SclDpPKAeoEvMXNeqRIdvO7rfCS6NLsxNvs
	kRr0rmpttvnhHVyOcY0BTwM+Fwr3w5yVgCaoS1L+aYtlN6fnS1pneam4QXaA+T2R+gca
	a885CBrw0AVLtB2UJCKMB9yaXMMXChxzRkrsjYFze8WgNLmva21H6Em7m2hq2lbk40Hz
	s8o7IKpueWhcysdw4NgfjoBz+7IB+T9ScPSlrkG8xNuoecZiZ52cbdHN0FM7LhhzZdpg
	UlhY9SS2jLi/gu6+ybFZxqkRbZhcPONopBExrEm7lNyGM+tXASocvFVIf2MeSfBbM0XY
	/9XQ==
X-Gm-Message-State: AOAM532sAZnpOCCxuz8XIYd5Iu6WSnxlDoU0Z6R3T1MLl8GAsBD9EI3w
	qHoFvB+AUyBsIbOuENEls92p5m0Lp4gHJQ==
X-Google-Smtp-Source: ABdhPJxnpFQx47x2wrjVIPxsySm9T/0Q7RAPWp/L/jpwCz7smud9BLQH2KXRilT5Yo76VCeYjHTwVw==
X-Received: by 2002:a05:600c:3585:b0:37b:d7f3:c839 with SMTP id
	p5-20020a05600c358500b0037bd7f3c839mr3211027wmq.95.1645802990164;
	Fri, 25 Feb 2022 07:29:50 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	e3-20020a5d65c3000000b001e4b3ba1423sm2481220wrw.60.2022.02.25.07.29.49
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 25 Feb 2022 07:29:49 -0800 (PST)
Date: Fri, 25 Feb 2022 15:30:02 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voting: Which game would you like to have on Linux?
Message-ID: <Yhj1+qM5EkmDnb2l@waffles>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<Yhjpvu0HyqYbNVO3@waffles>
	<852cc77f-a7db-d99f-645-346da7c1a11c@panix.com>
	<af81b24a-3f13-5005-1fc7-ba325f230bbe@free2.ml>
MIME-Version: 1.0
In-Reply-To: <af81b24a-3f13-5005-1fc7-ba325f230bbe@free2.ml>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

And googling "wordl bash script" or variations thereof don't lead to it.
It's like search engines think I mean one thing. When no. I don't

On Fri, Feb 25, 2022 at 10:16:58AM -0500, Linux for blind general discussion wrote:
> wordl is available as a bash script. Those who read the itsfoss
> > newsletters got that news a couple weeks ago.
> 
> 
> But those of us who don't read them didn't get the news. Do you have a link
> by any chance? Thanks.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

