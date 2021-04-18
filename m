Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 46A293632E0
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 02:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618706574;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sZ3qi91AuOp4joZCOHJK07YlrNoC8mXCkgzcCBRwxZM=;
	b=aWrtPZKOzL9xZXFz6RJYkjJt2yUXov6vZDoWzf9dBRs43xmqsScbW0QSBuIlIOT1tFvw1X
	uK0/a57eXHikwHcXPh4spSqFfyIMcQzQjb5O5V82Gg4CM1tUdZ2xlazUPEUfzxOyUTmB3v
	bEdFHoCKrtVzcHvtFpQojgxKkSZXiDY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92-DvQRzuX4PaWRedL8DwPGyA-1; Sat, 17 Apr 2021 20:42:52 -0400
X-MC-Unique: DvQRzuX4PaWRedL8DwPGyA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4711D18397A4;
	Sun, 18 Apr 2021 00:42:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1175C19C66;
	Sun, 18 Apr 2021 00:42:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 957A81C98;
	Sun, 18 Apr 2021 00:42:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I0gU5W005338 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 20:42:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB80B2087A43; Sun, 18 Apr 2021 00:42:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C52822087A49
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:42:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D0CD801E8D
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:42:28 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-347-531DI61tPyy8aMuXB5vc4A-1; Sat, 17 Apr 2021 20:42:25 -0400
X-MC-Unique: 531DI61tPyy8aMuXB5vc4A-1
Received: by mail-qk1-f180.google.com with SMTP id u20so491946qku.10
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 17:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=r/IlyJfX9namG0MEKMZL54k3wS0z8aCMVvTlRoJVtWk=;
	b=g3schjoHNlNNnTWqwg+OON+ZnBSqNSD72pE7WVV0z2mAUmDuuOtQfGC1Fh0+u4x0Xu
	c94oqeelXnp7VygrymnIHCH0z/HYmeRrcZzrrOHiljAr1YSLFru5S3Il1XIbB02z/G/M
	c1DR89jRJBkjNCb/IONj9YDMZoSbysiIjAf2EOzVH00bEw+bomMIBzxiW4OhlLKGx64y
	XQnRHBqSqHUsVOiwHJECLqS5CbJtur/2lDSGbdihGuNYEyyn0dIamKHxIONmBXjV8ap5
	s7ZtdhcgFBvTc5eghnOTZZZnQVrJxfX8uci4FMt4P7iVVHHCGO+6CoTFj96Hp6kluEic
	MwOA==
X-Gm-Message-State: AOAM533OQf1c9qm3ZzWFLQ0qUEIkr9YlbSJ9qh8Hq28RrnhE/LR/EZ1A
	nMIk/A3IrmkrJzT4ELmg7R7XfMTvCxVfNPytHKdGtuv5G9s=
X-Google-Smtp-Source: ABdhPJw3XSgHebhGU9XJrVvX9lyBj13IkBLXkh8gmPknW7XKgQpPovEOc3ZmODmZjUmpYGPoMCCp80WmS9Xpude9D8Y=
X-Received: by 2002:a37:9fd0:: with SMTP id i199mr5766098qke.264.1618706545315;
	Sat, 17 Apr 2021 17:42:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Sat, 17 Apr 2021 17:42:25
	-0700 (PDT)
In-Reply-To: <161870350119.8.17896736538043458897.5969450@slmail.me>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
Date: Sun, 18 Apr 2021 00:42:25 +0000
Message-ID: <CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Don't get me wrong, more natural sounding TTS with proper inflection
would be great, and for me, the holy grail would be TTS capable of
reading a digitized novel in real-time or reading subtitles on foreign
media in real-time and be indistinguishable from a human cast
recording a audio dramatization or dubbed vocal track... but unless
there's been massive improvements in recent years I'm unaware of, the
natural voices are at that point where they almost sound human but
fail in a subtle but unsettling way that's hard to qualify, and until
we get over that hurdle, I'll take the obviously robotic monotone over
the almost, but not quite, passes for a human reader voices for daily
work.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

