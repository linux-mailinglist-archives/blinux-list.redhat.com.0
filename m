Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 629FA3D257C
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 16:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626963394;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NJRAhtG0/8EY6eQEvucaqg0RIkw1lfvXx5vge/bzeM8=;
	b=TcBk42lpzF1R/jUxdVgMMw0QOglJrCG7efmtjlSluCoff/C147vR3+p7dzYVdYfcYbFu6D
	uiZfPy9U6v8PfD7Zct+cJ92LIXgWjKkUKfY5mto0KIbc6upTuXZRW9ChfKmLNTcC2X8+6w
	eH00xJw7o0WUwybk1wgObSAgjC1YdJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-486-JFsa5NhZN7KTiDB_nOMwBw-1; Thu, 22 Jul 2021 10:16:32 -0400
X-MC-Unique: JFsa5NhZN7KTiDB_nOMwBw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C7C810D1B08;
	Thu, 22 Jul 2021 14:15:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C49AD19711;
	Thu, 22 Jul 2021 14:15:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C52D180BAB0;
	Thu, 22 Jul 2021 14:15:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MEFZj1012306 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 10:15:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F18F01037B6; Thu, 22 Jul 2021 14:15:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC945106A4D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:15:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE980811E78
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 14:15:29 +0000 (UTC)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-169-PEeYDG5KMeG0ot3E_q2AKw-1; Thu, 22 Jul 2021 10:15:26 -0400
X-MC-Unique: PEeYDG5KMeG0ot3E_q2AKw-1
Received: by mail-io1-f43.google.com with SMTP id x10so6483587ion.9
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 07:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=c0Zn9jVgK1EThauO8pI41fAYhZqRXE57TLG8vm/ezEU=;
	b=OjVxzq5uiDrIWH9XAoL/Dp63VLt0IaP/qxHJYJUnNa43HlHfQm0BqFrzuA/pNWi3Lk
	FHRwDTvC+Ic3VC4wl0zRCSHJjf16hslBNkfbhhme5+ovbAaIJZxrEJD2C5cWgy3tdyYN
	XYMMBlzFDwj0evryZD2Hdqi/vdp/dOuV54zgPoGXAcq6OMQhQsjj+lw34IJG1xUmlE2g
	U4diHYHGwZ8sc+pARbltqPSiU6fCjt6/sfOfjj97LozCpVnxBws+uMFgAnnk6eVM0RBQ
	oVPHLrY0OMxL8Uklj3MR6RzAGasHb3q9arPOEqoTgNA5rTD1lLvhBeSCR2+WFbM7BWcA
	65Vg==
X-Gm-Message-State: AOAM531H3TYCGDDC1Csjq6WB2khkU4GpPCiLdLUVu2+qvsu8XkooQ9Ny
	BeIh/qa2tVWabuS16tGMrg9VysQioZV97sWoQtfunDcg
X-Google-Smtp-Source: ABdhPJwicFR7C8zNik7Xj5VKECoWrl1t6hCGoukPErd2pQBXRYB+CO1okeweVfsxmS6tJZKxRlCuI3eMpK2GxovbJW4=
X-Received: by 2002:a02:a595:: with SMTP id b21mr35714330jam.122.1626963325686;
	Thu, 22 Jul 2021 07:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
In-Reply-To: <20210722134626.jueyx7z7q7a4oska@alex-pc>
Date: Thu, 22 Jul 2021 09:15:14 -0500
Message-ID: <CAGJxbF4QX3hwV5-BAgfLb-=_dDw5+wFnCxemP8CKvkqdfjdk5Q@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How do you exclude Emacspeak from being controlled by Pipewire?
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Thu, Jul 22, 2021 at 8:46 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> On Thu, Jul 22, 2021 at 12:00:23PM +0000, Linux for blind general
> discussion wrote:
> > Hello everyone,
>
> hello Francisco.
> >
> > Last night I installed emacspeak on Arch Linux from the aur, version 54.0
> > with yay, but I am having a problem: whenever i type
> > emacspeak
> > in a terminal, it tells me to choose a synthesizer, but i can't choose
> > either espeak, or espeak-ng, because no matter what i do, arrows, tab,
> > emacspeak doesn't play a sound.
>
> did you use pipewire? unfortunately emacspeak don't work with PW at the
> moment.
>
> > After I press tab, in fact, an emacs panel opens, and nothing speaks
> inside
> > it except orca.
> > Does Anyone have any ideas on how to fix it?
> > I'd like to try and get into emacspeak, so to see what it can and can't
> do.
> > Best regards.
> > Francisco.
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

