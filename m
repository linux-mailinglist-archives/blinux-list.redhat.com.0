Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEEE4CE657
	for <lists+blinux-list@lfdr.de>; Sat,  5 Mar 2022 19:06:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646503589;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ak9Rm1FD7HNMqjywF4eSYDeQheSBik4E2j6BG9zMyq4=;
	b=FIo1hUdc4sWV9LvJs/bNilsAKX8AaXZby5WZDJP21DZCCmI/g7k2rGy/zeVxU/P8sxZ3SI
	CZGJbrVf/kCmzDejmHXNsUCecrtjkgqT+FO+0729uKIleIRhYQFoyqSN41YOwfQJhRcHIS
	2eeTYSegQQ8/p3fHzWzHI7XaHqjYkqQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-630-irh9eiOwPSWItq4mkiEoww-1; Sat, 05 Mar 2022 13:06:26 -0500
X-MC-Unique: irh9eiOwPSWItq4mkiEoww-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7E0980159B;
	Sat,  5 Mar 2022 18:06:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0F586454D98;
	Sat,  5 Mar 2022 18:06:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 382681931BE8;
	Sat,  5 Mar 2022 18:06:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.4.1646501939.61342.blinux-list@redhat.com>
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
 <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
 <81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
 <f6f1709d-1e1f-6979-8036-a1a261f6f330@protonmail.com>
 <37d011eb-16c0-f52d-1e12-f6e422ca4c5c@free2.ml>
 <mailman.2.1646492601.61339.blinux-list@redhat.com>
 <mailman.4.1646501939.61342.blinux-list@redhat.com>
Date: Sat, 5 Mar 2022 18:06:05 +0000
Subject: Re: Snap, Flatpak and/or AppImages?
To: blinux-list@redhat.com
Message-ID: <mailman.8.1646503582.61344.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, Ubuntu 20.04 LTS is nearly two years old at this point... and
honestly, installing a bunch of packages that duplicate dependencies,
don't integrate properly with the rest of the system, and might break
accessibility due to that lack of integration sounds inferior to just
running a newer version of a given distro... Back when I used Ubuntu,
I typically ran the current development version, only switching to the
current release if the development version broke something and only
touching the most recent LTs if it was the most recent release
period... Right now, most of my installed packages are sourced from
debian unstable with just a handful of packages from Debian Stable(due
to breakage in the testing/unstable versions I can't determine the
cause of), Debian Experimental(mainly Orca and other accessibility
stack packages) and a few locally installed, and flatpack, snapd, and
appImages all sound unappealing.

Granted, I also try to keep my installed system as small as possible
to keep the time it takes to create or restore a backup of my system
drive short, so all of these alternative package formats duplicating
all of a package's dependencies instead of using the installed copies
is a real deal breaker if there's any alternative... Thankfully, it's
been a real long time since I've seriously wanted to install something
not available from the debian repositories.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

