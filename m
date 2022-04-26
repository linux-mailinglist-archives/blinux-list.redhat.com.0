Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C806510A8B
	for <lists+blinux-list@lfdr.de>; Tue, 26 Apr 2022 22:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651005218;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=axvb6gHCJkP30h3dWAh72bo5jSj+byctD+EPhodf9vo=;
	b=VTb0C/aqOWaM9RGKgC0EcDCKYG4SNd82cqBTxAxJNbcqt7xLiepapI691FEjig/1knBU1w
	GaxyJ0rSBkT2ZSgh4K2WXEpRp148haUI/IHXzFg0rlM4K53oTYq30D3sAN9lK5/byI+ta6
	g+RM2kCKghodJQ/K3qGSqgM5az2ERMk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-83-urmouabjOBigLEFAxn_k0Q-1; Tue, 26 Apr 2022 16:33:34 -0400
X-MC-Unique: urmouabjOBigLEFAxn_k0Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E35138149A6;
	Tue, 26 Apr 2022 20:33:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 698732024CC8;
	Tue, 26 Apr 2022 20:33:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7C990194034F;
	Tue, 26 Apr 2022 20:33:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Tue, 26 Apr 2022 20:33:17 +0000
Subject: Running a Linux VM on older desktop, is it even worth trying?
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.11131.1651005205.111202.blinux-list@redhat.com>
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

Okay, so I want to give some Linux distros other than the one I'm
running a try, but I don't have a spare machine in working order to
use, don't have a spare hard drive to swap out in my main machine, and
don't want to risk my running system to try out a different distro I
might not like... The obvious solution would be to fire up a virtual
machine, but I've got a few concerns.

1. Most importantly, this machine is a decade old and I'm worried
it'll choke on a virtual machine even if it's Linux-on-Linux,
especially since I already run into circumstances were Firefox+Orca
slow to a crawl(usually on websites that Abuse JavaScript, HTML5, and
other rich web content).

My Specs are:

Vintage 2011 Intel i7. Exact model unknown, but I believe its from the
2600 series... I understand even old i7s have aged fairly well, so
this is my least concern.

4 GB RAM... I understand having this little RAM is practically unheard
of these days so this is probably my biggest concern.

All of my hard drives are platter based. I've got a swap partition of
unknown size, but since my understanding is that accessing swap and
the system partition at the same time would slow things down, I'm
guessing it would be better to store the virtual drives for my virtual
machines on one of my data drives instead of the system drive(my tower
has three harddrives, a smaller drive used for the system and two
larger drives used for data storage).

No idea if I have integrated graphics or a proper graphics card, but
I'm assuming this is mostly a non-issue since I'm not running any 3-d
modeling software or games using polygonal graphics.

2. My system isn't setup to allow me to run a full desktop, and the
script I use to launch Firefox+orca in a kiosk-like fashion only works
for a few, specific applications. I've attempted to write a script to
let me launch arbitrary GUI apps with Orca to no avail... As a result,
I need a Virtual machine that can be setup and run from a tty without
X, ideally one that can run a GUI within the VM even if it can't
render the view to the host(I don't have a monitor anyways, the only
output I need from the VM is audio).

3. I'm running a 32-bit kernel. I know my processor is 64-bit as I've
gotten the distro I'm using to boot from Live media with a 64-bit
kernel, but haven't been able to get an installed system working with
anything other than a 32-bit Kernel... Does the Host OS being 32-bit
restrict the guest OS to 32-bit as well?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

