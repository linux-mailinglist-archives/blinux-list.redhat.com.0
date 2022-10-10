Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A3D5FA37F
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 20:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665427261;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9fEBqF9xaunRmOu4zsNaXa8RO6xENR78IKvrlXadDmU=;
	b=L25IyHmPw4ldrYJozaSB4EN6NhoZwshGqtzg3sU6r8QCdkpGfKyZ/SzYzMlp2aL/wRzjXP
	3iVPrA11L184f6JKdZEWDG/XJ23Fr1B/FYciaPRRQYh3rzTw4naKkysvjdnRbocIp+uK5Z
	WLzZcUplTQxbcXz443Ru0LvAQZEVHhA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-569---7wQ9htOIWwSMcgzTvsbA-1; Mon, 10 Oct 2022 14:41:00 -0400
X-MC-Unique: --7wQ9htOIWwSMcgzTvsbA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46F06185A794;
	Mon, 10 Oct 2022 18:40:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 32F322156A21;
	Mon, 10 Oct 2022 18:40:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D0AB31946A48;
	Mon, 10 Oct 2022 18:40:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: TDSR?
Date: Mon, 10 Oct 2022 13:40:51 -0500
References: <mailman.6579.1665417367.6077.blinux-list@redhat.com>
 <mailman.6597.1665417915.6081.blinux-list@redhat.com>
 <mailman.6601.1665418715.6081.blinux-list@redhat.com>
 <mailman.7185.1665419482.6076.blinux-list@redhat.com>
 <mailman.6853.1665423932.6082.blinux-list@redhat.com>
 <mailman.6257.1665425449.6074.blinux-list@redhat.com>
 <mailman.6598.1665425923.6077.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6598.1665425923.6077.blinux-list@redhat.com>
Message-ID: <mailman.6894.1665427256.6075.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How would fenrir be added to fedora if possible?

> On Oct 10, 2022, at 13:18, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Fenrir is a really good text-mode screen reader. Sad that I haven't seen it included in any major distro yet. I don't think even Arch where it started in the AUR picked it up in the main repositories. Actually it looks as though Debian and perhaps Ubuntu may have picked it up fairly recently if I'm reading correctly. Would be nice to see it in Fedora and official Arch repositories though. Then again, Fedora is generally a desktop OS, though a minimal version does exist, so maybe it's just under their radar.
> 
> ~Kyle
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

