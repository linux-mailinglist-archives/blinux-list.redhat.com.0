Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4F4952814F6
	for <lists+blinux-list@lfdr.de>; Fri,  2 Oct 2020 16:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601648573;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yqcwQI53rIe93cG6U/huQ7dtJuXNwxnHcJuG6zRqVMQ=;
	b=HNhUHi5rspy2ogoMM0HD+SRVVP0EXPDgvH7GsplZ+Xj0SO0i4tegQzQWZPtSb8O4K9+DXK
	vFx0aheg5nG0WyWxf58yQB4NlOzcSix4CEmkHkZVQmPruUW564TAV+GCPD55HCiIjJEs+Z
	T5HP57h+eJix8fiwuWLrVJ+cSG6BmWA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-303-lqde6cVdNpKHL8yFSy1C8A-1; Fri, 02 Oct 2020 10:22:51 -0400
X-MC-Unique: lqde6cVdNpKHL8yFSy1C8A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4DDF801ADE;
	Fri,  2 Oct 2020 14:22:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 586B660CCC;
	Fri,  2 Oct 2020 14:22:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC10544A56;
	Fri,  2 Oct 2020 14:22:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 092ELXf4026704 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Oct 2020 10:21:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4CD351140EC; Fri,  2 Oct 2020 14:21:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47237113F9F
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 14:21:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0C59802D3D
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 14:21:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-158-sNL9doi3M3aWGog2hnlstw-1; Fri, 02 Oct 2020 10:21:25 -0400
X-MC-Unique: sNL9doi3M3aWGog2hnlstw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C2scP3JRZz166R
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 10:21:25 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C2scP28C8zcbc; Fri,  2 Oct 2020 10:21:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C2scP1W0yzcbV
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 10:21:25 -0400 (EDT)
Date: Fri, 2 Oct 2020 10:21:25 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Continuous reading in Emacspeak and Cursor Movement
In-Reply-To: <CAGJxbF4FkVdc2mykt9ChgN2Yj2en6EvnmPeL+uVbjondqY+gsg@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2010021020430.4800@panix1.panix.com>
References: <87ft6xoznv.fsf.ref@yahoo.com> <87ft6xoznv.fsf@yahoo.com>
	<CAGJxbF4FkVdc2mykt9ChgN2Yj2en6EvnmPeL+uVbjondqY+gsg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The intent of emacspeak is to be a working environment for computers.

On Fri, 2 Oct 2020, Linux for blind general discussion wrote:

> Date: Fri, 2 Oct 2020 09:51:22
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Continuous reading in Emacspeak and Cursor Movement
>
> Unfortunately, due to the good Doctor Raman's views on
> Emacspeak's obstinance from being anything close to a "screen reader,"
> there is no such feature. You're supposed to use Emacs like a sighted
> person, mainly just using C-v and M-v to scroll, stuff like that. But then,
> he did add C-e n, that command is there, so who knows. I just use C-v to
> scroll, and C-s and just search for where I left off at.
> Devin Prater
> sent from Gmail.
>
>
> On Fri, Oct 2, 2020 at 2:28 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Hi,
> >
> > I am used to continuous reading in Orca whereby the cursor moves along
> > with the speech. In Emacspeak, however, I don't seem to get this
> > feature. So my question is: is there any way one can do continuous
> > reading while cursor is moving? I would prefer to have a cursor
> > positioned at the place where I call the pause or stop functions.
> > By the way, I use C-E n (Control +E and n) for continuous reading. The
> > frustrating thing is that even after reading a big chunk of a document,
> > once Emacs receives notification, I have to try to find the spot where I
> > think the last word spoken was. I think it may not be the optimal
> > situation for reading or reviewing documents.
> >
> >
> > If anyone is using Emacs, please can you share how you deal with reading
> > documents? I am open to any ideas for this situation even if it means
> > using any other screen reader  other than Emacspeak.
> >
> > Thanks in advance,
> >
> >
> >
> >
> > --
> > Ishe
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

