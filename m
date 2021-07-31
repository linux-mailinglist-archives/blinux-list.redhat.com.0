Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0A58D3DC29F
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 04:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627698365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2B6XLv62ZzRXyHrMXr97+fVDn0JwCXAC4ByWz0xjS4Q=;
	b=YZ+bnbEzQlpP8Na9ZAiXdixnwNXF9gf5Wk/HukXikogK2kSchHyAWEXsc2WcCW4aU7ATZP
	dZec2zuxAJYiBMXtNBP0b0s4eAEghsbkykJ6v+YOv0L4249m0JjnWia6D9juuIhLMWuUIz
	B2STSNU6kaLbxmC1uP8iNn5bx872rWw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-5RB3yVOZOCChRTBIWrSz9Q-1; Fri, 30 Jul 2021 22:26:02 -0400
X-MC-Unique: 5RB3yVOZOCChRTBIWrSz9Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 292E01853026;
	Sat, 31 Jul 2021 02:25:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29BFF781EB;
	Sat, 31 Jul 2021 02:25:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7B184BB7C;
	Sat, 31 Jul 2021 02:25:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V2PjM5018318 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 22:25:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E9EAB210EB8F; Sat, 31 Jul 2021 02:25:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4EC3210EB8E
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 02:25:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5683A800883
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 02:25:41 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-62-SZ7gI1IZPym4aKBCDBhbcQ-1; Fri, 30 Jul 2021 22:25:38 -0400
X-MC-Unique: SZ7gI1IZPym4aKBCDBhbcQ-1
Received: by mail-yb1-f170.google.com with SMTP id s48so18978753ybi.7
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 19:25:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=uPYCWfps29zUi2I+CLmPJKUO7FF42G4hj4uGCzWbD2A=;
	b=cJGfkKXdD9JdJQXTD3QTSB9gyK7dJ7sluO2JQP9xRrpUgtr5h4IYSzuDQ7SxVNibn5
	MiBegaiLad5McCj/FBgy1pPTWPGfCfXVSvPGoskn5d9dXFEBFLDiEjX72lv+sFGaEpfg
	YyWyH3vg18XpE/btddUuqRcTz/OyufIE4eVdOTnv2bEsbQaLuvdLLPB1+dDn8UyFFfXs
	aIDYJSskbbpiU6BDp+83p/ry0Nxr0shOT1okhBpEJVFKzY5P4R/nxu0s/HpQi77Qpqg+
	/nnVXOiggaAxQRlWHUPx7bGhTmIDkERSBlAuCs7aFdywGJZOlM83Rvytg/my3KsagMJJ
	GMKQ==
X-Gm-Message-State: AOAM5304pAzhryUjHIQ7QLaaWD05fB7pf8G1s0oDYvLwhhNIeJDCH/sR
	/R2zf+wFfAo3SwQ784k0rk57pUNRXUUJMnpwSNbyamPxL/M=
X-Google-Smtp-Source: ABdhPJzCTBVL70gdx6eslL4J6DcSdLLY4vv9tYtsOu4ZlhxMTI1UEKPU01rNrUnn18AvBM/zOjvRPU43NSLS3mClU54=
X-Received: by 2002:a25:ea52:: with SMTP id o18mr7348206ybe.150.1627698337402; 
	Fri, 30 Jul 2021 19:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
	<a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
	<c88d0cb6-3429-f482-6de3-2bd6262b9967@gmail.com>
	<977e443f-189c-849c-eb13-842d6b036500@gmail.com>
	<b8c423b9-0d48-8b71-26c9-ddcc752d80ad@gmail.com>
In-Reply-To: <b8c423b9-0d48-8b71-26c9-ddcc752d80ad@gmail.com>
Date: Sat, 31 Jul 2021 02:25:25 +0000
Message-ID: <CAGz84JKRSyGytL6a5V+ZEvBaKkszhfNjJGeMzXw8a3=HS5HJbg@mail.gmail.com>
Subject: Re: Solus and Broken Speech
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm now running Solus and find that both pulseaudio and pipewire are actual
executable files.  Furthermore, pipewire is not running, as indicated by
typing:

ps aux |grep pipewire

Only return is my command.

When I do the same thing, but with pulseaudio, I get several lines.  I'm
going to assume this means that pulseaudio is running.  What, next, to try,
to smoothe this speech out?


Thanks,


Dave  H.




On Sat, Jul 31, 2021 at 1:56 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Yes. If Pipewire is installed, pulseaudio would be a symlink. Try
> running file like so:
>
> file /usr/bin/pulseaucio
>
> This should tell you exactly what you're dealing with. It does appear
> you will want to change your AudioOutputMethod to "alsa" in
> /etc/speech-dispatcher/speechd.conf. That will be the easiest way to
> solve the choppy speech problem I think.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

