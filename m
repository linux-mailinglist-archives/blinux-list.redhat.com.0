Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B90E94AE4A7
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 23:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644359848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yWB1hzFWwxizE5cdUE/G077J6ghY4ibGtTu1s0f/7XU=;
	b=EqgD+JfCDCPKjNwHGLdDikm8bAX2X0s1Cz7uC7uKTzYRdM7Xq/S+piKExKeL7nSv5FEXYq
	lE2fPBQp6SoGOBI4XK30APskxu9xuo8CmteALSSSzDqHVjnQ6ddCqPm31B73pcuowASvHq
	v5TE68o/OrcG9VBL3zRIOkm4JYBe59I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-192-_Y2V2mVVMs2qbF7UXEL8hA-1; Tue, 08 Feb 2022 17:37:23 -0500
X-MC-Unique: _Y2V2mVVMs2qbF7UXEL8hA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB41C180FCAC;
	Tue,  8 Feb 2022 22:37:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A6415DB89;
	Tue,  8 Feb 2022 22:37:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FCEA4BB7B;
	Tue,  8 Feb 2022 22:37:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 217HwIHl026981 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 7 Feb 2022 12:58:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3FD00401E2A; Mon,  7 Feb 2022 17:58:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C102401DB1
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 17:58:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ECECA185A7A4
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 17:58:17 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-60-mMFlIY7yMKKDchvzzUXydg-1; Mon, 07 Feb 2022 12:58:15 -0500
X-MC-Unique: mMFlIY7yMKKDchvzzUXydg-1
Received: by mail-qv1-f42.google.com with SMTP id d8so12022526qvv.2
	for <blinux-list@redhat.com>; Mon, 07 Feb 2022 09:58:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NkU7js8N1WcWIk7FG738LTmsBEK9BNV8+ss7jrV9QWI=;
	b=JjnvgNNh05W1SdNWW7ABle6V3gmSUDAV0NswvGEVt1XZ0W8ez7xhoffUsbQgzEZ07f
	r7I75yGjaU430y81mlHhL+sClIdOdLh4yPZcoTG4Q2KQxJ7RBWG+AhMgZHuT/74eRSjI
	IUrdiEDMYyaoK0B/hx4tU216LrzkKTJEzqr+7/WJa33E2WXiDOolX8lnrzTCXL01PzE/
	qFUA9SOyTMhWeylXb73DPedPCi3jpbUAw0JLRIbWhZ15SGekHf1/mrb9SvCu4LR7T9Oi
	OuZdWEZp5Jo451o9e0UfN52ipW3/tp3fPT7j6VurYKbrl2VoGHox743PyistYoJ8+Jp5
	EJvA==
X-Gm-Message-State: AOAM531qtKAcdGOHZ33CX67/wMlpkLqoawZPjSr6HAMobnD7Wi9ZH2n6
	nUfFm+ED0bpsEWtKO4jQFz8Ahc1YfYzlE1ofZv4XLLvd
X-Google-Smtp-Source: ABdhPJzS7bWuLlG9q/v/5sqc+WiBdIHTzxwPFvA4tuCpeCZIV/u/8N7Wah0wpN4LemA8G4zIJDXMzGjFg32nRjLyr0E=
X-Received: by 2002:a05:6214:20af:: with SMTP id
	15mr477278qvd.105.1644256695088; 
	Mon, 07 Feb 2022 09:58:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Mon, 7 Feb 2022 09:58:14
	-0800 (PST)
Date: Mon, 7 Feb 2022 17:58:14 +0000
Message-ID: <CAO2sX32WSqGjm_b77ZD57jCmycBaHpL-aXzdSeaRK4ggE=eh+g@mail.gmail.com>
Subject: Novelty TTS Voices and calling TTS programmatically.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Okay, so I have two questions that really aren't related except they
both deal with TTS and were born out of the same idea.

The first is whether there exist any, for lack of a better term,
novelty voices. Things like pirate, cowboy, comically exaggerated
foreign or regional accents, voices designed to sound like old school
sci-fi robots instead of just being relics from the early days of
tTTS, etc. Preferably free-to-use and compatible with espeak-ng or
another TTS engine that's readily available for Linux.

The second is whether there's a way to invoke a TTS engine from within
a program. I'm a old hat at writing C++ terminal applications that
read from the keyboard or a text file and write to the screen or a
text file, but what if, instead of just writing output to the screen,
I wanted to invoke a TTS engine and have it speak the output in a
voice of my choosing? Or in other words, how do I make terminal apps
self-voicing? I know the basics of invoking espeak-ng from the command
line, putting a string in quotes to have it read directly, using thee
-v option to set the voice and the -f option to read from a file, and
I know enough bash scripting to do simple conditional logic, but being
able to invoke it from within a C++ program would offer greater
flexibility, and while I know the system function can be used to
execute external programs, I've always gotten the impression that
should be a last resort).

What sparked these questions was the idea of a talking pirate skull
that speaks the roll of a d20 and adds an appropriate quip and
thinking about how to make it more flexible without having to record
voice clips for every spoken phrase... though I confess to not knowing
how to make my programs play audio files either.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

