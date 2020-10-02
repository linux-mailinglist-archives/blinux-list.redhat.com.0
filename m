Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 42713281859
	for <lists+blinux-list@lfdr.de>; Fri,  2 Oct 2020 18:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601657629;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9oyJ9khex5KcLYXmFNF0oxXe6WmrPHNGz8uYDMCXV+Y=;
	b=fhNkG7tPreLRsB1jPM679jt/GRtotnKfmprFTwt/tHgNPZTkDvg7nVu+qkRGH5gYd+i+UE
	2UcwHBV+H7wQCNHTgmtiIrE7f4xCi2f/CiJRdg3u2khODRdhiO5LWvAEJVsqGW1F3kNC42
	RSfClN9YwsgYDRiN3Sx491bTRZXg5y8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-563-In1CVxZaNO2dObXyxe6o8A-1; Fri, 02 Oct 2020 12:53:46 -0400
X-MC-Unique: In1CVxZaNO2dObXyxe6o8A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15F332FD19;
	Fri,  2 Oct 2020 16:53:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D8F860BE2;
	Fri,  2 Oct 2020 16:53:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8914E183D020;
	Fri,  2 Oct 2020 16:53:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 092GpPBD013577 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Oct 2020 12:51:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 11A95114D10; Fri,  2 Oct 2020 16:51:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C66F110EA2
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 16:51:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06205811E76
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 16:51:23 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-W7NnU5yCOo2F7UWnZUGVUg-1; Fri, 02 Oct 2020 12:51:20 -0400
X-MC-Unique: W7NnU5yCOo2F7UWnZUGVUg-1
Received: by mail-qk1-f172.google.com with SMTP id w16so2036979qkj.7
	for <blinux-list@redhat.com>; Fri, 02 Oct 2020 09:51:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ye91NNiyuumrX1OscY/wPOnDjaghO7OW+HWWKXZPv8Q=;
	b=LKAcPBV2Zjy9Ng+B9jRn9GXPGP5UvXl9oo9fwBmddJLTuHlF7BFszDiXR4h2RsAGsp
	J/h+arlGpneaskKLYcO9urSiV5NMw7bcExJDw2t3N0ts57AhRVe2DYFSwwCTyRTeJdUv
	8V2srYd73Pkf5bJhtnUSMFCsrW9eGiZ+dVjDlp5MJzFe2PdKqv/3ze3QOFq4NWsW+77t
	I+gdeFshRVeFPF5dLesJicOiSSB7GtnRn3ze+6IAsiHXbsEoaAkKgH9FkealewRoxTMB
	YyT/PL2UdMqhnN5xWBkKjPo6eC0Xm2o4VWb1JxcHYAB24pNSKCh6cQWobVjgkrWgzT49
	+b5A==
X-Gm-Message-State: AOAM530BEqTWqm4LL8EV8Apc2Lbz9F3ViJ9eICdkELVLr438Y9YL2MUu
	e9YPl9qBeez+l+B1Qh+Jg7aJUcAO8zzPmbp/9o0/APrldQU=
X-Google-Smtp-Source: ABdhPJxtqa/rmJGko6Ep4fcP/+PPPKC03LToPG67o/nhFJ7gy4qmU7a0DDn7J6VrraTEAlCE0Nt64nQqBNQYgrc4+iU=
X-Received: by 2002:ae9:f80f:: with SMTP id x15mr2967787qkh.341.1601657479540; 
	Fri, 02 Oct 2020 09:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:cd91:0:0:0:0:0 with HTTP;
	Fri, 2 Oct 2020 09:51:19 -0700 (PDT)
In-Reply-To: <87362wpr0h.fsf@yahoo.com>
References: <87ft6xoznv.fsf.ref@yahoo.com> <87ft6xoznv.fsf@yahoo.com>
	<CAGJxbF4FkVdc2mykt9ChgN2Yj2en6EvnmPeL+uVbjondqY+gsg@mail.gmail.com>
	<alpine.NEB.2.23.451.2010021020430.4800@panix1.panix.com>
	<87362wpr0h.fsf@yahoo.com>
Date: Fri, 2 Oct 2020 16:51:19 +0000
Message-ID: <CAO2sX30h6iatqJRhauvYjCMw6PAAx9DSdtO=y_7w=m3YM5BgMA@mail.gmail.com>
Subject: Re: Continuous reading in Emacspeak and Cursor Movement
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

While I don't have any experience with emacspeak or emacs in general,
I think this might just be the difference between a graphical screen
reader and a console screen reader.

As far as I know, pretty much every console screen reader just reads
the raw text from the buffer that gets printed to the screen and
really has no way of controlling what's on screen, while much of what
Orca and other graphical screen readers depends on at-spi(or something
similar) allowing two-way communication between screen reader and the
active app from app to screen reader so Orca knows what to make the
synth speak and orca to app to allow Orca some control over the app.

In addition to allowing Orca to make a web browser or editor scroll as
needed to allow continuous reading, I'm assuming this two-way
communication is also why Orca can do hotkey navigation in
Firefox/Chromium, but you don't get similar in elinks with a text-mode
screen reader.

Admittedly, emacspeak might be more integrated into emacs and have
such two-way communication unlike a general purpose text-only screen
reader.

And if any of what I just said is wrong, please correct me, but yeah,
I think you might need a talking text-based eBook reader to actually
get continuous read without the GUI.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

