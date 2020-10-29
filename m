Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 52C9A29F69E
	for <lists+blinux-list@lfdr.de>; Thu, 29 Oct 2020 22:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604005643;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r4e0TQhwfPmPPPR6SBDIhJJNUt7QmL5xaRsIKPMTZv0=;
	b=TMaDzrI3xUa7WZPfoj5eVnZ/v/Vsa6KvXxoI639s8OKh1d9393nyPopOja7KhLMthLgbKn
	x7WlvhJii5CLdOhxAETez0SJTqpfp5KYqFrjPIaPwFGBcJ4c4WFf77L1CnvqgAFJFx+ko0
	XqTtyTAtgCq0gWNSn0IIyoX8UeqXfvI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-5lDGl6d4Nu-DiEoLqgJ9lA-1; Thu, 29 Oct 2020 17:07:21 -0400
X-MC-Unique: 5lDGl6d4Nu-DiEoLqgJ9lA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE12D1009E47;
	Thu, 29 Oct 2020 21:07:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1937672C0;
	Thu, 29 Oct 2020 21:07:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E3FF181A050;
	Thu, 29 Oct 2020 21:07:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09TL6xtG003827 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 29 Oct 2020 17:06:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6F2212166BD9; Thu, 29 Oct 2020 21:06:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AAA42166BA3
	for <blinux-list@redhat.com>; Thu, 29 Oct 2020 21:06:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24159101AA40
	for <blinux-list@redhat.com>; Thu, 29 Oct 2020 21:06:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-375-byCZwz6lNViCCkTPoi4vAA-1; Thu, 29 Oct 2020 17:06:54 -0400
X-MC-Unique: byCZwz6lNViCCkTPoi4vAA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CMdKp1q0WzKtB
	for <blinux-list@redhat.com>; Thu, 29 Oct 2020 17:06:54 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CMdKp1Z1Vzcbc; Thu, 29 Oct 2020 17:06:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CMdKp1SdRzcbV
	for <blinux-list@redhat.com>; Thu, 29 Oct 2020 17:06:54 -0400 (EDT)
Date: Thu, 29 Oct 2020 17:06:54 -0400
To: blinux-list@redhat.com
Subject: something is wrong in make menuconfig
Message-ID: <alpine.NEB.2.23.451.2010291701230.26879@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tried building a gentoo kernel I've verified boots and the problem is the
sound card.  No external speech synthesizer and no braille display so need
to use sound card facilities.  I think speakup will work once sound card
is sorted out.
What I would like to know is I hope less complex.  I am probably going to
need to share output over irssi in #gentoo or #gentoo-accessibility on
freenode.  How is that done where I have a file on my end and people or a
person in the chat room needs to loook at it using irssi?
I never successfully built a kernel before and only got this far following
instructions in the official handbook and I got help from another speakup
user who uses gentoo on the speakup details.



-- United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

