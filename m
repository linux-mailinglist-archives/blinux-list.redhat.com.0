Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 78DC1375E17
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 02:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620348845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3TMnnMRZdkmvif2QuOjeUsShhRQmfwqpBN/J6CJ6I+E=;
	b=ehp5y+aaiK7XdTGd9oTCw2Vi9jk1kluHVeY/jjgzP+ijZ3riww2xaJJ/Gnt6CAtR03vbqr
	WNXkBJX774Z7S19Wpgg4GXV0ITWOcsn/nrKAkBUrw3hQ1pbS9T6FQq5IjevLKHe1r5zAsD
	r/6KYlkND2sfW4p+kDf0UOw5U1d6/bk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-212-jHTUq5taPAS0Y7vArQ2T7g-1; Thu, 06 May 2021 20:54:03 -0400
X-MC-Unique: jHTUq5taPAS0Y7vArQ2T7g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF9E36123C;
	Fri,  7 May 2021 00:53:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CF61197F9;
	Fri,  7 May 2021 00:53:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 038F91800B8A;
	Fri,  7 May 2021 00:53:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1470rq4A025688 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 6 May 2021 20:53:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 23A17207B0A4; Fri,  7 May 2021 00:53:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F81A2039D43
	for <blinux-list@redhat.com>; Fri,  7 May 2021 00:53:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAB11887426
	for <blinux-list@redhat.com>; Fri,  7 May 2021 00:53:49 +0000 (UTC)
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-484-lDZ7MyLoMbaY2wvsi0ChAQ-1; Thu, 06 May 2021 20:53:47 -0400
X-MC-Unique: lDZ7MyLoMbaY2wvsi0ChAQ-1
Date: Fri, 07 May 2021 00:53:35 +0000
To: blinux-list@redhat.com
Subject: Announcing math_scanner, a project for math recognition in images
Message-ID: <26b74805-c39b-6232-a3c4-d8bbb8aecf4c@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1470rq4A025688
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello list,
it's most likely not just mine experience, that recognizing math
expressions in image documents has been always difficult, in fact mostly
inpossible.

There are some tools around promising to solve this issue, but none of
them was by any means useful at least for me, as they were unable to
recognize even the most basic formulas.

But then, some time ago, a service called Mathpix has appeared, making
use of deep learning and neural networks to recognize math expressions
and scientific figures. From my tests, its accuracy is truly impressive,
but there is one drawback. You can't feed it an image of the whole page
and get the math, you need to graphically crop only the mathematic
content you want to recognize.

So, a question arises, how could a blind person crop a formula from image?

math_scanner tries to answer this problem. It makes use of the fact,
that OCR engines can recognize the surrounding text around formulas just
fine, with the math content being a clear hole easily detectable by a
blind reader.

math_scanner tracks positions of individual characters and allows the
blind user to use them to surround the math content and get it recognized.

 From early tests, this approach seems to really work, and I was able to
read documents that were totally unreadable by any other tool!

You can read more, as well as get the program on it's repository page:
https://github.com/RastislavKish/math_scanner

I'll be happy to hear your experiences, with learning as well as
results. I found the concept quite difficult to explain, even though
it's natural once you get it, so if you have any questions, feel free to
ask.

Anyway, happy math reading!

Best regards

Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

