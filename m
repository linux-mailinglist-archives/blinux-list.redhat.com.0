Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F13591C68
	for <lists+blinux-list@lfdr.de>; Sat, 13 Aug 2022 21:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660418863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8FzI3dUd+RBURrwwgNHEB1DqS2ZLI1sux4wTD2rko8I=;
	b=at3pmVij3shTm69JPwnP0932LBaLuMVwO0QSXIe4hNl5Kc70wl2C7m3q6GUrIMNZLBEgEu
	MLUdmiFnKqA5AMdX9CaaWr+ZuAW02sKh3lHEEf5PuuBu8XtaFK9xt+Gt4QdPobfx0Jw22N
	eJoPw4A47KHGr9n1hxxrznOvlUBeZbs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-505-bQqcU87vNwO4WL1wojMFLA-1; Sat, 13 Aug 2022 15:27:40 -0400
X-MC-Unique: bQqcU87vNwO4WL1wojMFLA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94739101A54E;
	Sat, 13 Aug 2022 19:27:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AA626400DFD7;
	Sat, 13 Aug 2022 19:27:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F233D1946A52;
	Sat, 13 Aug 2022 19:27:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 Aug 2022 15:27:30 -0400
To: K0LNY_Glenn <glenn@ervin.email>, Karen Lewellen <klewellen@shellworld.net>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net><1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com><Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131437260.1254020@server2.shellworld.net>
 <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
MIME-Version: 1.0
Message-ID: <mailman.419.1660418853.10499.blinux-list@redhat.com>
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
Cc: Milan Zamazal <pdm@zamazal.org>, Blinux-list@redhat.com,
 speakup@linux-speakup.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jude DaShiell here, the Wufrug Group I think from Kuwait bought out FS.
By now, Wufrug Group may have sold FS to another corporation for all I
know.


On Sat, 13 Aug 2022, K0LNY_Glenn wrote:

> Well since Orca seems to work on so many distros, I don't know why FS would
> not be able to do the same.
> If Jaws users could switch into Linux, it would be a real game changer, and
> I think with lots more Blind Linux users, we would start seeing
> accessibility in Linux not being a second thought.
> Glenn
> ----- Original Message -----
> From: "Karen Lewellen" <klewellen@shellworld.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> <Blinux-list@redhat.com>
> Sent: Saturday, August 13, 2022 1:47 PM
> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>
>
> Well technically freedom scientific does not exist any longer, being bought
> by another company.
> Still, I can respect why they, or nvda have not created their tools for
> Linux.
> That is because as I understand it, Linux is  quite like clay. You can
> mold a distribution into almost anything. there are various
> personifications of the system, all sorts of ways and changes and options
> for creativity.
> however adaptive tools are often extensions of physical characteristics,
> hands, eyes, ears, brains, combinations of these.
> To build solid assistive tools one must have a solid  foundation as it
> were.  that is part of why there have needed to be so few Apple  efforts at
> inclusion, they  created  with, and then created in-house adaptive tools
> for various  populations that were built into the system.
> Although Microsoft did not bother until much later, in theory at least, the
> consistency of windows is what makes it possible for freedom or the former
> gw  micro or nvda to create something that can in theory  work.
> Floor for the furniture is somewhat solid.
> Just my thoughts,
>
>
>
> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>
> > I would like to see Freedom Scientific make a Jaws For Linux.
> > JFL
> > I'd certainly pay the yearly rental fee for it, and it would bring many
> > more
> > users into Linux.
> > FS could, with its resources, possibly make it more robust than Orca.
> >
> > Glenn
> > ----- Original Message -----
> > From: "Milan Zamazal" <pdm@zamazal.org>
> > To: <speakup@linux-speakup.org>
> > Cc: <Blinux-list@redhat.com>
> > Sent: Saturday, August 13, 2022 12:08 PM
> > Subject: Re: "Accessibility in Fedora Workstation" (fwd)
> >
> >
> >>>>>> "KL" == Karen Lewellen <klewellen@shellworld.net> writes:
> >
> >    KL> What bothers me most are his lack of actual qualifications, and
> >    KL> absolute dismissal of what he has not experienced..as if he
> >    KL> defines Linux usage for everyone.  That attitude is dangerous,
> >    KL> because he is educating those outside of the accessibility
> >    KL> experiences, who will believe his ignorance is factual.  he has
> >    KL> to be expert, it is his job.
> >
> > Hi Karen,
> >
> > I know Lukas personally and I admire his skills and qualifications.  I
> > also know first hand that he is open to constructive feedback and I
> > believe he?d be happy to be corrected about possible technical
> > inaccuracies in the interview.  It may be also a good opportunity to
> > find out what?s possibly missing in making anybody better informed.
> >
> > As for ?absolute dismissal of what he has not experienced?, what
> > reasonable free software alternatives to a less or more standard desktop
> > with Orca and a software synthesizer can you see for a common blind user
> > who needs to use a fully working web browser, to read and process text
> > documents, to be compatible with other computer users, etc.?
> >
> > And let?s be realistic.  We celebrate every single developer hired to
> > improve accessibility.  This tells something about the state of the
> > matters.  We cannot expect that a single person will fix all the kinds
> > of accessibility problems in all the environments.  Lukas works at his
> > job focusing on certain areas currently seen there as urgent ones and I
> > appreciate this opportunity.  Anybody else seeing a need to work on
> > other areas is welcome to contribute to whatever sees fit, as I do.
> >
> > Regards,
> > Milan
> >
> >
> >
> >
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

