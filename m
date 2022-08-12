Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A69591685
	for <lists+blinux-list@lfdr.de>; Fri, 12 Aug 2022 22:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660337984;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iuDNo79K8ZC7WxKOuoUwb5Kff1QkqtXyT+R6MITINqo=;
	b=Xb2iFxb/k08iUH3KzDij63P4RVo8cjtC0HuMdKlbSbggbvgfrju5TCxrqVfaZX4LRBuzH3
	zzZw26sLQ2ml36XvvOpmhVUTDCMCgExob7iEBPlJ/y8kEa3+YsABETdtDfkFLCKR0pqY6P
	Ws/7CQ/H0ntBtvtu9SX3HISRs06H9eA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-78-dlt1kFKxMvKsLAcsuANkUA-1; Fri, 12 Aug 2022 16:59:42 -0400
X-MC-Unique: dlt1kFKxMvKsLAcsuANkUA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 389B4802D2C;
	Fri, 12 Aug 2022 20:59:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 45C9E404C6ED;
	Fri, 12 Aug 2022 20:59:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A9F061946A52;
	Fri, 12 Aug 2022 20:59:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 12 Aug 2022 16:59:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>, 
 Matt Campbell <mattcampbell@pobox.com>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <mailman.285.1660322331.10507.blinux-list@redhat.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <mailman.285.1660322331.10507.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.336.1660337973.10506.blinux-list@redhat.com>
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
Cc: blind_linux_users <discuss@blvuug.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

speakup by default installs to a software synthesizer if one is present
like speechdispatcher.


On Fri, 12 Aug 2022, Linux for blind general discussion wrote:

> there are people using Linux in the console daily who deserve equal access.
> Second, this individual's job is to make this platform accessible...which has
> never meant blindness exclusively.
> Further this individual is no volunteer, he is being paid to have up to date
> information, not just about fedora, but for screen readers he did not even
> reference like Fenial <spelling>
> He is a single individual, That he has not seen a hardware synthesizer,  due
> to age does not mean they do not exist.
>  Is he correct that speakup default installs to a hardware synthesizer?
> I cannot imagine that being true given the work on the program.
> What bothers me most are his lack of actual qualifications, and absolute
> dismissal of what he has not experienced..as if he defines Linux usage for
> everyone.
> That attitude is dangerous, because he is educating those outside of the
> accessibility experiences, who will believe his ignorance is factual.
> he has to be expert, it is his job.
>
>
>
> On Fri, 12 Aug 2022, Matt Campbell wrote:
>
> > Hi Karen,
> >
> > I carefully read and fact-checked what Lukas wrote about Speakup. He was
> > incorrect to say that Fedora doesn't include the Speakup kernel module; the
> > stock Fedora kernel has included it for a couple of years now. However,
> > Fedora doesn't include espeakup, speechd-up, or the Speakup user-space tools
> > (e.g. speakupconf and talkwith). I also couldn't find up-to-date
> > documentation on how to use Speakup with Fedora, whether during installation
> > or afterward. Such documentation is readily available for Arch Linux, on the
> > Arch wiki. So practically speaking, his contrast between Speakup support in
> > Fedora and Arch is valid. It also doesn't surprise me that a blind person
> > who started using computers as a teenager in 2009 has never used a hardware
> > speech synthesizer, and it's undeniable that these devices are now rarely
> > used. So I don't believe he said anything that could be considered slander.
> > At worst, his knowledge about the status of Speakup in the Fedora kernel
> > configuration was out-of-date, and I'm inclined to let that go, because we
> > can't all be up-to-date about everything, especially when giving
> > off-the-cuff answers during an interview.
> >
> > More importantly, I see no reason to doubt Lukas's qualifications for the
> > job he was hired for, much less to conclude that he's merely a token blind
> > person. His personal open-source projects are available on his GitHub
> > profile <https://github.com/tyrylu?tab=repositories>. Most notably, his
> > feel-the-streets <https://github.com/tyrylu/feel-the-streets> project is an
> > accessible interface to OpenStreetMap. That project's combination of Python
> > and Rust, and its ability to run on both Windows and Linux, demonstrate the
> > tolerance for complexity that programmers have to have to make progress on
> > non-trivial real-world projects. I would want to hire him if I could. His
> > atspi2_utils <https://github.com/tyrylu/atspi2_utils> repository also
> > demonstrates familiarity with AT-SPI, the protocol that enables GUI
> > accessibility on Linux. So he seems well qualified for this job, and
> > obviously he took the initiative to get the job. I'm excited to see a young
> > blind programmer working full-time on Linux accessibility. He could bring
> > some fresh energy to this space that seemingly hasn't been there for a
> > while. I look forward to finding out what he achieves.
> >
> > Matt
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

