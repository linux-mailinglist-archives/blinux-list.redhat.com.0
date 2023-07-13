Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 975C3752766
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jul 2023 17:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689262730;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bph2nCdATKJzv/w0WXd/Ctz+Tcwu4QnGBwgIVKZTS1k=;
	b=U0svKRfZSacNhKEJFNY1t40m6N7wLeyNwxNnE4MgpPnd6q7Gog9AIiLyNIqZdcfkZlUxYb
	YxZ1Ec/bnKvyjfbXTr9W3UPhNxQ0lxPpLi2IifgCexCg8uRBbb/CyPotZaXQcdwzb7RSZZ
	kD3UuKCukpjdNC3lNdRFhP7FoULi4hs=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37-J9U0v5YiNeqZYRaZBis6OQ-1; Thu, 13 Jul 2023 11:38:49 -0400
X-MC-Unique: J9U0v5YiNeqZYRaZBis6OQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14AE82800EA9;
	Thu, 13 Jul 2023 15:38:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 339644028AA6;
	Thu, 13 Jul 2023 15:38:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8625C19465B3;
	Thu, 13 Jul 2023 15:38:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 13 Jul 2023 11:37:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Slint for beginners?
In-Reply-To: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.24.1689262689.110736.blinux-list@redhat.com>
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

Yes, I think slint would be a good distribution for you as a beginner if
you select to start in console mode during the installation.  The reason
is even with mate and running mate-terminal the speech is less stable than
with speakup and running in console gets you speakup and other screen
reader packages that are more stable than orca.  If you decide to go with
slint, please do yourself a favor and subscribe to the slint email list.
That's on freelists.org since that way you'll get operating-specific help
and you're not the only one using slint with a screen reader on that list.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Wed, 12 Jul 2023, Linux for blind general discussion wrote:

> Good afternoon,
> I am new to Linux & am currently using Mint 21.1, but keep loosing speech with Orca.
> As a result, I may switch to Slint, which was recently recommended to me by a friend.
> Before I do though, I'd like to get opinions from the members of this list as to whether or not this would be a good distribution for me, as a beginner?
>
>
> Thanks,
> Jessica Dail
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

