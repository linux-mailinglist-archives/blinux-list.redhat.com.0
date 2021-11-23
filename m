Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C70545AB3B
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 19:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637692020;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hKnWy7sWDAAdd1EC4iVT5TCky6svLHmQ43UWqycRmGI=;
	b=XVVv2+JkuwTzhLz2d+b60XRGvg6lnGl98aUlf8Rg1aWLLIcB1FeoVoamBn1yGxcpDO6TzH
	HEDl+qarcy+Udd+2cSXTxQzUr2/dc2B/5I0e/DyLStJ6/PTiPcOB3WAlzbXwQWmNuUtMd4
	M5VCMXkhBAWzTH/Cyx6dSzvFC6OPnaI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-Dr8JxgcjPxiHANvIZXytdA-1; Tue, 23 Nov 2021 13:26:56 -0500
X-MC-Unique: Dr8JxgcjPxiHANvIZXytdA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7CB21006AA4;
	Tue, 23 Nov 2021 18:26:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D3685C1D5;
	Tue, 23 Nov 2021 18:26:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A09D4A703;
	Tue, 23 Nov 2021 18:26:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANIQg4E030493 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 13:26:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D240A51E3; Tue, 23 Nov 2021 18:26:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC95551E2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:26:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F13A11066680
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:26:39 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-410-sVyBJfIRPSu6ryuuvr-egg-1; Tue, 23 Nov 2021 13:26:38 -0500
X-MC-Unique: sVyBJfIRPSu6ryuuvr-egg-1
Received: by mail-qv1-f53.google.com with SMTP id b11so15586317qvm.7
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 10:26:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dMyEJbZdTo0nhzutpH/beEN55bbztwtRi0FUOHOAkCo=;
	b=EOU8KQ8D7aLI05p/j6kypAIkXRrpzVic9AgeYPROKuaQGcUZrKdZUGV3/QwYp631am
	XASPkJhs0euJCGfUfxfjpckowokV7u1GOj7QcY2fexbk7AJtIuWEJ5iB8eGhZou/hMVz
	fDsmWpDt8tqAPLqvXhDLjZRW+loPYVWTDMI1vXeQ6100JObJ4ognyOg9qBUOmdEi5ZJ9
	O362N+3C8mP2BB+Aw+xrvD9uIraB+lCrBm0Xh5GZ+oXlEbxIv0bcz1WhqAgVNeTiR4W0
	90DQbixGjDvPVlzpff9iVto79V0WJ0/xBBNnbMJN6CE5LBMFeLcMRTd7ut9Tlgfl/wh3
	sJ8w==
X-Gm-Message-State: AOAM530vtmo+wnwGQEflg79A1bpoOO7Thn5JOtlCCK9x3SKdjcnE/eJy
	LtBbPMdkRzCOn8VBalww0vQJ1Yy0+BXSsED7GXHswRgG
X-Google-Smtp-Source: ABdhPJz4UIq1zvDe7AI8TBy9tfYGjMJRCtYZRE/ncOe7m94+CKFaIb2YQqVoiGe4J8UyfnvQ++9J4500kzWqoW4oaEs=
X-Received: by 2002:a05:6214:20af:: with SMTP id
	15mr8606348qvd.6.1637691997644; 
	Tue, 23 Nov 2021 10:26:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 23 Nov 2021 10:26:37
	-0800 (PST)
In-Reply-To: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
Date: Tue, 23 Nov 2021 18:26:37 +0000
Message-ID: <CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
Subject: Re: In the mood for something new
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You could always give Debian a try. Ubuntu's based on it, but my
understanding is that most people who dislike Ubuntu dislike it for
the things it does that vanilla Debian doesn't.

Granted, if you want a reasonably up-to-date system, you'll probably
want to go for Debian Testing over Stable.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

