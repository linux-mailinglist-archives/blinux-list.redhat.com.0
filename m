Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21ECF4623E1
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 23:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638223340;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KzywpUYswR8lFRZNHLp6R3+V9eF7NeidhjWM6//Ei9o=;
	b=NjZTOmYAlOTTpQRyEIhUKyidTtUsasCWLId4NuiGA+jrNI1rNA8A+f3YbpKicRLPwbkPzs
	6LI8t4N/2xkHSWSaDsk4JdO8gP8MfMlAxSQYdwlJHs45VXBXdjEQXqxAP42KOYvYDchavi
	29qrvz/V/5HTvR19rMyHVY/v+nsUQio=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-582-rVFLHYOEPtyga2WhbUrzWw-1; Mon, 29 Nov 2021 17:02:16 -0500
X-MC-Unique: rVFLHYOEPtyga2WhbUrzWw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB5E31937FC3;
	Mon, 29 Nov 2021 22:02:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 941E31972D;
	Mon, 29 Nov 2021 22:02:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E3AE1809C89;
	Mon, 29 Nov 2021 22:02:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATM232p012310 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 17:02:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E58B4492C3B; Mon, 29 Nov 2021 22:02:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1428492C38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:02:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7350801212
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:02:02 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-554-yLm5UyiUPXOzgxgn1EOa8Q-1; Mon, 29 Nov 2021 17:02:01 -0500
X-MC-Unique: yLm5UyiUPXOzgxgn1EOa8Q-1
Received: by mail-qv1-f45.google.com with SMTP id b11so15985241qvm.7
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 14:02:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QILUSHenS5Hrc6ftbbhWkF/Lq7oFm/qy9wbG61xO/xo=;
	b=KnuLPkA8Gl2+bkkU0itgGJ8i+BQIRqKxPZxVfP+SnJnei9Lv/cTeKUAtHvGPlSL98C
	5uVgf0EQCI78I5Q97kE0lkTD87fawUGGk3f4PJgdKJqwxaUQfozFFda2ECLCIQdp6GTM
	OI0OTO3C/lKB0Chhik8RoR2+BfgFmc42Nw7IWMaXlkjp3AAVF0oaseyvmaAGLyzy4q8Z
	dERvCyXVa7Pw0H6IyQDsKWTYOEA4+CKIwvw1ZODiPGvrwg3hMkVP4lAUVhrX7tMVgPyl
	oy7V4b8Uyh91OfymZA+/Wke0k2lVGwmPa6m+wTjDaCZtBS3ujBoqt/WupO47jxGB4iFg
	34XA==
X-Gm-Message-State: AOAM532GRCHfEaQGuQJGRA1CxRv7huYOkHrp2AVbB1LZ/k082ePCgM0x
	zh2dAg8e1dqPkO5Gyq4KY85gt91JBKNFFgCvQintabtD
X-Google-Smtp-Source: ABdhPJz13U19/NNXAwNdOk6Qv7pvxXmqpsm9c/892vbaFAsg8KIDSygknPmeOqUF58Ut5jP8aPcGq3pP3bKwuG0MRms=
X-Received: by 2002:ad4:5673:: with SMTP id
	bm19mr32468411qvb.105.1638223319517; 
	Mon, 29 Nov 2021 14:01:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Mon, 29 Nov 2021 14:01:59
	-0800 (PST)
In-Reply-To: <dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
Date: Mon, 29 Nov 2021 22:01:59 +0000
Message-ID: <CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I actually have a computer science degree and still find both emacs
and vi to be riddles, wrapped in mysteries, inside enigmas and I
should probably figure out a way to add puzzle, conundrum, and a few
other synonyms to that Matryoshka doll of an idiom.

I don't doubt the claims they are powerful bits of kit once mastered,
but they certainly for the faint of heart and not a good choice if you
just want to edit the occasional config file.

I personally use Nano, and it lets you just enter nano to open a blank
file you can just start typing in or nano path/to/filename.ext to open
an existing file, but it does have some commands that might throw
people coming from a grapphical editor or word processor for a
loop(e.g. save is ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and
has cut and paste that is line based instead of selection based(e.g.
ctrl+k cuts the current line in its entirety, repeating ctrl+k without
otheer input continues adding lines to the cut buffer, ctrl+u uncuts
evereything in the cut buffer, copying is accomplished by uncutting
where youo cut, then uncutting again where you want the copy). Also,
pressing ctrl+g will bring up nano's full command list, while the most
commond commandsare printed on the bottom two lines of the screen.

For simpler console text editors, there's also Micro, which is similar
to Pico/nano, but has key bindings more in line with the majority of
graphical editors.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

