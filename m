Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6C3E64055B4
	for <lists+blinux-list@lfdr.de>; Thu,  9 Sep 2021 15:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631194486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HD977hb1o9qhbnUnxChLpAEMMWNfh5kgy5tSPesxJK4=;
	b=WEbNtyl64T3lgLTlw/rs5voF7K+gn1KC0N0/YyZbcxDZXJMee3G2lZeHlDGRVI6AxjEN9x
	xE+eTfGLr9tF72Iwi5TIL1x97fRrIFeOg5XxUfn043iEO6jFtW3e1Ds6fTeZjU9Xrp5NDX
	+rukdJmrgOtHENbiHtvBcK3vqvP6CvE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-3kMoWaSAPxa5U_07NVgvkg-1; Thu, 09 Sep 2021 09:34:44 -0400
X-MC-Unique: 3kMoWaSAPxa5U_07NVgvkg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F00EF1083B6F;
	Thu,  9 Sep 2021 13:34:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E11445C1D0;
	Thu,  9 Sep 2021 13:34:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73A844EA2A;
	Thu,  9 Sep 2021 13:34:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 189DUpKU027571 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Sep 2021 09:30:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8981F21677FD; Thu,  9 Sep 2021 13:30:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8452E21677FB
	for <blinux-list@redhat.com>; Thu,  9 Sep 2021 13:30:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 939D61161A61
	for <blinux-list@redhat.com>; Thu,  9 Sep 2021 13:30:48 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-558-Q8sgfa4uNHCuSkvOXEWkMQ-1; Thu, 09 Sep 2021 09:30:46 -0400
X-MC-Unique: Q8sgfa4uNHCuSkvOXEWkMQ-1
Received: by mail-qt1-f174.google.com with SMTP id c19so1369711qte.7
	for <blinux-list@redhat.com>; Thu, 09 Sep 2021 06:30:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=D5xUIatLvPYPqc/u0iog2vSgKk7P74Fa4FFhWdG+oXo=;
	b=cNwC16YLYgUyYzEqNODiJ8dGD5gZG3XHQnlJFOQ52jZqTrktzEUTrg8cHQY24a/eU0
	Z0L2mp7FUCwudw/diYkgC9+FdvadtzXkqxF3APW5UBqTwAOaLu+R7rnN2AT1qql3XCIa
	Z8ut87gTTMGFFow9SNkUQqr2EEnN5WnBM5mpA4ZSMfGR/FXUws3XPPK+dyPb4OgeG8W0
	IIgaifbM5ygpeDRy7mJPpayOQzKw0biIYc665U1lxS8/f2Uvrg86fZTcp6I6ytZWOjEm
	t7efOdRtbVz6PhPWG9LZcl06wg0BVeVlhiiFco9/JGr7fJ08dbxCq+o1fsYdAXoTzbzr
	+TKw==
X-Gm-Message-State: AOAM533GZXe+o1n2wTTMGOoIVxCCKg9wP7VvcWMIXF92sCginQpEkP18
	udBxI55gxbXQcijvVzI26fLk6L8Tn6U=
X-Google-Smtp-Source: ABdhPJzbDiimfS2w2O6xghx8AjyI1YfrwMVOuqUjQuzvBBw1uPgURbZlrH4peJGCIaEcnYWQejTW5g==
X-Received: by 2002:ac8:1e93:: with SMTP id c19mr2949194qtm.60.1631194245101; 
	Thu, 09 Sep 2021 06:30:45 -0700 (PDT)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	m8sm1279264qkk.130.2021.09.09.06.30.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 09 Sep 2021 06:30:44 -0700 (PDT)
Date: Thu, 9 Sep 2021 09:30:43 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: TUI player that save position
Message-ID: <2a83e5de-a7e4-dc42-2124-7a661e38f893@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Mpv, shift+q to exit instead of q alone does it.

On Thu, 9 Sep 2021, Linux for blind general discussion wrote:

> Is there a terminal-based media player that saves your position as, for example, when playing movies or audio books in one file? Perhaps a flag in mpv that will save position on exit?
> Thanks.
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

