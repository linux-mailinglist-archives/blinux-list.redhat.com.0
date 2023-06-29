Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFBC74228C
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jun 2023 10:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688028423;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x/zYF7Rqlwkj+DbhHB71aZGfHteojiHhBd6LHOqXOz8=;
	b=D0ddMMqrKOO+a+4AixSmrGoYmyWRnWDii9Npda56K+Q0SukByh2hnHveJrtVIizqlaHy8T
	dhsh2kflIdJB2CAFzg+l7wNqeHv1guo9EpuqorgKQEIn/LzXJHCMUK+MZTu414DK0gXlkV
	FKMeV6WIXU/xFcmoWd6fARfayjM8OQw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-hv6HOefYOWejZGuzxCYT3A-1; Thu, 29 Jun 2023 04:47:01 -0400
X-MC-Unique: hv6HOefYOWejZGuzxCYT3A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2F9C3C10147;
	Thu, 29 Jun 2023 08:46:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D4499200C0CD;
	Thu, 29 Jun 2023 08:46:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 34E871946A4E;
	Thu, 29 Jun 2023 08:46:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 29 Jun 2023 10:46:39 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: The Weirdness Just Keeps on Coming (was Can I run a .bat file
 from basica
In-Reply-To: <mailman.962.1688008087.3098369.blinux-list@redhat.com>
References: <mailman.1068.1687974160.3098368.blinux-list@redhat.com>
 <mailman.1101.1687976238.3098364.blinux-list@redhat.com>
 <mailman.964.1687976680.3098361.blinux-list@redhat.com>
 <mailman.962.1688008087.3098369.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1064.1688028412.3098363.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
basica was on the ibm and sat mostly in rom.
If you can find gwbasic.exe somewhere itmight solve your problem.
HTH, Willem


On Thu, 29 Jun 2023, Linux for blind general discussion wrote:

> I did discover that my null modem cable lacks one or two
> hand-shake lines that I would have sworn it has because I have
> used it from one Linux box to the other and in a couple of other
> situations where there was no problem so I assumed that RTS, CTS
> and DSR were all happy.
>
> 	It turns out that those times, they apparently weren't
> being used for hand-shaking or flow control so I didn't realize
> there was a problem with the null-modem cable.
>
> 	I took a continuity tester and buzzed out every line on
> both ends of the cable found two wires that do not connect to
> anything.  The pins are in the male and female plugs but they
> don't have a wire connected to them.  I have a null modem adaptor
> and also needed a gender bender so the plugs would all fit again
> and this time, com1 just came to life like Lazarus so now I can
> use ctty which is a DOS command that works to change your PC
> console to one of the com ports or even the parallel port.
>
> 	I was using com2 for my old screen reader which does send
> some of the text through to the terminal but it also sends
> garbage out which were the pitch and speed setting commands that
> the EchoGP speech synthesizer uses so it's no fun to listen to
> unless you've got an Echo PC connected.
>
> 	I about fell over backwards when I moved the cable to
> com1 and heard the A: prompt.
> 	The one fly in the ointment is that when I called basica,
> basic started and my speech stopped because it looks like the
> screen traffic is written directly to the video buffer which
> makes one's screen a lot snappier for sighted users but the
> speech doesn't go through standard output GRRR!
>
> 	The fact that com1 now works under ctty, though means
> that it is not broken after all so maybe there is a command in
> basic to send a program listing to a printer or a local text file
> on the working disk.
>
> 	I'll work on that tomorrow because the day is late and at
> least a few good things happened after all so I bet I can get
> stuff to work well enough to capture the listings finally.
>
> Martin McCormick	Amateur radio WB5AGZ
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

