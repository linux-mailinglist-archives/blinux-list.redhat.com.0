Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 86DD91535B8
	for <lists+blinux-list@lfdr.de>; Wed,  5 Feb 2020 17:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580921912;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GTFbXEaiEKjMEcBBwfvSrC7BJ4euS9dHz8rWZKw384s=;
	b=VLIG0FgXa/keI7/c4FZ15v94ZhesxzxVlPO3xf9MtiywHsa1XzCegBgUuOe2H2gZbs+Esl
	FQty5Jh6d/D52p+aNPTvV/i+H9UcPZTFE5nJdvJF8oFkRZ6eC+6ncCNVb2O7NlmNkG+MtB
	09nJ5dkgJcMNi/kpwouvnyvff/9ZkIM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-UWp05KEbPxuAWJQHkt3Itw-1; Wed, 05 Feb 2020 11:58:27 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76EB4DB62;
	Wed,  5 Feb 2020 16:58:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 074F686C4A;
	Wed,  5 Feb 2020 16:58:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF32A18089CD;
	Wed,  5 Feb 2020 16:58:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 015GwGrf015096 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 5 Feb 2020 11:58:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 411D520316FB; Wed,  5 Feb 2020 16:58:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B8872016F32
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 16:58:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 268A1802092
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 16:58:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-294-E_BVw9zRMHqPab75OZhIJw-1; Wed, 05 Feb 2020 11:58:09 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48CSS12hmTzpwv
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 11:58:09 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48CSS11BVfzcbc; Wed,  5 Feb 2020 11:58:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48CSS10ljczcbW
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 11:58:09 -0500 (EST)
Date: Wed, 5 Feb 2020 11:58:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gpodder
In-Reply-To: <3C1B0D55-600E-4039-8B15-BD4E58256A7F@gmail.com>
Message-ID: <alpine.NEB.2.21.2002051157460.19887@panix1.panix.com>
References: <CADj8Jxfm9YKA=hho-tQw+q7S7vaJpHX4TjK6oKQh1rcmtabZvw@mail.gmail.com>
	<3C1B0D55-600E-4039-8B15-BD4E58256A7F@gmail.com>
MIME-Version: 1.0
X-MC-Unique: E_BVw9zRMHqPab75OZhIJw-1
X-MC-Unique: UWp05KEbPxuAWJQHkt3Itw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 015GwGrf015096
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you got caret navigation enabled with F7 yet?
On Wed, 5 Feb 2020,
Linux for blind general discussion wrote:

> Date: Wed, 5 Feb 2020 11:52:35
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Gpodder
>
> I did try that, thanks.
> Maybe there is an orca setting I need to adjust.
> I am not getting in to the menu.
>
> > On Feb 4, 2020, at 4:57 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > I just tried out gpodder on my laptop and if you press alt g you will
> > jump to the menu bar and land in the gpodder menu. from there you can
> > move and use the other menus in the menu bar.
> >
> >
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

