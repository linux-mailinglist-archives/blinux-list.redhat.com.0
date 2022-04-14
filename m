Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B862F501D10
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 23:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649970346;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uOOcziRh1JcuMTc2We+1XP2Euxx05X07CukrQtozFzw=;
	b=Oseh0A5dITZuQlkpbCWMBY1Ze324Jiah5usV+bF8ZKfgxRilOIPbEpwZSa9Cj6oX9sCRic
	fVdr5pL/ngAYpyE1Wfp9xcVIgdvR0lmbTtNlnEQ7aWfUEiEdB4QclwZNwpAyxsUMimaZdp
	GWnEe4eO49npRFNUyvjd44UCU+Rj644=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-491-aUmg3IyIN6C3m45Tty3W7Q-1; Thu, 14 Apr 2022 17:05:45 -0400
X-MC-Unique: aUmg3IyIN6C3m45Tty3W7Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AFD3838035BF;
	Thu, 14 Apr 2022 21:05:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9C0472166BA4;
	Thu, 14 Apr 2022 21:05:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0CD71194034E;
	Thu, 14 Apr 2022 21:05:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 16:05:18 -0500
Subject: Re: mailing list privacy, etc.
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8699.1649970342.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I agree too. If we get spam, which I mean that happens regardless, from
online account leaks of your email address, to going on dubious sites and
submitting your email because you got a text saying you won $500, spam is
gonna happen. If your mail provider, or mail server, or email client, can't
deal with spam, usually by you marking an email from a sender as spam and
the program automatically marking further messages from that sender as spam
too, then that's a problem with your setup, not the list. Of course, I
think this list is ran by RedHat, so who knows what wheels have to spin in
the big corporation, or corpse as I like to call them, to get software on
the mail server updated and this change made.
Devin Prater
r.d.t.prater@gmail.com




On Thu, Apr 14, 2022 at 3:48 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I'm in violent agreement with Didier's feelings about confusion between
> posters in this mailing list.  Reading completely anonymous postings and
> trying to figure out whether and how they relate to previous postings is a
> real drag.  That said, I'm open to various ways it could be resolved.
>
> Regarding posters' desire to be anonymous, I'll point out (again :-) that
> it would be fine for posters to use some sort of nickname, pseudonym, etc.
> It only has to be unusual enough to let the reader tell various posters
> apart.  So, for example, "Fred" isn't very useful, but "Fred123" or even
> "abc123" would work just fine...
>
> - Rich Morin
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

