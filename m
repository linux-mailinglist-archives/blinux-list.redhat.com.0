Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9A84B74E3
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 20:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644955072;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vHOSOkDFgswOKRJd6JHwVxHiM4Ci+Za5tMnL0MwgXg4=;
	b=iH6ayoCdxBLvFn0gkkNBTELCmXmff6j8XWrehZG6/83gtU2F4jPV6z9VuwKL4raIrncXh/
	R7Lf3cuERhP/X7L3Sjm9vddW+hpV6rtmAlYrxyXg+qwkhNQEjPu//bBGvI5h41O2m1FLpm
	Fd03SfEgp0zV51zn4z0OY4FTMfh/aKU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-394-61Ka6iTWMXqGz_rP6Ds8Rg-1; Tue, 15 Feb 2022 14:57:49 -0500
X-MC-Unique: 61Ka6iTWMXqGz_rP6Ds8Rg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7420A18397BE;
	Tue, 15 Feb 2022 19:57:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5979B5FC22;
	Tue, 15 Feb 2022 19:57:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0263A4BB7C;
	Tue, 15 Feb 2022 19:57:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FJvgA6003125 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 14:57:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A41B0112132C; Tue, 15 Feb 2022 19:57:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CE2A1121333
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:57:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0FBCB800B21
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:57:39 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-655-3Bzi0HVaP_q5ARL8p2vVLA-1; Tue, 15 Feb 2022 14:57:36 -0500
X-MC-Unique: 3Bzi0HVaP_q5ARL8p2vVLA-1
Received: by mail-wm1-f52.google.com with SMTP id
	q198-20020a1ca7cf000000b0037bb52545c6so2262416wme.1
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 11:57:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=0xZae5EcXoQeJABkghPHSlXmrJ0oI/ZGeVLJMTfp5eY=;
	b=FLAutMXmC9cmuSPtys0wwv/tTYqR7sFjp2rqU0nLMnErzC5JPIlcFO0GGQHgCnUTHg
	3i7RjhN3WCMiiDBR7FOLUxwKt+wbve4TnsFK9E9hcVN8iafXG2TXytyxKfwQkqu9YkR5
	RqmMQKVzB3Mw219C8p9n9FvfmFYqbhnzkf29sg4a7LwrIvh4pzXsX2tYJtkz87RJs+eG
	ynwVOL5G0rHfOxPkI0tcuRwqrAgo0HnK3fAtHaXBYV43o50B8kF9vtgwaUHkNXy3cs1n
	C8Ehsh9W8b29Ru54QcVZCj3eQXPJBFju7Ay70IN1Q1iy4hnlMFF+Wm34BT8q0yRlWN6i
	TQNw==
X-Gm-Message-State: AOAM530pC9yqF39j/Pt+HtzZskHog5L5xJPu3o9JweBsPqG3A9002yQH
	QxzO7K4cG90rWYBSvsYGA1m6VGQL+8PN6g==
X-Google-Smtp-Source: ABdhPJwC3A0eQAi3nXyhgbr0siXN39czcKw2Kym0cDysgZsk+664S4MDKBa5mppc1vQCoshxjvUVww==
X-Received: by 2002:a05:600c:6017:: with SMTP id
	az23mr450411wmb.167.1644955055288; 
	Tue, 15 Feb 2022 11:57:35 -0800 (PST)
Received: from smtpclient.apple ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id
	s6sm13716013wmr.43.2022.02.15.11.57.34 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Feb 2022 11:57:34 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Accessibility of installing Distros?
Date: Tue, 15 Feb 2022 21:57:33 +0200
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
Message-Id: <F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Never heard of this one.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 15 Feb 2022, at 21:54, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I forgot Devuan, or, would you just consider that a Debian spin?
> 
> 
> 
> On 2/15/22 14:47, Linux for blind general discussion wrote:
>> What other options do we, the Blind Linux users have? And, no, I really don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, etc.)
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

