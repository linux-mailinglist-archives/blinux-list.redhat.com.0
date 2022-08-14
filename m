Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9F7591D8B
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 04:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660442973;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AbqL9WHLBgoCpRpitn1kWiDjFPFOw99IR2lfl13tT1M=;
	b=duLqk9i99gePMghGoMLYghmi06GW1LesR9fNKyNHVngp67vRsYBmqJ7iyo9++tNRPpHCgc
	dep2z32YPzEuZ/p46H1Pu3OQRaL2p9YpqRSWBTAglhQq2O7BXMzI0lI6ZSZ1sCi2s/+Xjy
	6xEA3mO0cpBBxMwsn7/Oo0E7xVYe90Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-634-_qvSPUJJPhOMOJeYyOkRmA-1; Sat, 13 Aug 2022 22:09:30 -0400
X-MC-Unique: _qvSPUJJPhOMOJeYyOkRmA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A191D3C0218A;
	Sun, 14 Aug 2022 02:09:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8DB5A40CF8ED;
	Sun, 14 Aug 2022 02:09:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E8FE91946A4B;
	Sun, 14 Aug 2022 02:09:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 Aug 2022 22:09:24 -0400 (EDT)
To: Jookia <contact@jookia.org>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
MIME-Version: 1.0
Message-ID: <mailman.480.1660442968.10499.blinux-list@redhat.com>
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
 blind_linux_users <discuss@blvuug.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As I have said more than once, that is not how this article is being 
represented in the broader Linux community.
I will add that, by this person's own admission, clean up is the task he 
is *choosing* to focus  upon.
he is, according to those writing the article bringing accessibility to 
Fedora workstation.
i respect that for those in the know, in the choir so to speak what he is 
doing is clean up.
but that is not how the general Linux community is taking this 
information.
Best,



On Sun, 14 Aug 2022, Jookia wrote:

> Hi Karen,
>
> It seems like discussion about this article has been flooding my inbox
> over the past few days so I figured I'd finally read the article.
>
> It looks like he's just going to tidy up GNOME application accessibility
> which ... isn't that hard a job (at least for a sighted person), just
> tedious and political. This doesn't really require high certifications
> or degrees, just labor and people management.
>
> If we demand people have amazing certifications to do work like this
> then you'd end up in a situation like Gitea which has decided to close
> and lockevery unfixed accessibility issue in their tracker and seek a
> paid professional accessibility audit just to tell them to fix their bugs.
>
> Saying speakup without espeakup is basically useless is a stretch, but
> they're certainly rare devices at this point.
>
> Jookia.
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

