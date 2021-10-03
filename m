Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 576FE420041
	for <lists+blinux-list@lfdr.de>; Sun,  3 Oct 2021 07:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633240080;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HhL3qeHBqPnsbYL3/X0AM9LvZzE2hGMlECGHE8dyIbI=;
	b=GAV2jCFNO0E+4y0TkfvpcUGwq8CWyVwnoAXwNUgCLJ0vStdMA6kkmZEDER6fIOkCROcg0f
	KEt+qRSIP7ZG81sa5SmDm7bf6eSPZahQZJkwW0SoRCmepNCrIKH4DhU4hF2nKdryXAavm8
	Pk46kFZII7+lpuyltKSfSQYBpjCq4CE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-2T17fT0FMCmIPXVqt-10Rg-1; Sun, 03 Oct 2021 01:47:58 -0400
X-MC-Unique: 2T17fT0FMCmIPXVqt-10Rg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BED0800053;
	Sun,  3 Oct 2021 05:47:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 169495D9D3;
	Sun,  3 Oct 2021 05:47:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 83B8E1803B30;
	Sun,  3 Oct 2021 05:47:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1935lWD1031266 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Oct 2021 01:47:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 35E6E202E4BB; Sun,  3 Oct 2021 05:47:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 30ED6202E4B9
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 05:47:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5556D185A794
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 05:47:29 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-457-iKOsMRRBOCGQR-gFFhpeaw-1; Sun, 03 Oct 2021 01:47:27 -0400
X-MC-Unique: iKOsMRRBOCGQR-gFFhpeaw-1
Received: by mail-qk1-f171.google.com with SMTP id i132so13364106qke.1
	for <blinux-list@redhat.com>; Sat, 02 Oct 2021 22:47:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SAk5oYs7A1jh4Sopxw1/dc/qPWtprh5oZvu+6LmYTqQ=;
	b=DOlHhnLwjWDhO2TDDw/Bvgop4eNw9+Y4cWHTf6BxuySD7duBZDBOIASeZYU2zcEJzi
	7eqhf0Bby8lajzKx0wAbv+uAPbYi+ok3nD2pFF5Bizpip+rz2yUhfQyHhzVmqILIuEYJ
	cEThKue4kH7dgS+L+Fqeli1krrvBoOwOxpZxVuSKwIwitcLaLTJshnaZz/7KDfL8pDse
	v1U5cG2ZMY45bx3u2FnmFytqIJsKi5GPILuFsnsjWFFXfTaVEC/MUymCrSBqJoteh73i
	hMCjOYwNo0UJJF3UXPua4bsnZIWHTNTMfR/KqNl+iXvD7BS0uX4Whm60uWJpe2INP0Ds
	9TXw==
X-Gm-Message-State: AOAM533D2lGzrjWxLXRX/OcN9LT0bk2bxkl2p/zpkJizuEbCymA4y3p9
	Ogn2DrUK1YVY5cty869JHAsnOrET6eEztFm4TwS+fzNOSmE=
X-Google-Smtp-Source: ABdhPJw6trhRMJezp82RrZt6T3clmi82cjZqWEV0uleAkFWPykNbB4Me9aznUP29g89rLOC7I3Mp8UUaBUqnwDTkNx4=
X-Received: by 2002:a37:270f:: with SMTP id n15mr4795657qkn.203.1633240047020; 
	Sat, 02 Oct 2021 22:47:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:14aa:0:0:0:0 with HTTP; Sat, 2 Oct 2021 22:47:26
	-0700 (PDT)
Date: Sun, 3 Oct 2021 05:47:26 +0000
Message-ID: <CAO2sX301FwZ+Zs3nfktkAKdeA=W-08eb7E54Twh-mRjt8Hp9tg@mail.gmail.com>
Subject: Crawling/downloading a website to test permissions.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so a few minutes ago, I realized at least one folder on my
website that's supposed to be readable by visitors isn't... and that
got me wondering.

Is there a command I can run from the Linux terminal with my domain as
an arguement and it'll start at the homepage, go through all the links
and embedded images, and either generate a report of the content's
that's accessible or download everything preserving full paths that I
can then compare to an offline copy of the site or an ls -R thereof to
ensure everthing that's supposed to be reachable through normal
browsing is without having to manually follow every link?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

