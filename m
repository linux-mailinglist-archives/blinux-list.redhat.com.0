Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B5E2D279
	for <lists+blinux-list@lfdr.de>; Wed, 29 May 2019 01:43:03 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C87E22E95A2;
	Tue, 28 May 2019 23:43:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7953B1972A;
	Tue, 28 May 2019 23:42:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 382301806B16;
	Tue, 28 May 2019 23:42:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4SNgnZ8015906 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 28 May 2019 19:42:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6F7C860C4C; Tue, 28 May 2019 23:42:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx05.extmail.prod.ext.phx2.redhat.com
	[10.5.110.29])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AA9560BE0
	for <blinux-list@redhat.com>; Tue, 28 May 2019 23:42:47 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B96AB18DF6C
	for <blinux-list@redhat.com>; Tue, 28 May 2019 23:42:46 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id r7so199645otn.6
	for <blinux-list@redhat.com>; Tue, 28 May 2019 16:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=jX8afi1O9wzubvwTXt+rloxFoTfkYDzdGjU94BvFTac=;
	b=mf8go9CGQTNm20xA/+K6CmWMBCFj1r1XqyMw8FOT/4o8gP26GWXchQe37BbgS8+xw1
	IW5oKZQsJN+bfniPQprLQ/v0M3/Gq6XT0l0pyys4ZkGgQTlowpBRYSGSrbWd6C6LGGwu
	UV0lmmVpgfrHWlV8gY5AqIijfqSx/3XloHWy5tIDlO8+GWIsEzXbf+aVDClJS9QIAjQR
	TRg4ClEIsjLlK7SST9M7gBSr1VgWxZK+w4z97Q/NfZbZhBk1vlr/SKs9kUvR2jbUl44w
	gbIrOEQsaLf2rFMe6Q6VAmKnFauEx8Lsz0Ol4wngXdag+npzCJWS97++7676SR/Fa/DE
	tM3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=jX8afi1O9wzubvwTXt+rloxFoTfkYDzdGjU94BvFTac=;
	b=fS3F9tjaazB/Hx00gxsHj3PyRxxgecTm1PoP4shdgJnk/VoipHvJPxvAiXgrFtQHNF
	qKAB01l7aMJGXOEYzsgTAlFdS7WQ12MFtf4MU/jzjI5fShr188QkZ9hT+DpzTc/5XRAd
	0mEBO6Dj61b9ZG2QFXPcFW6wJqJlzO3/VyWo3F+XtxFtVMZgukWndLuBgZFYfWOGWNu0
	Xx3f1xjww3hCEfRAQWhEBCPzZ0QsTLGI3B+CuTlgfS5Afy6GJil5F1e/Whft5u7sSdlW
	HudWIuKdXlqJeg7DsPHzrgB/q8hecmgYdEeRdOfUCjlU18Zwui/V/cAihHd7KeBzv/l4
	uCTg==
X-Gm-Message-State: APjAAAWR3T7C64xMXkwX+8B2dChmeertjv6a8GVMnovIJzOezffItFSD
	CaZKoXOIQOBdHhBlpXYbuKdCY15fbexJaQ9gwIA6lOhE
X-Google-Smtp-Source: APXvYqymrajsEq/sV8/yLd7sOQkaLqhabQ38MsIwp8d07WSJtwK8fYujyxXUHhy+pZSeqZPvqWtbv4se7RD7+iwlO1Q=
X-Received: by 2002:a05:6830:148e:: with SMTP id
	s14mr32398292otq.54.1559086966020; 
	Tue, 28 May 2019 16:42:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:149:0:0:0:0 with HTTP; Tue, 28 May 2019 16:42:45
	-0700 (PDT)
In-Reply-To: <4fdb67fb-b05f-66f5-f5ca-2ecc81b953f7@gmail.com>
References: <CAO2sX32uqs-w1XPsn132sUfkyngzbG1VZsM3v4ehtd1C_S4L5A@mail.gmail.com>
	<4fdb67fb-b05f-66f5-f5ca-2ecc81b953f7@gmail.com>
Date: Tue, 28 May 2019 23:42:45 +0000
Message-ID: <CAO2sX32T7ORb5+hJoCCR_wsx5Vp6Es=DStwLEE4_V6G9=UDaQw@mail.gmail.com>
Subject: Re: Setting Orca to Laptop mode and navigating CrowdOx.
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.29]);
	Tue, 28 May 2019 23:42:46 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]);
	Tue, 28 May 2019 23:42:46 +0000 (UTC) for IP:'209.85.210.49'
	DOMAIN:'mail-ot1-f49.google.com' HELO:'mail-ot1-f49.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.49 mail-ot1-f49.google.com 209.85.210.49
	mail-ot1-f49.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.29
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 28 May 2019 23:43:02 +0000 (UTC)

Okay, alt+F2 wouldn't work on my main system as I'm not running a full
desktop environment, but it did make me realize I could try bringing
up Orca's configuration window from a Live DVD and then copy
~/.local/share/orca to my hard drive.

Still can't pull up Orca config from my installed system, and caps
lock is still doing its original job in addition to being my orca
modifier, but I've now got Orca using the laptop keymap, and the mouse
emulation provided by orca+7,8,9,0 is proving sufficient for the web
page that was giving me trouble.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
