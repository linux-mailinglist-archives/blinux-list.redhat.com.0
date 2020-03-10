Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id B27BE1803FF
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 17:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583859248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7b0a0U4okjLRYjbFOSt/M/HpwzR0mfIYw3HLoiJY+jY=;
	b=D44Wjm/tflRRDB08deQu3GS52XA3hQO7rA3tubP7WH/pm21nziKlNFzbupMWxJ1TGaIg5s
	ytpdZN1w+KAebbLpWQsTNB6OGhBdfo/rzopzu2VkWTPzh4Hpg0wJH/riv9Zp/T2QpujjP7
	ITwYfnlwRAQ0VN5CBj3S53heH3hNRpM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-hkzD4XP1Nl2Jaf9O6A-ZBA-1; Tue, 10 Mar 2020 12:54:06 -0400
X-MC-Unique: hkzD4XP1Nl2Jaf9O6A-ZBA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67D591937FC1;
	Tue, 10 Mar 2020 16:54:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B9C25C28E;
	Tue, 10 Mar 2020 16:53:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A1A081809567;
	Tue, 10 Mar 2020 16:53:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02AGrfjJ008320 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 12:53:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 368372093CFC; Tue, 10 Mar 2020 16:53:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31D112028CD4
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 16:53:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18CB0101A55A
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 16:53:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-328-4dQ9SgZfO5q0QMi10eLZ1g-1; Tue, 10 Mar 2020 12:53:36 -0400
X-MC-Unique: 4dQ9SgZfO5q0QMi10eLZ1g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48cLl40XyXzp91
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 12:53:35 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48cLl36g4jzcbc; Tue, 10 Mar 2020 12:53:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48cLl36Yg5zcbW
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 12:53:35 -0400 (EDT)
Date: Tue, 10 Mar 2020 12:53:35 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: orca master
In-Reply-To: <2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
Message-ID: <alpine.NEB.2.21.2003101253010.6296@panix1.panix.com>
References: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
	<ccc1f11e-f015-f66f-c897-e6bbf9c0afc3@crosslink.net>
	<CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
	<2C30B027-FF78-4791-A129-7BA6865373CB@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02AGrfjJ008320
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Orca is the stable version, orca-master is the bleeding edge version.

On Tue, 10 Mar 2020, Linux for blind general discussion wrote:

> Date: Tue, 10 Mar 2020 06:52:29
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: orca master
>
> I know what orca is, the screen-reading program.
> What is orca master
>
> > On Mar 10, 2020, at 12:32 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > The best PDF experiance I know about currently is if you run Orca master
> > with the latest snapshot of chromium or Chrome. The builtin PDF reader of
> > Chromium is very nice, it places every page under a different landmark so
> > you can navigate between them with m and shift+m. It even support a few PDF
> > tags by converting them to their HTML equivalents, headings for example.
> >
> > Regards,
> >
> > Rynhardt
> >
> > On Tue, 10 Mar 2020, 04:07 Linux for blind general discussion, <
> > blinux-list@redhat.com> wrote:
> >
> >> Ubuntu Mate Desktop seems to have Atril Document Viewer.  If you press
> >> F7 to turn on caret browsing it seems to be usable with some PDF files.
> >> I have not used it extensively.  You can also press control-a to select
> >> the entire document and paste it into an Editor.
> >>
> >>
> >>
> >> On 3/9/2020 5:36 PM, Linux for blind general discussion wrote:
> >>> Hello,
> >>>
> >>>
> >>> is there any accessible pdf viewer on Linux which can be used wiht
> >>> Orca screen reader?
> >>>
> >>>
> >>> Evince seems not to belong to this category.
> >>>
> >>>
> >>> Thank you in advance!
> >>>
> >>> Vladyslav
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

