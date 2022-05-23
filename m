Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8985315C4
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 21:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653334855;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UBq6uFQ6JdPLpC920LkM2b9jeO5NRhawOUBQRW8CbPk=;
	b=g9XPfe/6Jha6UBt65nxN8B1+h4GDJ7SGPlynzDgSg96umatuHK/Y7VFKST5Fql9nHa4izL
	ZVi8KOJj8xZcf4DKJev1Evu6mc5nRcmKdtwLXQLuK6YfE7Kuh/h95v/y1puxAQ+tNXF2he
	NXclwD+AlF3OuUgXJEDKogmujaepu6s=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-211-SXWh8wWaPmmu9dIU3I9obQ-1; Mon, 23 May 2022 15:40:54 -0400
X-MC-Unique: SXWh8wWaPmmu9dIU3I9obQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 652EB185A7BA;
	Mon, 23 May 2022 19:40:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ED00A2026D2F;
	Mon, 23 May 2022 19:40:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 574171947071;
	Mon, 23 May 2022 19:40:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: I'm in crisis, help!!!
Date: Mon, 23 May 2022 21:40:38 +0200
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
 <mailman.17397.1653321680.111210.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.17397.1653321680.111210.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.17025.1653334848.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I flashed Fedora Mate-compiz 36 to a drive, booted it up, used alt+f2 and typed orca. Nothing, no speech, nor Braille.

Thus, I'm stuck.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 23 May 2022, at 18:01, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I'll redownload Fedora and see if it works.
> 
> Looks like your best bet will be to download the MATE spin and then install GNOME. The version I had already downloaded and tested with the non-speaking installer is the same version 36-1.5currently on the website. The MATE version also says 36-1.5, but its installer speaks, and you should actually be able to convert it to standard Fedora Workstation through dnf. It seems the packages you need will be fedora-release-workstation, fedora-release-identity-workstation, fedora-workstation-backgrounds and fedora-workstation-repositories. Either that or just install the GNOME desktop environment over your MATE install and change your default session on the display manager screen.
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

