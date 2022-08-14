Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5365926F1
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 01:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660519591;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UsWozwfilWy+rgrzl/IwH+29cc2EP1DnPPmrXqc/Gl4=;
	b=PBa5gaQiAOlTCf4KsxLS/CrajE4aczloNPMKhHrVB+U0bprw7Lw7LOfr9Z4niEKdDSf7/C
	lKEKxZaeJ/LVU32d8b/gyW702qfM3FBNEUyDwvcEgm25pCRvuat5xGfelpJqMjfdijanKE
	6DKMyq5h4xydoMZknIGOI2b77oz1CCg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-j04a70JOPBGV5HyRSbWkmw-1; Sun, 14 Aug 2022 19:26:28 -0400
X-MC-Unique: j04a70JOPBGV5HyRSbWkmw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D84B61C05149;
	Sun, 14 Aug 2022 23:26:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A849A2026D64;
	Sun, 14 Aug 2022 23:26:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3F0471946A49;
	Sun, 14 Aug 2022 23:26:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <8d72d3ff-01d5-9f5e-c2b1-fb10a024e047@pobox.com>
 <87k07ak5a8.fsf@the-brannons.com>
 <mailman.610.1660519271.10502.blinux-list@redhat.com>
In-Reply-To: <mailman.610.1660519271.10502.blinux-list@redhat.com>
Date: Sun, 14 Aug 2022 18:26:09 -0500
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.598.1660519584.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I mean, we don't have to have volumes of Braille anymore, just a Braille
Display, which work great with BRLTTY.
Devin Prater
r.d.t.prater@gmail.com




On Sun, Aug 14, 2022 at 6:21 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I echo this attitude concern, but for a different reason.
> who gets to decide what bodies  deserve a place at the table?
> because of a vascular accident in an eye surgery, I experience a brain
> anomaly where certain frequencies stimulate the dizzy centres of my brain.
> allot of those frequencies happen in poorly designed software  speech
> configurations for Linux.
> Meaning, because little effort has been made to give choices for Linux
> speech in the gui, if I wanted to use this, I would have to choose between
> a Linux computer and hospitalization.
> compare this with apple hardware.
> I recently aquired a  mid 2012 macbook pro which, because of how the
> voiceover   sound is produced is perfectly safe for my use..and I can
> still run  only one  Mac os off  from the last pre m.1 systems.
> i have an associate in my office running their business on a 2011 macbook
> pro.
> Indeed climate change, landfill issues, available resources in terms of
> training and access all over the world.
> And, for many how their body works mandates choices.
> There was a time when one of the great things about Linux was that it
> could be used to breathe  new life into older hardware.  especially
> helpful in  non-western countries where getting the fastest car on the
> road was costly.
> If your attitude was the rule though, those folks regardless of abilities
> might never get computers at all.
>   take your attitude and say substitute braille.
>   Statistically less than 10% of the blindness community are braille
> users,
> meaning the majority do not  use it, or even learn it if newly blinded.
> so, its unfortunate some blind people are still stuck needing volumes and
> volumes of braille, but  to expect the world to confirm to such a limited
> use language etc.
> Speaking personally, especially given how flexible Linux is  supposed to
> be?
> deciding some have no place at your gui table is little different than
> deciding those who are visible minorities, no matter the location, have no
> place at the table either.
>   Karen
>
>
>
> On Sun, 14 Aug 2022, Chris Brannon wrote:
>
> > Matt Campbell <mattcampbell@pobox.com> writes:
> >
> >> I took this position in 2000, but for the last decade or more, access
> to a
> >> GUI has been widely available to blind people at no extra cost. (If
> there
> >> are blind people today who are truly stuck on old hardware with no
> >> accessible GUI, that's unfortunate, but I think this is one case where
> the
> >> best solution is charity, not expecting the rest of the world to
> accommodate
> >> this situation forever. That's no different than for sighted people
> stuck on
> >> very old hardware.)
> >
> > I'm sorry, but this is a very irresponsible attitude, given the impact
> > of climate change.  And now on top of that, the world is coping with
> > supply chain issues.  "Chuck it in a landfill because it won't run the
> > latest Electron app" is deeply unacceptable.
> >
> > I do agree with you about the importance of GUI accessibility, even
> > though I only use one when circumstances force me to it.  I'm somewhat
> > optimistic about the recent news.
> >
> > -- Chris
> >
> >
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

