Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8351B5E94FA
	for <lists+blinux-list@lfdr.de>; Sun, 25 Sep 2022 19:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664127482;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LlDrTUONHfAmSezoL+y1x6Ymas1kPYzchMK1pCN50yI=;
	b=VlsdnPJXn3DLid0u2nJR9JTPvmi1RbdBGqBeci8doKGlBqkZ1lPxUR6LKwbec4BlDOFX6Y
	jZN5dn0s3lkgcbXblCMHlSAtNyJT5eI+jx8vHX6a0E/uDUcIGAXz9hdt2tw8V3UdlXEww6
	OhbkpdDffh7215p4hUG6PDnhE7Vxcks=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-354-vHeTt26qPCioHSk3qJcCHQ-1; Sun, 25 Sep 2022 13:37:59 -0400
X-MC-Unique: vHeTt26qPCioHSk3qJcCHQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B3B73C0E201;
	Sun, 25 Sep 2022 17:37:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B1C7D40C2064;
	Sun, 25 Sep 2022 17:37:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 462D619465A3;
	Sun, 25 Sep 2022 17:37:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 25 Sep 2022 13:37:45 -0400 (EDT)
To: Hendursaga <hendursaga@aol.com>
Subject: Re: slack in Ubintu?
In-Reply-To: <87fsgf7472.fsf@aol.com>
References: <Pine.LNX.4.64.2209251225030.2246441@server2.shellworld.net>
 <87fsgf7472.fsf@aol.com>
MIME-Version: 1.0
Message-ID: <mailman.2358.1664127470.6074.blinux-list@redhat.com>
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
 blind_linux_users <discuss@blvuug.org>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks, I am not using Linux directly, but a service which is based on 
Ubuntu as a shell.
will pass this thread on and thank you  for several  prospects.
Kare



On Sun, 25 Sep 2022, Hendursaga wrote:

> Karen Lewellen <klewellen@shellworld.net> writes:
>
>> Anyone have first hand experience using the program in Linux generally, or a Ubuntu shell specifically?
>
> I generally just use the browser client, I'm afraid, but sclack[1] was the last TUI client I tested, though I doubt it's very screen-reader friendly, unfortunately. I've looked around and it appears irslackd[2] might be the best Slack API <-> IRC gateway around. There's also localslackirc[3], which is packaged in Debian and thus Ubuntu, though if the version packaged is a bit old you might want to compile from source.
>
>> I understand there used to be an IRC client, but that the company no longer provides the Authentication token used to run it.
>
> An IRC gateway, yes.
>
> ~ Hendursaga
>
> [1] https://github.com/haskellcamargo/sclack
> [2] https://github.com/adsr/irslackd
> [3] https://github.com/ltworf/localslackirc
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

