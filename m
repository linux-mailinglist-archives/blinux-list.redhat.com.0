Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F14D501D0F
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 23:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649970318;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ltZitdCJz8bjwhiueTmQs72zw3vKK46DmpCIf86pFqY=;
	b=FRdvRnvntadJhW3dhaX8DAQnwoz9bICb6RG7FCF7oEGH1BWENvCEpJ+EnVzmdbLsj0vLvr
	MOMvK/YKKxeozOqppKldmcrl0doUnp37Stjp3l6SXzQBU+UOtXS7jc3kKpRP2sQLtaz0kU
	U6hwF1F6Yg3jQvjTkz0qm4x8OEMLrlg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-5zopltTXOJ2fRyus6VvsOg-1; Thu, 14 Apr 2022 17:05:15 -0400
X-MC-Unique: 5zopltTXOJ2fRyus6VvsOg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B32FE38035A4;
	Thu, 14 Apr 2022 21:05:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7EEE6463ECE;
	Thu, 14 Apr 2022 21:05:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DE007194034E;
	Thu, 14 Apr 2022 21:05:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.8563.1649967054.111208.blinux-list@redhat.com>
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8444.1649918366.111208.blinux-list@redhat.com>
 <mailman.8643.1649948214.111206.blinux-list@redhat.com>
 <mailman.8358.1649952886.111205.blinux-list@redhat.com>
 <mailman.8367.1649955905.111205.blinux-list@redhat.com>
 <mailman.8521.1649966212.111207.blinux-list@redhat.com>
 <mailman.8562.1649966917.111208.blinux-list@redhat.com>
 <mailman.8563.1649967054.111208.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 21:05:07 +0000
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
Message-ID: <mailman.8395.1649970312.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For what it's worth, I did find Windows XP far more stable than any of
the Win9x family... and Windows 2000 more stable than XP when I threw
it on the family computer around the time Vista came out... and the
few times I've had to use a Win 7 machine it didn't give me any
trouble... though admittedly, those Win7 machines were always in a
school setting with actual IT people around to keep the things up and
running... never used a Win 8 or 10 machine, but I've heard plenty of
gripes about bothand people wanting to stick with Win 7 even after
Microsoft dropped support... admittedly, much of the Win8/10 criticism
I remember hearing was about Microsoft replacing  Aero and forcing
people to get used to a new interface... and I suspect some of it had
more to do with trying to run them on insufficient hardware rather
than the OS itself having stability issues(For all its infamy, I
understand Vista is halfway decent on a rig that actually has the
horsepower to handle it).

Haven't heard anything one way or the other as to whether Win 11 is
the new good windows or the new bad windows... but then again, the
Internet has been quiet about it to the point I totally missed it
coming out last year and didn't know it was a thing until it got
brought up in this... I hesitate to call this a thread because we
stopped talking about the original subject a long time ago and its now
a mish mash of perhaps half-a-dozen conversations... ooccupational
hazard of mailing lists I guess, it's so easy to go off topic while
forgetting to change the subject line and split off a new thread.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

