Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A410592FDD
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 15:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660569988;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fel5jGIfPQZBumh443cGMrDzSTkSUbCWBSoWjb0zvgU=;
	b=B/+pUpwoIfwGNzONUSoG5eOVskk8CYkLzFA1D81KHFkJVrDq1DR8zRMURGzD4KeRtZqNu4
	DEaXiw5RxNHfrSWy1Ul9q9n4PhUJDGq2DaH397EN498VGxuQASxHMQdCOHqqNy9G22uyAE
	Fb1AomTJh8zMn/mQZLmGyYmRR9sQTHA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-50-ehdvDT53MhOhyIQNcU7eew-1; Mon, 15 Aug 2022 09:26:23 -0400
X-MC-Unique: ehdvDT53MhOhyIQNcU7eew-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D5471C06EC0;
	Mon, 15 Aug 2022 13:26:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 016DF1415132;
	Mon, 15 Aug 2022 13:26:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D42D51946A54;
	Mon, 15 Aug 2022 13:26:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <mailman.526.1660482367.10505.blinux-list@redhat.com>
 <mailman.570.1660487404.10502.blinux-list@redhat.com>
 <mailman.564.1660515996.10499.blinux-list@redhat.com>
 <mailman.613.1660532979.10500.blinux-list@redhat.com>
 <mailman.685.1660569154.10504.blinux-list@redhat.com>
In-Reply-To: <mailman.685.1660569154.10504.blinux-list@redhat.com>
Date: Mon, 15 Aug 2022 08:25:55 -0500
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.645.1660569970.10505.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For me, I still love Linux enough to keep up with the accessibility stuff,
and even try it every six months or so. However, the last time I tried it,
Orca was so unstable that I managed to crash it by pressing Alt + Tab. Now,
this was on an HP Pavilian laptop, but I don't see how any lack of hardware
drivers would *only* effect accessibility. I tried Fedora, Ubuntu, and I
think Mint. All performed the same. Well, Ubuntu lasted a bit longer but
still, wow. Now, before I get another batch of complain-mail, I'm not
saying Linux isn't usable for those who don't have demanding jobs with
oodles of rolls to fill and hats to wear and people to work with. It's nice
for home users and simple tasks, and even some development, in Emacs or
Nano or VIM or whatever. But it's not ready for *me* yet, and the people
who still develop NVDA addons, apps like Tweesecake and Bookworm, and
remote desktop solutions, all show, to me at least, that Linux isn't ready
for them yet either. I could be wrong. I admit it. But those are my
opinions, backed up by *my* experiences.
Devin Prater
r.d.t.prater@gmail.com




On Mon, Aug 15, 2022 at 8:12 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> (from Matt Campbell)
>
> Thanks all for the appreciation and memories. But I'm afraid that, at
> the risk of getting philosophical, the person who created ZipSpeak and
> trplayer no longer exists. I remember being him, and I still have his
> name and email address, but I'm no longer him. I've changed so much over
> the two decades since then. Nothing makes that clearer than Chris's and
> Karen's concerns about my attitude toward Linux console users and, more
> generally, people who don't follow the whims of mainstream technology
> for whatever reason. And those responses have given me something to
> think about, but I don't yet know what I'll do about it. I said what I
> wanted to say on the Fedora accessibility article, and maybe I shouldn't
> have even let myself get pulled into that thread. But I think I'm now
> philosophically far enough away from many, or even most, in this
> community that I will probably retreat again from this list and other
> related lists.
>
> Matt
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

