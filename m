Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EF45FA13F
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 17:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665416443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G0j68uZprykPfw2NPsnzVMZHe6z248oUScoudiOFPXU=;
	b=Mqu8YH4He/tMrnyAGRmjNkW7Ezt0mqk5Ywkt8dQc/foDGsAyibA/5fHpHRdxDYkrTorrJj
	HDrAXlt75LEkWwWsTlbxbCwJkp0PoMPvN7396dxGtggPLgoFZlOftIDZSfbBSDlaN7Y7MB
	4EDAzmevr1SmRO7n8YYQelem0Fwih70=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255--nBMZeimPiehvHRoTn8jqw-1; Mon, 10 Oct 2022 11:40:39 -0400
X-MC-Unique: -nBMZeimPiehvHRoTn8jqw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBE2D101CC67;
	Mon, 10 Oct 2022 15:40:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AB771404CD91;
	Mon, 10 Oct 2022 15:40:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 435C61946A48;
	Mon, 10 Oct 2022 15:40:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: Is there a Fedora Espeakup Package?
Date: Mon, 10 Oct 2022 10:40:30 -0500
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
Message-ID: <mailman.6377.1665416435.6083.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am using tdsr with fedora 35.
I cannot get it to work at login, but starting it is easy, and to use it all I had to do was to gitclone and a couple other things.

> On Oct 9, 2022, at 12:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi there,
> 
> Just wondering how can one run Espeakup on Fedora? I am on Fedora 36, but can't find Espeakup in its repositories. So how do we run the Speakup while in the console? Tried a search with yum search and dnf search for both speakup and espeakup, but to no avail. I even tried compiling the Github espeakup, but the meson build fails with no espeak-ng dependency found (yet espeak-ng is installed).
> 
> 
> Is there anyone using speakup on Fedora or any of the Red Hat derivatives?
> 
> 
> Thanks.
> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

