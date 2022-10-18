Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A9960304F
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 17:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666108551;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yDm9lavSdHXW0DwElkgCAEfkS1Mj4jgmUq5M5fUSfwg=;
	b=BFQozNnPqJtVL9DxPj4MNPoMgs79UKG0ycJysTXvIeR+510MFwTBxzWWg0LFSZZy46jwo/
	ng1omx1/hmfzooDCr+y0memfnD9blf1LibwXS8RQSDhpcwIAmoTFBb0mrVYsvMIGuFH2gm
	VMC5mw/tGXLi3OeHgGiAgNxafvlGR48=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-VpU1qvIoNz6_3hxvVkeqCQ-1; Tue, 18 Oct 2022 11:55:48 -0400
X-MC-Unique: VpU1qvIoNz6_3hxvVkeqCQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B0C9811E87;
	Tue, 18 Oct 2022 15:55:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 11C67E202F;
	Tue, 18 Oct 2022 15:55:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0F03819465A2;
	Tue, 18 Oct 2022 15:55:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.952.1666105929.3007.blinux-list@redhat.com>
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
 <mailman.880.1666101707.3003.blinux-list@redhat.com>
 <mailman.952.1666105929.3007.blinux-list@redhat.com>
Date: Tue, 18 Oct 2022 15:55:30 +0000
Subject: Re: Turning off screen in Linux
To: blinux-list@redhat.com
Message-ID: <mailman.915.1666108535.3011.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Obviously, the power savings depends on the display and whether those
savings are noticeable kind of depends on the power consumption of the
rest of the system. Power hungry display with power efficient
processor, you might add hours to a typical charge. Efficient display
with a power hungry processor, you probably won't notice a difference
on battery life.

But hey, even if the savings are small, why waste power on something
you aren't using? And even small savings can add up if you can find
enough of them.

Besides, power saving isn't the only advantage of turning off a dead
weight display. Sighted people not being able to casually look over
your shoulder(assuming you aren't taking advantage of not needing to
look at the screen to adopt a computing posture more comfortable than
anything a sighted person could manage and leaving the screen
completely exposed in the process) is a nice benefit, and back when I
had the ASUS netbook and was using it as my primary computing device,
I had not long gone blind in my left eye(went blind in the right as an
infant) and was suffering such acute photosensitivity that the ambient
light from a netbook screen in an otherwise dark room was painful, and
I was still suffering the photo sensitivity when I got the Acer that
treated every keystroke as a display on command. I didn't even need to
look at the screen, just the light reflecting off dark, matte surfaces
in my room was enough to make my eye hurt almost as badly as it did
after the failed retinal reattachment surgery and for tears to flow
like Niagara falls. I've mostly gotten over my photo sensitivity, but
I highly doubt I'm the only blind person to ever find a dark room more
comfortable and that the darker, the better, and that a computer
display that refuses to stay dark is somewhere between annoying and
intolerable.

And power savings, privacy, and sensory comfort are just the reasons I
can think of to prefer a computer's display to stay dark.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

