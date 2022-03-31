Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8254ED0F4
	for <lists+blinux-list@lfdr.de>; Thu, 31 Mar 2022 02:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648687086;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rh710tSklp4rf7rkx9V+KWP+GnNj5LCrytrh42Fn4tw=;
	b=cleWLzwKXxiJjdbwOPWf1CJloMMXaJ1pRODC+xUwQCXpthXmKAA3d9ro8J22yq/urcAIp9
	J8zv0DGAKx2gnsT2Xu8xZ2ase21mGvbZgOyHROIeLYzM5SPTnhuNZ8ZcvNIRua3La5Fclc
	QQcu0xzSu78kUEq4o8eSSJRZSyvY6RM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-110-a6xVJ64aN-ytGmstw_S_qw-1; Wed, 30 Mar 2022 20:38:03 -0400
X-MC-Unique: a6xVJ64aN-ytGmstw_S_qw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 791B2801E80;
	Thu, 31 Mar 2022 00:38:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CEA8D40D1B9B;
	Thu, 31 Mar 2022 00:37:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 701DF1947BBE;
	Thu, 31 Mar 2022 00:37:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Thu, 31 Mar 2022 00:37:47 +0000
Subject: Generating tactile drawings.
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.5485.1648687074.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I'm interested in obtaining a piece of hardware capable of
taking a vector or maybe even raster image and producing a tactile
hard copy of some sort. I'm not picky on method(cutting stencils,
making cutouts, engraving, printing with "ink" that will bead on the
surface, a Braille Embosser that can do arbitrary dot patterns or has
a free moving stylus and can draw lines, all would be nice) or
material, and honestly, the more options I had in my toolkit, the
better, but I'm starting from zero and have no strong preference about
where to start.

Where I am a bit picky is in regards to connectivity, operation, cost,
and size...

I need something I can plug into a USB 2.0 port and control from the
Linux command line... I'm also rather limited on disposable income and
workspace, so something in the $100-200 or even sub-100 price range
and which I can hook up when I want to "print" something and then stow
away ina laptop bag hanging on the wall when not in use would be nice,
especially if it can get its power entirely from USB.

So, anyone know of anything that might be a good option?

Also, anyone know of any good vector drawing programs that work from
the command line? Even just a command-line graphing calculator that
can export graphs to SVG would be great... but something that lets me
write scripts that read like instructions for a compass and straight
edge construction or allows for things along the lines of

define points a = r=1, theta=2pi/3; b = r = 1, theta = 4pi/3; c = r =
1, theta = 0
trace all points for which the product of the ditances from a, b, and
c equal some constant
trace all points that are equidistant from any two of a, b, and c.
trace all points whoses ditances to a, b, and c satisfie a^2 + b^2 = c^2.
etc.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

