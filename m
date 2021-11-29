Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C50846235F
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638221522;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HxoFOQRmpQSuyPDyanSUvlbCTEC6GuOxBJe9U88umEs=;
	b=MUl8njvgxlqRvDUJcfww27Pc9QOc6KkAWAx81b4LMNAz8adfgFZdTPsY4CAfKd/eFRncqi
	4OrP63iY7P0oU6+cRQ/2plnRRfXHsutGX3gcLVX4tIwrwViqv0lDi1MyWRILvfY49dz7n2
	ZfakusvhYOlcPD0U+6MwMg9QZsvfVHo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-1wFR_n_QNTyYEiwYReUreg-1; Mon, 29 Nov 2021 16:31:49 -0500
X-MC-Unique: 1wFR_n_QNTyYEiwYReUreg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E2F8581CCB4;
	Mon, 29 Nov 2021 21:31:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFB2245D65;
	Mon, 29 Nov 2021 21:31:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63E814BB7C;
	Mon, 29 Nov 2021 21:31:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLVabi009424 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:31:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B66FE492C3B; Mon, 29 Nov 2021 21:31:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B263B492C38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:31:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96CB0811E76
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:31:36 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-177-mFKpTDBTMmacru1lxjUWxg-1; Mon, 29 Nov 2021 16:31:34 -0500
X-MC-Unique: mFKpTDBTMmacru1lxjUWxg-1
Received: by mail-qk1-f176.google.com with SMTP id m186so24502847qkb.4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:31:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=N7QC9iKIzngmUFIqx80yMayaHKtFGFHI7uG5gGGYRaU=;
	b=Z4vQNnMgaY7rYKAQW7SCG6kfKZRecAVxEZRlkVKKJOmaicQ4W+EY3AVFNe5M1ja/jy
	EcVI9ZE8babhaf8BWkjX9PO7innOMy1Rxp543J0DWOUFeEyKgeP5rvboMDJ7q2eJCKai
	Gkjz77BWW+or+PQpJccGUXdPSmhGdHqTSkd3oJ4lt/n/BrQX2R9Jgy1/cb4znCYVjlT9
	/0OeC3r6I7nESpugpfnEKykWl0eQrt8rpdwqjGcJcJ3ccK860YDA7MQMNMSVBhvDGMno
	pzww/zLezKsh+KejXI22lHNK3lxyT7gekbaWoyd7xjoqqlg2nnA17mRgoYfZZ1CBNJ9O
	+dtw==
X-Gm-Message-State: AOAM533tgc8HdF3tjxvgJkE8R6gcbQj5FcdCReTj9ykpfi380e8A4Xb+
	K5o7iZO9o4jI/l7wQziBx4aSvKN9n9o=
X-Google-Smtp-Source: ABdhPJyVO/NbEJ0YPP4dOuayMPQeM+1Cw/+8yb1sYvICKxbUhCuICgzy9wYzGl1jbN6JaXSAXy1/DQ==
X-Received: by 2002:a05:620a:290d:: with SMTP id
	m13mr14698093qkp.267.1638221494016; 
	Mon, 29 Nov 2021 13:31:34 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	a38sm8693180qkp.80.2021.11.29.13.31.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:31:33 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
Message-ID: <dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
Date: Mon, 29 Nov 2021 16:31:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Unless you are running a text-only installation, installing from scratch, 
editing configs before you have a desktop environment installed or working 
remotely, your best bet is going to be whatever editor comes with your desktop 
environment. Usually that will be either pluma on the MATE desktop, gedit on the 
GNOME desktop, or you may have leafpad or mousepad installed. Any of these give 
you very easy cut/copy/paste functionality, easy to use find/replace pop-up 
windows and a fully accessible menu system for doing other things. All these 
editors are fully accessible to Orca and are found in your accessories menu or 
its equivalent depending on your desktop.

If you are looking for a terminal-based text editor, usually for installing a 
system manually or working remotely via ssh, the best and easiest to use by far 
is nano, although I usually like to use pluma even over ssh, since sshfs mounts 
my servers as if they are on the local disk, so I get access to every file on my 
servers just as if they are right on the computer I'm using to access them. I 
have edited server configs and even websites in this way.

Forget EMACS. I gave up on that crap after 5 minutes of mucking about in it, and 
emacspeak didn't make it any better. A text editor should make it as easy as 
possible to edit text, and that is all. It shouldn't require a computer science 
degree, nor should it try to be a complete desktop that tries to turn every 
application into an editor. The editors I mention here are mostly 
straight-forward, with the possible exception of nano, which is mostly 
consistent with pico, but not so consistent with any other desktop editor, and 
they all do what they should and nothing extra or overly complicated. If you 
want complicated text handling and word processing, LibreOffice Writer is the 
way to go, as it's a sophisticated word processor, not a text editor.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

