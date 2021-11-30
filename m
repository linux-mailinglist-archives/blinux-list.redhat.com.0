Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D71462FEA
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 10:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638265344;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VNzOngw4KDFHzlwr+yAJ0p8N0Xli8v5oLJ61eIkGFfY=;
	b=Tn6FAzhcgi/bIg7QPpRpzGQXtXjtiu40IkfrzAu0Q9aYi3BTHLf9jWdfEU7mBqGKL8HSwk
	Ckz2gu26R0fpGwlp6mrDgCpy1dV7NvaeWquSEWE5ZIlMCtAg9RVNcN/Ro8SSAEbV9vDILP
	L7ScNagf9mtdPgtlr19ceKfkYP0DYvc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-353-aPi_k7VVN8abZlg9RO8tsA-1; Tue, 30 Nov 2021 04:42:21 -0500
X-MC-Unique: aPi_k7VVN8abZlg9RO8tsA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06DEA102CB29;
	Tue, 30 Nov 2021 09:42:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 509065C25A;
	Tue, 30 Nov 2021 09:42:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CAF6F1809C88;
	Tue, 30 Nov 2021 09:42:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU9g49K031192 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 04:42:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C0929404727C; Tue, 30 Nov 2021 09:42:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB3F74047279
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:42:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51DD918A6508
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:42:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-553-ei6jx5twMO6LQqkcCEchwQ-1; Tue, 30 Nov 2021 04:42:02 -0500
X-MC-Unique: ei6jx5twMO6LQqkcCEchwQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J3HLL0pCqz3wDp
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 04:42:02 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J3HLL00z0zcbc; Tue, 30 Nov 2021 04:42:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J3HLK6XwmzcbW
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 04:42:01 -0500 (EST)
Date: Tue, 30 Nov 2021 04:42:01 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to copy output from a terminal?
In-Reply-To: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111300440330.5394@panix1.panix.com>
References: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

$ ./startwin.sh|tee startwin.log does it destructively.
$ ./startwin.sh | tee -a startwin.log does it non-destructively and
appends onto an existing file with the same name.


On Tue, 30 Nov 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> I still have a few things I need to fix, but as the subject states, I don't
> know how to copy the output from a terminal so I can ask for help from the
> relevant mailing lists/forums.
>
>
> I am using Mate-Terminal with Orca in Fedora Mate Compiz 35. I know you can
> copy text off a console using speakup, but I am not in a console, now am I?
>
>
> If anyone has any advice, I'd be appreciative. If there is a way, for example
> to pype the output from a command to a text file, for example if I type
>
>
> $ ./startwin.sh
>
> Which is how I would start my qemu Windows VM, can I pype the output to a text
> file in '~/'?
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

