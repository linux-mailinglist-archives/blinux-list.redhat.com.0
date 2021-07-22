Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B6B473D2BF3
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 20:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626978666;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Els5Edpd20at3TkMh3N5rINp85dchi8faaIv1+L/g68=;
	b=ExKE/EXGCU3TACYAJ8L001whr8zjv/3sdtDnzJ1f6nAjJO9a/4dQWd7Fqs42WJWBZ0M7un
	cWEYzzJIvRzKkc8VKsvsfUiZ2L4MQ2kTd4QhfCKkahB7fEe5nC5CPHNL0Kias7lKIYL7dZ
	JUn9M3CHYMWlwQpkIjc4Zx6NFvVayJ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-5LVEekzvPtK7U1c4sxp1pg-1; Thu, 22 Jul 2021 14:31:04 -0400
X-MC-Unique: 5LVEekzvPtK7U1c4sxp1pg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BA708066EB;
	Thu, 22 Jul 2021 18:31:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9B3560240;
	Thu, 22 Jul 2021 18:30:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 453944BB7C;
	Thu, 22 Jul 2021 18:30:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MIUqDO007721 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 14:30:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 80FD7209D027; Thu, 22 Jul 2021 18:30:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C2C4209A50D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:30:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C14A3101A529
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:30:47 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-2-o7ivKxs5POyPGYdMLJUpBQ-1; Thu, 22 Jul 2021 14:30:36 -0400
X-MC-Unique: o7ivKxs5POyPGYdMLJUpBQ-1
Received: by mail-io1-f48.google.com with SMTP id z17so7455453iog.12
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 11:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=e3zbcss3YmcNONzB0k4TBNHUVp/eFz7rQ2YllwIt7UA=;
	b=prZVXq3Fgz6Qv318GWrwO97HRhvyjymtmgSsxgiWUM3Ma6CZSpt1Nsvd87b8N1eeVK
	H/ALnuYbJRAQXtH8ZrRYIu2dmJIRuXiHQHAdsX3B1CvSE7tjzUHubqi7+S2jhjcN1osz
	i8lqA3GraVz7uMnobmLiO8XT91pBW7L+oEBJbvmBTRwwJpwKaMP24LbGfwZAbHQfGK53
	5rPVTqZhuHdPPF/Qr7STybzLTeq3/YJo2LNVYckIjtoSlXWFxpKd8bMKh1VsmCOobBSP
	z3Wf7/Y8D98g+y5rxcOsKN5A4sfZrlsY97SHlBoVKw3p/CNXKkc5Iz0VsEF2R7LDWOp/
	EbvQ==
X-Gm-Message-State: AOAM530egGSdg3POWqJ1miuNj4Uq+vCGNV/qdZFNT9NSh3W4yahODR6g
	sKFoHBMT7hRpWu6emYu1OORLYtSUjsx8LTuTNSwt6E8s
X-Google-Smtp-Source: ABdhPJwlZmnAoZgNlLYwbkn51ANFIgSg2OwleD0HuTjL5bN7fl316VRC0ZCpCHph/Ys2zKSK9JutQMBElhz8keaTSQA=
X-Received: by 2002:a02:774a:: with SMTP id g71mr741845jac.137.1626978635769; 
	Thu, 22 Jul 2021 11:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
	<CAD_4ddTKb85p_Wcr6-gH5EP_85tmyUn1rh0PCLD3veXmVywoxQ@mail.gmail.com>
	<20210722160953.fxkwmhyhb3oxa6fh@alex-pc>
In-Reply-To: <20210722160953.fxkwmhyhb3oxa6fh@alex-pc>
Date: Thu, 22 Jul 2021 13:30:25 -0500
Message-ID: <CAGJxbF45urvOykPsbQ8XPP4aY+ZcMpbk4JGMsA3mD7fEZfSuRw@mail.gmail.com>
Subject: Re: A question about running emacspeak on Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

The Emacspeak group is at, I believe, emacspeak@emacspeak.org.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Thu, Jul 22, 2021 at 11:10 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> On Thu, Jul 22, 2021 at 05:51:59PM +0000, Linux for blind general
> discussion wrote:
> >Hello Alexander and all,
> >
> >I am using pipewire indeed, so I understand why emacspeak doesn't work.
> >Thanks for the answer, I'll wait until, and if, they fix this outstanding
> >bug.
>
> I think it would be better if you write to the developer, or to the
> mailing list
> about it. you can even CC: Alexander Epaneshnikov <email@alex19ep.me>
> it's me.
>
> >Best regards.
> >Francisco.
>
> --
> Sincerely, Alexander
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

