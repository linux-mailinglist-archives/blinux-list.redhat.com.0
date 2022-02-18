Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB5B4BC14B
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 21:42:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645216935;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gOYtSZAl0J3XThA5N7fRgikfl/pJ8zRBBCAlBDPoNbU=;
	b=MUuq+RXJoTysyTb4agfJO/o7AjhAopKunvoaqmQa5qPOkHY2JGIECuSf8sDayOXLWNOWG6
	36TBGJRvLWWgc1dyt6JcTg+Pz9jG7k4e4VgCTvI4fCkB+dqTcGTOunIksnGyOUxpVQm2S0
	p/X+346N4sxyXdJs1olyhJvZ+afg9kg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-578-0mXf85YnO5iiH78w5IJO6A-1; Fri, 18 Feb 2022 15:42:11 -0500
X-MC-Unique: 0mXf85YnO5iiH78w5IJO6A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 495DA1091DA0;
	Fri, 18 Feb 2022 20:42:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2287956F78;
	Fri, 18 Feb 2022 20:42:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F42384BB7B;
	Fri, 18 Feb 2022 20:41:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IKfoDh005741 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 15:41:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9466C202C5; Fri, 18 Feb 2022 20:41:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4C5CC1D3AD
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 20:41:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B5E5185A79C
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 20:41:50 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
	[209.85.216.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-411-Ct-BBuQVOK-bQl5jul_4ng-1; Fri, 18 Feb 2022 15:41:48 -0500
X-MC-Unique: Ct-BBuQVOK-bQl5jul_4ng-1
Received: by mail-pj1-f43.google.com with SMTP id b8so9565274pjb.4
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 12:41:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uUP8Q675G0sN7w4wV72dqItlZF/kZY4hN89WnJvZzTg=;
	b=oF64KgjQKry+oeViI1L73SPp2CGcAZo+EQwyqpt5eq+EekZLbpGaq6q/AbTEFdva/w
	RqSgb7rxF5p4caxUqnecNKwrJ7exus+r0OPrCtfC3RjtbHUyODBx9rSGqxv2hHzJW75f
	jBcYon6GRBbIygNbJz3MiTF+q66T3KW34JuXLspaIfrUr6cE4Pgr4B1j+M4UlhOMnMzw
	DI3+uMcHTIeP1GAmUzPTR/kjh5dqqtM1lkbN8iukUvai+7Ez5ucSfgdpTHyRtdvtpyhJ
	l4nMuwgYHAMRa73MjugiM1euGixzRlirlSKhQjCM/Ip4NcTiQpaC94JDvjLMZ22ujblp
	ySGw==
X-Gm-Message-State: AOAM532UYk5t4cMtvUY2Qg5UExCCgCqG/VkoY5pf/RqLwh0Pt0SnbIrr
	Ni/1uNgkNGiSojyHezAWJa1fhJRm6wYlShb5uJvxMZDU
X-Google-Smtp-Source: ABdhPJyHsB8ZNi4J4GS26o8gLqGhxdQL9E9dcqPqtVxtyMuG0GhKzqB6v3/BNzSqCHvnjJPTcuXe8bEKyRcFBX7LAXM=
X-Received: by 2002:a17:902:f281:b0:14e:459:c52a with SMTP id
	k1-20020a170902f28100b0014e0459c52amr9223321plc.74.1645216907684;
	Fri, 18 Feb 2022 12:41:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:de18:0:0:0:0 with HTTP; Fri, 18 Feb 2022 12:41:47
	-0800 (PST)
Date: Fri, 18 Feb 2022 14:41:47 -0600
Message-ID: <CABKqQvG=xfVhpLGgJeR1-+HbtNUrzc=U2UbPDqjfLbuWYYax0w@mail.gmail.com>
Subject: Simple code editor that is better than Jedit?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Emacs made a mess of things last time I tried installing emacs and emacspeak.

Anyway, I just need a few things, like the ability to jump to function
or class definitions, or pull them up as a list and move around my
program like that.

Are there any simple, accessible code editors?


Amanda[0]

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

